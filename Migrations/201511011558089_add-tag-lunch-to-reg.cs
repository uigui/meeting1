namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addtaglunchtoreg : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.RegPartners", "Lunch", c => c.Int(nullable: false));
            AddColumn("dbo.RegPartners", "Tag", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.RegPartners", "Tag");
            DropColumn("dbo.RegPartners", "Lunch");
        }
    }
}
