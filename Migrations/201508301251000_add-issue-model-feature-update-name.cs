namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuemodelfeatureupdatename : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "ProjectName", c => c.String());
            DropColumn("dbo.Test2015SepIssue", "ProductName");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Test2015SepIssue", "ProductName", c => c.String());
            DropColumn("dbo.Test2015SepIssue", "ProjectName");
        }
    }
}
