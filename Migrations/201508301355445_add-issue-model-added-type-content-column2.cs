namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuemodeladdedtypecontentcolumn2 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "IssueTitle", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Test2015SepIssue", "IssueTitle");
        }
    }
}
