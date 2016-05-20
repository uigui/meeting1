using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.api
{
    /// <summary>
    /// Summary description for PartnerRegStatusUpdate
    /// </summary>
    public class PartnerRegStatusUpdate : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string partnerEmail = "";

            partnerEmail = context.Request.Form["email"] as string;


            string _phone = context.Request.Form["phone"] as string;

          


            int returnData = 0;

            using (var db = new AzureDBContext())
            {
                var entity = db.RegPartners.Where(o => o.Email.ToLower() == partnerEmail.Trim().ToLower() || o.Phone.ToLower() == _phone.Trim().ToLower()).FirstOrDefault();

             

                if (entity == null)
                {
                    returnData = -1;
                }
                else
                {
                    
                        if (entity.IfReg == true)
                            returnData = 0;
                        else
                        {
                            entity.IfReg = true;
                            entity.RegTime = DateTime.UtcNow.AddHours(+8);
                            entity.UpdateBy = "Portal";
                            db.SaveChanges();
                            returnData = 1;
                        }
                }
            }

            context.Response.ContentType = "text/plain";
            context.Response.Write(returnData.ToString());
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