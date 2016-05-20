namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuemodel : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Test2015SepIssue",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        CompanyId = c.Int(nullable: false),
                        UserEmail = c.String(),
                        UserName = c.String(),
                        UserPhone = c.String(),
                        ProductName = c.String(),
                        ProductDimension = c.String(),
                        ProductPlatform = c.String(),
                        ProductMPDate = c.DateTime(nullable: false),
                        status = c.Int(nullable: false),
                        PubTime = c.DateTime(nullable: false),
                        UpdateTime = c.DateTime(nullable: false),
                        UpdateByUserId = c.Int(nullable: false),
                        IPAddress = c.String(),
                        Cookie = c.String(),
                        Header = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Test2015SepIssue");
        }
    }
}
