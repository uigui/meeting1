using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TestShenzhenWebApplication.Model
{
    public class RegPartner
    {
        public int Id { get; set; }

        public int EventId { get; set; }
        public string Email { get; set; }

        public string Phone { get; set; }

        public string Name { get; set; }

        public int CompanyId { get; set; }

        public string CompanyName { get; set; }

        public string Title { get; set; }

        public bool IfReg { get; set; }
        public DateTime RegTime { get; set; }
        public int status { get; set; }

        public int Lunch { get; set; }

        public string Tag { get; set; }
        public string UpdateBy { get; set; }


        public DateTime PubTime { get; set; }
        public DateTime UpdateTime { get; set; }



    }
}