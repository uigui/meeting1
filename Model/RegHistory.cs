using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class RegHistory
    {
        public int Id { get; set; }
        public int PartnerId { get; set; }

        public int EventId { get; set; }
        public string RegBy { get; set; }
        public bool IfReg { get; set; }
        public DateTime Pubtime { get; set; }
    }
}