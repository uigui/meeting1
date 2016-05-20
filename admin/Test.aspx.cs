using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //using (var db = new AzureDBContext())
            //{
            //    DataList1.DataSource = db.Histories.ToList();
            //}

            Response.Write(Environment.GetEnvironmentVariable("WEBSITE_SITE_NAME"));
        }
    }
}