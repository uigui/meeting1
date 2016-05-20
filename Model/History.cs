using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class History
    {
        public int Id { get; set; }

        public string Table { get; set; }
        public string Column { get; set; }
        public string OldValue { get; set; }
        public string NewValue { get; set; }
        public DateTime PubTime { get; set; }
        public string UpdateByName { get; set; }
        public int UpdateById { get; set; }
        public string Ipaddress { get; set; }

        public int PK1 { get; set; }
        public string Header { get; set; }
    }
}