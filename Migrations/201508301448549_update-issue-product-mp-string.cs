namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updateissueproductmpstring : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Test2015SepIssue", "ProductMPDate", c => c.String());
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Test2015SepIssue", "ProductMPDate", c => c.DateTime(nullable: false));
        }
    }
}
