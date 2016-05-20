namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class regpartneradd : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.RegPartners",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        EventId = c.Int(nullable: false),
                        Email = c.String(),
                        Phone = c.String(),
                        Name = c.Int(nullable: false),
                        CompanyId = c.Int(nullable: false),
                        CompanyName = c.String(),
                        Title = c.String(),
                        IfReg = c.Boolean(nullable: false),
                        RegTime = c.DateTime(nullable: false),
                        status = c.Int(nullable: false),
                        UpdateBy = c.String(),
                        PubTime = c.DateTime(nullable: false),
                        UpdateTime = c.DateTime(nullable: false),
                    })
                .PrimaryKey(t => t.Id);
            
            AddColumn("dbo.PartnerCompanies", "TypeName", c => c.String());
            DropColumn("dbo.PartnerCompanies", "Type");
        }
        
        public override void Down()
        {
            AddColumn("dbo.PartnerCompanies", "Type", c => c.Int(nullable: false));
            DropColumn("dbo.PartnerCompanies", "TypeName");
            DropTable("dbo.RegPartners");
        }
    }
}
