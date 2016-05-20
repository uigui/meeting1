using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft;
using System.Data.Entity;

namespace TestShenzhenWebApplication
{
    public class AzureDBContext : DbContext
    {

      
        static string azureDBString = @"Server=tcp:testc.database.windows.net,1433;Database=testdb;User ID=chinatest;Password=ct1234!@#;Trusted_Connection=False;Encrypt=True;Connection Timeout=30;";
   
        public AzureDBContext()
            : base(azureDBString)
        {
        
        }

        //public virtual DbSet<DidiDriver> DidiDrivers { get; set; }
        
            public virtual DbSet<TestShenzhenWebApplication.Model.Event> Events { get; set; }
            public virtual DbSet<TestShenzhenWebApplication.Model.PartnerCompany> PartnerCompanies { get; set; }

            public virtual DbSet<TestShenzhenWebApplication.Model.Test2015SepIssue> Test2015SepIssues { get; set; }

        public virtual DbSet<TestShenzhenWebApplication.Model.Test2015SepSuvery> Test2015SepSuveries { get; set; }


        public virtual DbSet<TestShenzhenWebApplication.Model.AdminUser> AdminUsers { get; set; }


        public virtual DbSet<TestShenzhenWebApplication.Model.History> Histories { get; set; }

        public virtual DbSet<TestShenzhenWebApplication.Model.RegPartner> RegPartners { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}