namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class issueupdatefromremove4g : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "ProductForm", c => c.String());
            DropColumn("dbo.Test2015SepIssue", "IfFetarue4G");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Test2015SepIssue", "IfFetarue4G", c => c.Boolean(nullable: false));
            DropColumn("dbo.Test2015SepIssue", "ProductForm");
        }
    }
}
