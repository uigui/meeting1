using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{
    public partial class UserInfo : System.Web.UI.Page
    {
        string userEmail = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls login");
                Response.End();
            }
            else
            {
                userEmail = Session["user"].ToString();
            }

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var db = new AzureDBContext())
            {
                var _userModel = db.AdminUsers.FirstOrDefault(o => o.Email == userEmail);

                if (_userModel != null)
                {
                    if (TextBox1.Text == _userModel.Password)
                    {


                        if(TextBox2.Text != TextBox3.Text)
                        {
                            Label2.Text = "两次密码输入不一致";
                        }
                        else
                        {
                            _userModel.Password = TextBox2.Text;
                            db.SaveChanges();
                            Response.Clear();
                            Response.Write("密码修改成功<a href='default.aspx'>返回</a>");
                            Response.End();
                        }

                        db.SaveChanges();
                    }
                    else
                    {
                        Label2.Text = "原始密码错误";
                    }
                }

            }
        }
    }
}