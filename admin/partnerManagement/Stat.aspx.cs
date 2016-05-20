using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin.partnerManagement
{
    
    public partial class Stat : System.Web.UI.Page
    {

        public static List<Model.RegPartner> regPartners;
        public static List<Model.PartnerCompany> partnerCompanies;
        public  int TotalRegistered { get; set; }

        public static int GetTotalCompanyNumberByCompanyType(string companyType)
        {
            List<Model.PartnerCompany> companies = partnerCompanies.Where(o => o.TypeName == companyType).ToList();
            int totalPartners = 0;

            foreach (var item in companies)
            {
                var partners = regPartners.Where(o => o.CompanyId == item.Id && o.status != -1).ToList();
                totalPartners += partners.Count;
            }

            return totalPartners;
        }

        public static int GetRegCompanyNumberByCompanyType(string companyType)
        {
            List<Model.PartnerCompany> companies = partnerCompanies.Where(o => o.TypeName == companyType).ToList();
            int totalPartners = 0;

            foreach (var item in companies)
            {
                var partners = regPartners.Where(o => o.CompanyId == item.Id && o.IfReg== true && o.status != -1).ToList();
                totalPartners += partners.Count;
            }

            return totalPartners;
        }

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
                    partnerCompanies = db.PartnerCompanies.ToList();
                    regPartners = db.RegPartners.Where(o =>o.status != -1).ToList();

                    foreach (var item in partnerCompanies.GroupBy(o => o.TypeName))
                    {

                        TotalRegistered += GetRegCompanyNumberByCompanyType(item.Key);
                    }
                      
                  
                }
            }

        }
    }
}