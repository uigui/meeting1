namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class test3 : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Histories", "PK1", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Histories", "PK1");
        }
    }
}
