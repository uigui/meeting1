namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuesupportreply : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "ReplyUserEmail", c => c.String());
            AddColumn("dbo.Test2015SepIssue", "ReplyUsercontent", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Test2015SepIssue", "ReplyUsercontent");
            DropColumn("dbo.Test2015SepIssue", "ReplyUserEmail");
        }
    }
}
