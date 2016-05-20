using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;

namespace TestShenzhenWebApplication.Model
{
    public class AdminUser
    {
        public int Id { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public DateTime CreateTime { get; set; }
        public DateTime LastLoginTime { get; set; }

        public string LastLoginIP { get; set; }
        public string LastLoginAgent { get; set; }
        public int Status { get; set; }
    }
}