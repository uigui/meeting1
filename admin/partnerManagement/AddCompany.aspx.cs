using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    public partial class AddCompany : System.Web.UI.Page
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

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string companyName = TextBox_companyName.Text.Trim();

            string companyType = DropDownList_companyType.SelectedItem.Text;
            int eventId = int.Parse(DropDownList_eventID.SelectedItem.Value);

            int resultStatus = 0;

            using (var db = new AzureDBContext())
            {
                var entity = db.PartnerCompanies.Where(o => o.Name == companyName && o.EventId == eventId).FirstOrDefault();
                if (entity != null)
                {
                    resultStatus = 2;
                }
                else
                {
                    db.PartnerCompanies.Add(
                        new Model.PartnerCompany()
                        {
                            AttendeesCount = 0,
                            CreateTime = DateTime.UtcNow.AddHours(+8),
                            EventId = eventId,
                            Name = companyName,
                            TypeName = companyType,
                            UpdateTime = DateTime.UtcNow.AddHours(+8)
                        });
                    db.SaveChanges();
                    resultStatus = 1;
                }
            }

            if(resultStatus == 1)
            {
                Label_result.Text = "Success added";
            }
            else if(resultStatus == 2)
            {
                Label_result.Text = "Company alreay existed";
            }
        }
    }
}