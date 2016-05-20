using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class Event
    {
        public int ID { get; set; }
        public string Name { get; set; }

        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public DateTime PubTime { get; set; }
        public DateTime UpdateTime { get; set; }

    }
}