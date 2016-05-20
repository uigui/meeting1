namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class updatealltohistory : DbMigration
    {
        public override void Up()
        {
            RenameTable(name: "dbo.TestSepIssueHistories", newName: "Histories");
            AddColumn("dbo.Histories", "Table", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Histories", "Table");
            RenameTable(name: "dbo.Histories", newName: "TestSepIssueHistories");
        }
    }
}
