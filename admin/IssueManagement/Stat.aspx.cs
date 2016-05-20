using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{
    public partial class Stat : System.Web.UI.Page
    {
        public string groupbyresolvedjson = "";
        public string groupbytrackingjson = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls login");
                Response.End();
            }

            using (var db = new AzureDBContext())
            {
                Label2.Text = db.Test2015SepIssues.Count().ToString() ;

                Label3.Text = db.Test2015SepIssues.Where(o=>o.status ==0).Count().ToString();

                Label4.Text = db.Test2015SepIssues.Where(o => o.status == 1).Count().ToString();

                Label5.Text = db.Test2015SepIssues.Where(o => o.status ==2).Count().ToString();



                Label6.Text = db.Test2015SepSuveries.Count().ToString();


                float _scorea = 0;
                float _scoreb = 0;
                int _count = 0;
                foreach (var item in db.Test2015SepSuveries)
                {
                    _count++;
                    float _a = (item.Q1 + item.Q2 + item.Q3 + item.Q4 + item.Q5 + item.Q6 + item.Q7 + item.Q8) / 8;

                    float _b = (item.Q9 + item.Q10 + item.Q11 + item.Q12 + item.Q13 + item.Q14 + item.Q15) / 7;
                    _scorea += _a;
                    _scoreb += _b;
                }

                float _resulta = _scorea / _count;
                float _resultb = _scoreb / _count;

                Label7.Text = _resulta.ToString();
                Label8.Text = _resultb.ToString();


                var q9 = from d in db.Test2015SepIssues where d.status == 1 && d.ReplyUserEmail!="" && d.ReplyUserEmail != null group d by d.ReplyUserEmail into w select new { Name = w.Key, Total = w.Count() };

                //var callStats = (from c in database.CallLogs
                //                 group c by c.RemoteParty into d
                //                 select new
                //                 {
                //                     RemoteParty = d.Key,
                //                     TotalDuration = d.Sum(x => x.Duration)
                //                 });

                string _jsonResult9 = Newtonsoft.Json.JsonConvert.SerializeObject(q9);
                //Label9.Text = _jsonResult9;

                groupbyresolvedjson = _jsonResult9;

                var q10 = from d in db.Test2015SepIssues where d.status == 2 && d.ReplyUserEmail != "" && d.ReplyUserEmail != null group d by d.ReplyUserEmail into w select new { Name = w.Key, Total = w.Count() };

                //var callStats = (from c in database.CallLogs
                //                 group c by c.RemoteParty into d
                //                 select new
                //                 {
                //                     RemoteParty = d.Key,
                //                     TotalDuration = d.Sum(x => x.Duration)
                //                 });
                string _jsonResult10 = Newtonsoft.Json.JsonConvert.SerializeObject(q10);
                groupbytrackingjson = _jsonResult10;

                //Label10.Text = _jsonResult10;
            }
        }
    }
}