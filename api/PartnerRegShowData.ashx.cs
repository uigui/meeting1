using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

namespace TestShenzhenWebApplication.api
{
    /// <summary>
    /// Summary description for PartnerRegShowData
    /// </summary>
    public class PartnerRegShowData : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string outputString = "";
            string userEmail = context.Request.Form["email"] as string;

            using (var db = new AzureDBContext())
            {
                var entity = db.RegPartners.Where(o => o.Email == userEmail).FirstOrDefault();
                if(entity != null)
                {
                    outputString += "<p>";

                    outputString = entity.Name;
                    outputString += "</p>";
                    outputString += "<p>";

                    outputString += entity.CompanyName;
                    outputString += "</p>";

                }

            }
  
            context.Response.ContentType = "text/plain";
            context.Response.Write(outputString);
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