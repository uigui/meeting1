using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class Test2015SepSuvery
    {
        public int ID { get; set; }

        public int Q1	 { get; set; }
    public int Q2	 { get; set; }
public int Q3	 { get; set; }
 public int Q4	 { get; set; }
 public int Q5	 { get; set; }
 public int Q6	 { get; set; }
 public int Q7	 { get; set; }
 public int Q8	 { get; set; }
 public int Q9	 { get; set; }
 public int Q10	 { get; set; }
 public int Q11	 { get; set; }
 public int Q12	 { get; set; }
 public int Q13	 { get; set; }
 public int Q14	 { get; set; }
 public int Q15	 { get; set; }

        public string IssueContentA { get; set; }
        public string IssueContentB { get; set; }

        public DateTime PubTime { get; set; }
        public DateTime UpdateTime { get; set; }
        public string IPAddress { get; set; }
        public string Cookie { get; set; }
        public string Header { get; set; }

    }
}