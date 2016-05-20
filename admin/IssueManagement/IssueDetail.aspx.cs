using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestShenzhenWebApplication.peshenzhen_admin
{

    public partial class IssueDetail : System.Web.UI.Page
    {

        


        public Model.Test2015SepIssue issueModel = new Model.Test2015SepIssue();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Clear();
                Response.Write("you have no access for this page. pls login");
                Response.End();
            }

            int IssueID = 0;
            int.TryParse(Request.QueryString["id"].ToString(), out IssueID);
            using (var db = new AzureDBContext())
            {
                issueModel = db.Test2015SepIssues.Find(IssueID);
            }

            if (!IsPostBack)
            {
                TextBox1.Text = issueModel.ReplyUsercontent;
                id_status.SelectedIndex = issueModel.status;
      
            }







        }


        private Model.Test2015SepIssue GetIssueModelByModel(Model.Test2015SepIssue model)
        {
            var _model = new Model.Test2015SepIssue() { };

            return model;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (var db = new AzureDBContext())
            {
                var ToBeUpdate_Model = db.Test2015SepIssues.Find(issueModel.ID);
                Model.Test2015SepIssue Old_model = new Model.Test2015SepIssue()
                { CompanyId = ToBeUpdate_Model.CompanyId, ProductDimension = ToBeUpdate_Model.ProductDimension, ProductForm = ToBeUpdate_Model.ProductForm, ProductMPDate = ToBeUpdate_Model.ProductMPDate, ProductPlatform = ToBeUpdate_Model.ProductPlatform, IssueContent = ToBeUpdate_Model.IssueContent, IssueTitle = ToBeUpdate_Model.IssueTitle, IssueType = ToBeUpdate_Model.IssueType, Cookie = ToBeUpdate_Model.Cookie, Header = ToBeUpdate_Model.Header, ID = ToBeUpdate_Model.ID, IfFeature3G = ToBeUpdate_Model.IfFeature3G, IfFeatureContinuum = ToBeUpdate_Model.IfFeatureContinuum, IfFeatureCortana = ToBeUpdate_Model.IfFeatureCortana, IfFeatureFingerprintRecognition = ToBeUpdate_Model.IfFeatureFingerprintRecognition, IfFeaturePen = ToBeUpdate_Model.IfFeaturePen, IfFeatureUSBTypeC = ToBeUpdate_Model.IfFeatureUSBTypeC, IfFeatureWidnowsHello = ToBeUpdate_Model.IfFeatureWidnowsHello, IPAddress = ToBeUpdate_Model.IPAddress, ProjectName = ToBeUpdate_Model.ProjectName, PubTime = ToBeUpdate_Model.PubTime, ReplyUsercontent = ToBeUpdate_Model.ReplyUsercontent, ReplyUserEmail = ToBeUpdate_Model.ReplyUserEmail, status = ToBeUpdate_Model.status, UpdateByUserId = ToBeUpdate_Model.UpdateByUserId, UpdateTime = ToBeUpdate_Model.UpdateTime, UserEmail = ToBeUpdate_Model.UserEmail, UserName = ToBeUpdate_Model.UserName, UserPhone = ToBeUpdate_Model.UserPhone };
                //var Old_model = GetIssueModelByModel(ToBeUpdate_Model);


                ToBeUpdate_Model.ReplyUsercontent = TextBox1.Text;
                ToBeUpdate_Model.UpdateTime = DateTime.UtcNow.AddHours(+8);

                ToBeUpdate_Model.status = id_status.SelectedIndex;
                ToBeUpdate_Model.ReplyUserEmail = Session["user"].ToString();

                //Histories update.
                var _updating_old_model = CheckIfModelUpdate(Old_model, ToBeUpdate_Model);

                if (db.SaveChanges() == 1)
                {

                  

                    Response.Clear();
                    Response.Write("保存成功  <a href='Default.aspx'>返回列表<a> + " );
                    Response.End();


             

                }
                else
                {
                    Response.Write("保存失败");
                }


            }
        }



        public static object CheckIfModelUpdate(object old_model, object new_model)
        {
            bool IsChanged = false;
            int PK1 = 0;
            string PK2 = "";
            PropertyInfo[] peroperties_old = old_model.GetType().GetProperties(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static);
            PropertyInfo[] peroperties_new = new_model.GetType().GetProperties(BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Static);

            foreach (PropertyInfo property_item in peroperties_old)
            {
                if (property_item.Name.ToLower() == "id")
                {
                    PK1 = (int)property_item.GetValue(old_model, null);
                }

                //if (property_item.Name.ToLower() == "name")
                //{
                //    PK2 = (string)property_item.GetValue(old_model, null);
                //}
            }


            foreach (PropertyInfo property_old in peroperties_old)
            {

                foreach (var property_new in peroperties_new)
                {
                    if (property_new.Name == property_old.Name)
                    {

                        if (property_new.Name.ToLower() == "updatetime" || property_new.Name.ToLower() == "pubtime")
                            break;


                        var Old_model_Property_Value_OBJ = property_old.GetValue(old_model, null);
                        var New_model_Property_Value_OBJ = property_new.GetValue(new_model, null);

                        if (Old_model_Property_Value_OBJ == null && New_model_Property_Value_OBJ == null)
                        {
                            break;
                        }

                        if (Old_model_Property_Value_OBJ == null)
                        {
                            Old_model_Property_Value_OBJ = "";
                        }

                        if (New_model_Property_Value_OBJ == null)
                        {
                            New_model_Property_Value_OBJ = "";
                        }

                        if (Old_model_Property_Value_OBJ.ToString() != New_model_Property_Value_OBJ.ToString())
                        {


                            using (var db = new AzureDBContext())
                            {
                                var updateHistory = new Model.History()
                                {
                                    //ColumnName = property_old.Name,
                                    //CurrentValue = New_model_Property_Value_OBJ.ToString(),
                                    //OldValue = Old_model_Property_Value_OBJ.ToString(),
                                    //PK1 = PK1,
                                    //PubTime = DateTime.Now,
                                    Table = property_old.DeclaringType.Name,
                                    Column = property_old.Name,
                                    NewValue = New_model_Property_Value_OBJ.ToString(),
                                    OldValue = Old_model_Property_Value_OBJ.ToString(),
                                    UpdateById = (int)HttpContext.Current.Session["userid"],
                                    UpdateByName = HttpContext.Current.Session["user"].ToString(),
                                    Header = HttpContext.Current.Request.Headers.ToString(),
                                    Ipaddress = HttpContext.Current.Request.UserHostAddress,
                                     PubTime = DateTime.UtcNow.AddHours(+8), PK1 = PK1
                                };

                                old_model.GetType().GetProperty(property_old.Name).SetValue(old_model, New_model_Property_Value_OBJ);


                                db.Histories.Add(updateHistory);
                                db.SaveChanges();



                                IsChanged = true;
                                Console.WriteLine("Tracking update " + updateHistory.Table + updateHistory.Column + ": new: " + updateHistory.NewValue + "-- Old:" + updateHistory.OldValue);
                            };




                        }
                        else
                        {

                        }
                        break;
                    }
                }


                //if (old_value != null)
                //{
                //    Console.WriteLine(property_old.Name + ":" + old_value.ToString());
                //}
                //else
                //{
                //    if (property_old.PropertyType.Name == "String")
                //    {
                //        property_old.SetValue(old_model, "");
                //    }
                //}
            }


            if (IsChanged)
            {

                return old_model;
            }
            else
                return null;

        }





        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}