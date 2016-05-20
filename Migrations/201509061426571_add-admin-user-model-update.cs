namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addadminusermodelupdate : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AdminUsers", "LastLoginIP", c => c.String());
            AddColumn("dbo.AdminUsers", "LastLoginAgent", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.AdminUsers", "LastLoginAgent");
            DropColumn("dbo.AdminUsers", "LastLoginIP");
        }
    }
}
