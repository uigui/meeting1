namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test2 : DbMigration
    {
        public override void Up()
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
                        Ipaddress = c.String(),
                        Header = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Histories");
        }
    }
}
