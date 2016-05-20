using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{

    public partial class Default : System.Web.UI.Page
    {

        public List<Model.RegPartner> regPartners;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls <a href='/admin/login.aspx'>Login</a>");
                Response.End();
            }
            using (var db = new AzureDBContext())
            {
                regPartners = db.RegPartners.Where(o => o.EventId ==  2 && o.status !=-1).OrderByDescending(o => o.UpdateTime).ToList();
            }
        }
    }
}