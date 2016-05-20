using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{
    public partial class Default : System.Web.UI.Page
    {
      public  List<Model.Test2015SepIssue> IssueList;
      public   List<Model.Test2015SepSuvery> SuveryList;

        public string GetCompanyNameFromID(int id)
        {
            using (var db  =  new AzureDBContext())
            {
                var model = db.PartnerCompanies.Find(id);
                return model.Name;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls login");
                Response.End();
            }
            Button1.Click += Button1_Click;
            Label1.Text = "Welcome " + Session["user"].ToString();


            using (var db = new AzureDBContext())
            {
                var q = from i in db.Test2015SepIssues select new { CompanyID = i.CompanyId, Name = i.ProjectName };

                IssueList = db.Test2015SepIssues.OrderByDescending(O=>O.ID).ToList();
                //SuveryList = db.Test2015SepSuveries.ToList();


                //DataList1.DataSource = db.Test2015SepSuveries.Local.ToList();
                //GridView1.DataSource = db.Test2015SepSuveries.Local.ToList();


                //string _issueJson = Newtonsoft.Json.JsonConvert.SerializeObject(q).ToString();

                //_div_displayIssues.InnerHtml = string.Format(@"<script>var jsonHtmlTable = ConvertJsonToTable({0}); document.write(jsonHtmlTable);$('#jsonTable1').attr('class','table table-striped');", _issueJson);

            }


            //Label2.Text = IssueList.Count.ToString();
            //Label3.Text = SuveryList.Count.ToString();


        }

        private void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("login.aspx");
        }
    }
}