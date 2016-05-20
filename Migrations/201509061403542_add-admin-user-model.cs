namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addadminusermodel : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.AdminUsers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Email = c.String(),
                        Password = c.String(),
                        CreateTime = c.DateTime(nullable: false),
                        LastLoginTime = c.DateTime(nullable: false),
                        Status = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.AdminUsers");
        }
    }
}
