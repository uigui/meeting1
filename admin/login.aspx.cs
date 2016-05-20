using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!IsPostBack)
            //{
                btn_login.ServerClick += Btn_login_ServerClick;

                //inputPassword.Value = "Pass.word,";
            //}
        }

        private void Btn_login_ServerClick(object sender, EventArgs e)
        {
            bool _verifyStatus = false;


            using (var db = new AzureDBContext())
            {
                var _userModel = db.AdminUsers.FirstOrDefault(o => o.Email == inputEmail.Value);

                if(_userModel!=null)
                {
                    if (inputPassword.Value == _userModel.Password)
                    {
                        _verifyStatus = true;

                        _userModel.LastLoginAgent = Request.UserAgent;
                        _userModel.LastLoginIP = Request.UserHostAddress;
                        _userModel.LastLoginTime = DateTime.UtcNow.AddHours(+8);
                        Session["userid"] = _userModel.Id;
                        db.SaveChanges();
                    }
                }

            }


            if (_verifyStatus)
            {
                Session["user"] = inputEmail.Value;
           
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Account or Password error, the option has been logged.");
            }



         
        }









    }
}