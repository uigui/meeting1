namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuehistoryupdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.TestSepIssueHistories", "Ipaddress", c => c.Int(nullable: false));
            AddColumn("dbo.TestSepIssueHistories", "Header", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.TestSepIssueHistories", "Header");
            DropColumn("dbo.TestSepIssueHistories", "Ipaddress");
        }
    }
}
