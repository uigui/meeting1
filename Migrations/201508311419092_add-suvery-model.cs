namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addsuverymodel : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Test2015SepSuvery",
                c => new
                    {
                        ID = c.Int(nullable: false, identity: true),
                        Q1 = c.Int(nullable: false),
                        Q2 = c.Int(nullable: false),
                        Q3 = c.Int(nullable: false),
                        Q4 = c.Int(nullable: false),
                        Q5 = c.Int(nullable: false),
                        Q6 = c.Int(nullable: false),
                        Q7 = c.Int(nullable: false),
                        Q8 = c.Int(nullable: false),
                        Q9 = c.Int(nullable: false),
                        Q10 = c.Int(nullable: false),
                        Q11 = c.Int(nullable: false),
                        Q12 = c.Int(nullable: false),
                        Q13 = c.Int(nullable: false),
                        Q14 = c.Int(nullable: false),
                        Q15 = c.Int(nullable: false),
                        IssueContentA = c.String(),
                        IssueContentB = c.String(),
                        PubTime = c.DateTime(nullable: false),
                        UpdateTime = c.DateTime(nullable: false),
                        IPAddress = c.String(),
                        Cookie = c.String(),
                        Header = c.String(),
                    })
                .PrimaryKey(t => t.ID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Test2015SepSuvery");
        }
    }
}
