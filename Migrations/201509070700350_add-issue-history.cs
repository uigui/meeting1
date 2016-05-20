namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuehistory : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.TestSepIssueHistories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Column = c.String(),
                        OldValue = c.String(),
                        NewValue = c.String(),
                        PubTime = c.DateTime(nullable: false),
                        UpdateByName = c.String(),
                        UpdateById = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.TestSepIssueHistories");
        }
    }
}
