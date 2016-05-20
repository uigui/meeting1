namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuemodeladdedtypecontentcolumn : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "IssueType", c => c.Int(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IssueContent", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Test2015SepIssue", "IssueContent");
            DropColumn("dbo.Test2015SepIssue", "IssueType");
        }
    }
}
