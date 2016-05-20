using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    public partial class ManageCompany : System.Web.UI.Page
    {
        public List<Model.PartnerCompany> partnerCompanies;

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
                    partnerCompanies = db.PartnerCompanies.Where(o => o.EventId == 2).ToList();               
                }
            }
        }
    }
}