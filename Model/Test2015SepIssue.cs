using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class Test2015SepIssue
    {
        public int ID { get; set; }

        public int CompanyId { get; set; }
        public string UserEmail { get; set; }
        public string UserName { get; set; }
        public string UserPhone { get; set; }
        public string ProjectName { get; set; }
        public string ProductDimension { get; set; }
        public string ProductPlatform { get; set; }
        public string ProductMPDate { get; set; }
        public bool IfFeatureWidnowsHello { get; set; }
        public bool IfFeatureContinuum { get; set; }
        public bool IfFeatureUSBTypeC { get; set; }
        public bool IfFeatureCortana { get; set; }
        public bool IfFeature3G { get; set; }
        //public bool IfFetarue4G { get; set; }
        public bool IfFeaturePen { get; set; }
        public bool IfFeatureFingerprintRecognition { get; set; }
        public int status { get; set; }

        public string ProductForm { get; set; }
        public int IssueType { get; set; }
        public string IssueTitle { get; set; }
        public string IssueContent { get; set; }
        public DateTime PubTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public int UpdateByUserId { get; set; }
        public string IPAddress { get; set; }
        public string Cookie { get; set; }
        public string Header { get; set; }

        public string ReplyUserEmail { get; set; }
        public string ReplyUsercontent { get; set; }
    }
}