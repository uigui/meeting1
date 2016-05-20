using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.api
{
    /// <summary>
    /// Summary description for suverysubmit
    /// </summary>
    public class suverysubmit : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {


            string _Q1 = context.Request.Form["Q1options"] as string;
            string _Q2 = context.Request.Form["Q2options"] as string;
            string _Q3 = context.Request.Form["Q3options"] as string;
            string _Q4 = context.Request.Form["Q4options"] as string;
            string _Q5 = context.Request.Form["Q5options"] as string;
            string _Q6 = context.Request.Form["Q6options"] as string;
            string _Q7 = context.Request.Form["Q7options"] as string;
            string _Q8 = context.Request.Form["Q8options"] as string;
            string _Q9 = context.Request.Form["Q9options"] as string;
            string _Q10 = context.Request.Form["Q10options"] as string;
            string _Q11 = context.Request.Form["Q11options"] as string;
            string _Q12 = context.Request.Form["Q12options"] as string;
            string _Q13 = context.Request.Form["Q13options"] as string;
            string _Q14 = context.Request.Form["Q14options"] as string;
            string _Q15 = context.Request.Form["Q15options"] as string;

            string _Acontent = context.Request.Form["input_issuecontenta"] as string;
            string _Bcontent = context.Request.Form["input_issuecontentb"] as string;

            using (var db = new AzureDBContext())
            {
                try
                {
                    var _model = new Model.Test2015SepSuvery()
                    {
                        Cookie = "",
                        Header = context.Request.Headers.ToString(),
                        IPAddress = context.Request.UserHostAddress + ";" + context.Request.UserHostName,
                        IssueContentA = _Acontent,
                        IssueContentB = _Bcontent,
                        PubTime = DateTime.UtcNow.AddHours(+8),
                        Q1 = int.Parse(_Q1),
                        Q2 = int.Parse(_Q2),
                        Q3 = int.Parse(_Q3),
                        Q4 = int.Parse(_Q4),
                        Q5 = int.Parse(_Q5),
                        Q6 = int.Parse(_Q6),
                        Q7 = int.Parse(_Q7),
                        Q8 = int.Parse(_Q8),
                        Q9 = int.Parse(_Q9),
                        Q10 = int.Parse(_Q10),
                        Q11 = int.Parse(_Q11),
                        Q12 = int.Parse(_Q12),
                        Q13 = int.Parse(_Q13),
                        Q14 = int.Parse(_Q14),
                        Q15 = int.Parse(_Q15), UpdateTime = DateTime.UtcNow.AddHours(+8)
                    };

                    db.Test2015SepSuveries.Add(_model);
                    db.SaveChanges();



                    context.Response.ContentType = "text/plain";
                    context.Response.Write(_model.ID);

                }
                catch(Exception ee)
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write("fail");
                    //throw ee;
                }
            }


       
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}