namespace TestShenzhenWebApplication.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class addissuemodelfeaturebool : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Test2015SepIssue", "IfFeatureWidnowsHello", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeatureContinuum", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeatureUSBTypeC", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeatureCortana", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeature3G", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFetarue4G", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeaturePen", c => c.Boolean(nullable: false));
            AddColumn("dbo.Test2015SepIssue", "IfFeatureFingerprintRecognition", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.Test2015SepIssue", "IfFeatureFingerprintRecognition");
            DropColumn("dbo.Test2015SepIssue", "IfFeaturePen");
            DropColumn("dbo.Test2015SepIssue", "IfFetarue4G");
            DropColumn("dbo.Test2015SepIssue", "IfFeature3G");
            DropColumn("dbo.Test2015SepIssue", "IfFeatureCortana");
            DropColumn("dbo.Test2015SepIssue", "IfFeatureUSBTypeC");
            DropColumn("dbo.Test2015SepIssue", "IfFeatureContinuum");
            DropColumn("dbo.Test2015SepIssue", "IfFeatureWidnowsHello");
        }
    }
}
