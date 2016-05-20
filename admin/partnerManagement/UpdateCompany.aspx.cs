using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    public partial class UpdateCompany : System.Web.UI.Page
    {
        public static int CompanyID = 0;
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
                int.TryParse(Request.QueryString["id"] as string, out CompanyID);

                using (var db = new AzureDBContext())
                {
                    var entity = db.PartnerCompanies.Where(o => o.Id == CompanyID).FirstOrDefault();

                    if(entity!=null)
                    {
                        TextBox_companyName.Text = entity.Name;
                        DropDownList_companyType.SelectedValue = entity.TypeName;
                        TextBox_createTime.Text = entity.CreateTime.ToString();
                        TextBox_updateTime.Text = entity.UpdateTime.ToString();
                    

                    }
                }



            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string companyName = TextBox_companyName.Text.Trim();
            string companyType = DropDownList_companyType.SelectedItem.Text;
            int eventId = int.Parse(DropDownList_eventID.SelectedItem.Value);

            using (var db = new AzureDBContext())
            {
                {
                    var entity = db.PartnerCompanies.Where(o => o.Id == CompanyID).FirstOrDefault();
                    entity.Name = companyName;
                    entity.TypeName = companyType;
                    entity.EventId = eventId;

                    entity.UpdateTime = DateTime.UtcNow.AddHours(+8);

                   var result= db.SaveChanges();

                    if (result > 0)
                        Response.Redirect("ManageCompany.aspx");
                    else
                        Label_result.Text = result.ToString() ;
                }
            }
        }
    }
}