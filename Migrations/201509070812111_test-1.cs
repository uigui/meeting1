namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test1 : DbMigration
    {
        public override void Up()
        {
            DropTable("dbo.Histories");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.Histories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Table = c.String(),
                        Column = c.String(),
                        OldValue = c.String(),
                        NewValue = c.String(),
                        PubTime = c.DateTime(nullable: false),
                        UpdateByName = c.String(),
                        UpdateById = c.Int(nullable: false),
                        Ipaddress = c.Int(nullable: false),
                        Header = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
    }
}
