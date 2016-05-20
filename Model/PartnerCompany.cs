using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class PartnerCompany
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string TypeName { get; set; }
        public int AttendeesCount { get; set; }
        public int EventId { get; set; }

        public DateTime CreateTime { get; set; }

        public DateTime UpdateTime { get; set; }
    }







}