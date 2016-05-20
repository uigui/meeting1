using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.api
{
    /// <summary>
    /// Summary description for issuesubmit
    /// </summary>
    public class issuesubmit : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
                string _IfFeature3G	=context.Request.Form["IfFeature3G"] as string;
                string _IfFeatureContinuum	=context.Request.Form["IfFeatureContinuum"] as string;
                string _IfFeatureCortana	=context.Request.Form["IfFeatureCortana"] as string;
                string _IfFeatureFingerprintRecognition	=context.Request.Form["IfFeatureFingerprintRecognition"] as string;
                string _IfFeaturePen	=context.Request.Form["IfFeaturePen"] as string;
                string _IfFeatureUSBTypeC	=context.Request.Form["IfFeatureUSBTypeC"] as string;
                string _IfFeatureWidnowsHello	=context.Request.Form["IfFeatureWidnowsHello"] as string;
                string _IfFetarue4G	=context.Request.Form["IfFetarue4G"] as string;
                string _input_company	=context.Request.Form["input_company"] as string;
                string _input_email	=context.Request.Form["input_email"] as string;
                string _input_issuecontent	=context.Request.Form["input_issuecontent"] as string;
                string _input_issuetitle	=context.Request.Form["input_issuetitle"] as string;
                string _input_issuetype	=context.Request.Form["input_issuetype"] as string;
                string _input_name	=context.Request.Form["input_name"] as string;
                string _input_phone	=context.Request.Form["input_phone"] as string;
                string _input_productdimension	=context.Request.Form["input_productdimension"] as string;
                string _input_productMPDate	=context.Request.Form["input_productMPDate"] as string;
                string _input_projectname	=context.Request.Form["input_projectname"] as string;
                string _input_projectplatfrom	=context.Request.Form["input_projectplatfrom"] as string;
            string _input_productform = context.Request.Form["input_productform"] as string;

            
            //int loop1, loop2;
            //HttpCookieCollection MyCookieColl;
            //HttpCookie MyCookie;

            //MyCookieColl = context.Request.Cookies;

            //string _cookieString = "";

            //// Capture all cookie names into a string array.
            //String[] arr1 = MyCookieColl.AllKeys;

            //// Grab individual cookie objects by cookie name. 
            //for (loop1 = 0; loop1 < arr1.Length; loop1++)
            //{
            //    MyCookie = MyCookieColl[arr1[loop1]];
            //    _cookieString += "Cookie: " + MyCookie.Name + "<br>";
            //    _cookieString += "Secure:" + MyCookie.Secure + "<br>";

            //    //Grab all values for single cookie into an object array.
            //    String[] arr2 = MyCookie.Values.AllKeys;

            //    //Loop through cookie Value collection and print all values. 
            //    for (loop2 = 0; loop2 < arr2.Length; loop2++)
            //    {
            //        _cookieString += "Value" + loop2 + ": " + arr2[loop2] + "<br>";
            //    }
            //}


            var _model = new Model.Test2015SepIssue()
            {
                CompanyId = int.Parse(_input_company),


                Cookie = "",


                Header = context.Request.Headers.ToString(),
                IfFeature3G = _IfFeature3G == "on" ? true : false,
                IfFeatureContinuum = _IfFeatureContinuum == "on" ? true : false,
                IfFeatureCortana = _IfFeatureCortana == "on" ? true : false,
                IfFeatureFingerprintRecognition = _IfFeatureFingerprintRecognition == "on" ? true : false,
                IfFeaturePen = _IfFeaturePen == "on" ? true : false,
                IfFeatureUSBTypeC = _IfFeatureUSBTypeC == "on" ? true : false,
                IfFeatureWidnowsHello = _IfFeatureWidnowsHello == "on" ? true : false,
                //IfFetarue4G = _IfFetarue4G == "on" ? true : false,
                IPAddress = context.Request.UserHostAddress.ToString() + ";" + context.Request.UserHostName,
                IssueContent = _input_issuecontent,
                IssueTitle = _input_issuetitle,
                IssueType = int.Parse(_input_issuetype),
                ProductDimension = _input_productdimension,
                 ProductMPDate = _input_productMPDate,
                 ProductPlatform = _input_projectplatfrom,
                  ProjectName = _input_projectname,
                   PubTime =DateTime.UtcNow.AddHours(+8),
                    status = 0,
                     UpdateByUserId = 0,
                      UpdateTime= DateTime.UtcNow.AddHours(+8),
                       UserEmail = _input_email,
                        UserName = _input_name,
                         UserPhone = _input_phone, ProductForm= _input_productform
            };

            try
            {
                using (var db = new AzureDBContext())
                {
                    db.Test2015SepIssues.Add(_model);
 
                    var result = db.SaveChanges();
                  
                    context.Response.ContentType = "text/plain";
                    context.Response.Write(_model.ID);
                }

            }
            catch (Exception ee)
            {
                Debug.Write(ee.Message);
                context.Response.ContentType = "text/plain";
                context.Response.Write("fail");
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