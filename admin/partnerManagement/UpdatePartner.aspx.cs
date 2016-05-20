using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    public partial class UpdatePartner : System.Web.UI.Page
    {
        public static int PartnerID = 0;
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


                int.TryParse(Request.QueryString["id"] as string, out PartnerID);

                using (var db = new AzureDBContext())
                {
                    var entity = db.RegPartners.Where(o => o.Id == PartnerID).FirstOrDefault();

                    if (entity != null)
                    {
                        tb_name.Text = entity.Name;
                        dw_company.SelectedValue = entity.CompanyName;
                        tb_email.Text = entity.Email;
                        tb_phone.Text = entity.Phone;
                        tb_title.Text = entity.Title;
                        TextBox_createTime.Text = entity.PubTime.ToString();
                        TextBox_updateTime.Text = entity.UpdateTime.ToString();
                        tb_tag.Text = entity.Tag;
                        if(entity.IfReg)
                        {
                            cb_reg.Checked = true;
                        }
                        else
                        {
                            cb_reg.Checked = false;
                        }
                        if(entity.Lunch == 1)
                        {
                            cb_lunch.Checked = true;
                        }
                        else
                        {
                            cb_lunch.Checked = false;
                        }
                    }
                }



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Name = tb_name.Text.Trim();
            string companyName = dw_company.SelectedItem.Text;

            using (var db = new AzureDBContext())
            {
                {
                    var entity = db.RegPartners.Where(o => o.Id == PartnerID).FirstOrDefault();
                    entity.Name = Name;
                    entity.CompanyName = companyName;
                    entity.CompanyId = int.Parse(dw_company.SelectedItem.Value);
                    entity.UpdateBy = Session["user"].ToString();
                    entity.UpdateTime = DateTime.UtcNow.AddHours(+8);
                    entity.Tag = tb_tag.Text;
                    entity.Phone = tb_phone.Text;
                    entity.Lunch = cb_lunch.Checked ? 1 : 0;
                    if (cb_reg.Checked)
                    {
                        entity.RegTime = DateTime.UtcNow.AddHours(+8);
                        entity.IfReg = true;
                    }
                    else
                        entity.IfReg = false;
                    var result = db.SaveChanges();

                    if (result > 0)
                        Response.Redirect("Default.aspx");
                    else
                        label_result.Text = result.ToString();
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }
    }
}