using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    public partial class AddPartner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls <a href='/admin/login.aspx'>Login</a>");
                Response.End();
            }
            if (!IsPostBack)
            {
                using (var db = new AzureDBContext())
                {
                    dw_company.DataTextField = "Name";
                    dw_company.DataValueField = "Id";
                    dw_company.DataSource = db.PartnerCompanies.Where(o => o.EventId == 2).ToList();
                    dw_company.DataBind();
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {



            string email = tb_email.Text.Trim();
            int resultStatus = 0;
            using (var db = new AzureDBContext())
            {
                var entity = db.RegPartners.Where(o => o.Email == email).FirstOrDefault();

                if (entity != null)
                {
                    resultStatus = 2;
                }
                else
                {
                    db.RegPartners.Add(new Model.RegPartner()
                    {
                        CompanyId = int.Parse(dw_company.SelectedItem.Value),
                        CompanyName = dw_company.SelectedItem.Text,
                        Email = email,
                        EventId = 2,
                        IfReg = false,
                        Name = tb_name.Text,
                        Phone = tb_phone.Text,
                        PubTime = DateTime.UtcNow.AddHours(+8),
                        RegTime = DateTime.UtcNow.AddYears(-5),
                        status = 0,
                        Title = tb_title.Text,
                        UpdateBy = "",
                        UpdateTime = DateTime.UtcNow.AddHours(+8), Lunch = cb_lunch.Checked ? 1 : 0, Tag = tb_tag.Text
                    });
                    if (db.SaveChanges() > 0)
                        resultStatus = 1;
                }
            }

            if(resultStatus == 2)
            {
                label_result.Text = "partner already exist";
            }
            else if(resultStatus == 1)
            {
                label_result.Text = "success added";
            }

        }
    }
}