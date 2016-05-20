namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatecompanypartner : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.PartnerCompanies", "CreateTime", c => c.DateTime(nullable: false));
            AddColumn("dbo.PartnerCompanies", "UpdateTime", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.PartnerCompanies", "UpdateTime");
            DropColumn("dbo.PartnerCompanies", "CreateTime");
        }
    }
}
