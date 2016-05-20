<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IssueDetail.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.IssueDetail" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="/Scripts/jquery-1.9.1.js"></script>
    <link href="/Content/bootstrap-theme.css" rel="stylesheet" />
    <script src="/Scripts/bootstrap.js"></script>
    <link href="/Content/bootstrap.css" rel="stylesheet" />
    <style>
        body {
            /*padding-top: 70px;*/
            padding-bottom: 30px;
        }

        .theme-dropdown .dropdown-menu {
            position: static;
            display: block;
            margin-bottom: 20px;
        }

        .theme-showcase > p > .btn {
            margin: 5px 0;
        }

        .theme-showcase .navbar .container {
            width: auto;
        }
    </style>
    <title></title>
</head>
<body>
       <form id="myFrom" runat="server">

    <!-- Fixed navbar -->
      <nav class="navbar navbar-inverse ">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Test</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Stat.aspx">Stat</a></li>
              <li>  <a href="#" ><asp:Label ID="Label1" runat="server" Text=""></asp:Label> </a></li>
            <li><asp:Button ID="Button3" runat="server" Text="LogoOut" /></li>
          </ul>
       
        </div>
      </div>
    </nav>

    <div class="container-fluid" >
      <div class="row">
       <%-- <div class="col-sm-3 col-md-2 sidebar">
    
        </div>--%>
        <div class="  col-lg-12" >

    <div class="container theme-showcase" role="main">

     

            <%--Issue Fileds--%>
            <div class="row">
                <div class="col-lg-6">
                 

                  
               

                        <div class="form-group" id="div-input_projectname">
                        <label class="col-sm-2 control-label"  for="projectName">项目名称*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_projectname" value="<%= issueModel.ProjectName %>" class="form-control  "  disabled id="projectName" placeholder="Project Name" />
                        </div>
                    </div>
                   


                             <div class="form-group">
                        <label class="col-sm-2 control-label">Feature*</label>
                        <div class=" col-sm-10">
                                   
    <input type="checkbox"  disabled id="fch1" name="IfFeatureWidnowsHello" <% if (issueModel.IfFeatureWidnowsHello){ %> checked="checked"<%} %> /> <label for="fch1">Windows Hello</label>
    <input type="checkbox"  disabled id="fch2" name="IfFeatureContinuum" <% if (issueModel.IfFeatureContinuum){ %> checked="checked"<%} %> />  <label for="fch2">Continuum</label>
    <input type="checkbox"  disabled id="fch3" name="IfFeatureCortana" <% if (issueModel.IfFeatureCortana){ %> checked="checked"<%} %> /> <label for="fch3">Cortana</label>
    <input type="checkbox"  disabled id="fch4" name="IfFeatureUSBTypeC" <% if (issueModel.IfFeatureUSBTypeC){ %> checked="checked"<%} %>/> <label for="fch4">USB Type-C</label>  <br />
    <input type="checkbox"  disabled id="fch5" name="IfFeature3G"  <% if (issueModel.IfFeature3G){ %> checked="checked"<%} %>/> <label for="fch5">3G/4G &nbsp;</label>
    <%--<input type="checkbox"  disabled id="fch6" name="IfFetarue4G" /> <label for="fch6">4G</label>--%>
    <input type="checkbox"  disabled id="fch7" name="IfFeaturePen" <% if (issueModel.IfFeaturePen){ %> checked="checked"<%} %> /> <label for="fch7">Pen</label>
    <input type="checkbox"  disabled id="fch8" name="IfFeatureFingerprintRecognition" <% if (issueModel.IfFeatureFingerprintRecognition){ %> checked="checked"<%} %> />  <label for="fch8">指纹识别</label>

                              </div>
                        </div>

                     
                       <div class="form-group" id="div-input_productMPDate">
                        <label class="col-sm-2 control-label"  for="productMPDate">发布日期*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_productMPDate" value="<%= issueModel.ProductMPDate %>" class="form-control  "  disabled id="productMPDate" placeholder="MP Date" />
                        </div>
                    </div>

                    
                        <div class="form-group" id="div-input_productform">
                        <label class="col-sm-2 control-label"  for="productDimension">产品形态*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_productform" value="<%= issueModel.ProductForm %>" class="form-control  "  disabled id="productForm" placeholder="All-in-one/Tablet.. " />
                        </div>
                    </div>


                        <div class="form-group" id="div-input_productdimension">
                        <label class="col-sm-2 control-label"  for="productDimension">屏幕尺寸*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_productdimension" value="<%= issueModel.ProductDimension %>" class="form-control  "  disabled id="productDimension" placeholder="Dimension " />
                        </div>
                    </div>



                        <div class="form-group" id="div-input_projectplatfrom">
                        <label class="col-sm-2 control-label"  for="projectPlatform">平台*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_projectplatfrom" value="<%= issueModel.ProductPlatform %>" class="form-control  "  disabled id="projectPlatform" placeholder="Platfrom" />
                        </div>
                    </div>


           





                </div>

                <div class="col-lg-6">
                    
                  
                    
                     <div class="form-group">
                        <label for="CompanyId" class="col-sm-2 control-label">公司*</label>
                        <div class="col-sm-10">
                            <select name="input_company" id="CompanyId" class="form-control  "  disabled>


                                <%  

                                    using (var db = new TestShenzhenWebApplication.AzureDBContext())
                                    {
                                        var q = from d in db.PartnerCompanies where d.Id== issueModel.CompanyId orderby d.Name ascending select d;
                                        foreach (var item in q)
                                        {
                                            Response.Write(string.Format("<option value='{0}'>{1}</option>",item.Id, item.Name));
                                        }
                                    }

                                %>
                               
                            </select>
                        </div>
                    </div>

                    


                       <div id="div-input_email" class="form-group">
                        <label for="UserEmail" class="col-sm-2 control-label">电子邮件*</label>
                        <div class="col-sm-10">
                            <input type="email"  name="input_email" value="<%= issueModel.UserEmail %>" class="form-control  "  disabled id="UserEmail" placeholder="Email" />
                        </div>
                    </div>
                    <div id="div-input_name" class="form-group">
                        <label class="col-sm-2 control-label"  for="UserName">姓名*</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_name" class="form-control  "  disabled value="<%= issueModel.UserName %>" id="UserName" placeholder="Name" />
                        </div>

                    </div>
                         <div class="form-group" id="div-input_phone">
                        <label for="UserPhone" class="col-sm-2 control-label">联系电话*</label>
                        <div class="col-sm-10">
                            <input type="tel" name="input_phone" class="form-control  "  disabled value="<%= issueModel.UserPhone %>" id="UserPhone" placeholder="Phone Number" />
                        </div>
                    </div>
                </div>

            </div>


            <%--issue Title--%>
            <div class="" style="border:0">

          

                         <div class="form-group">
                  
                              <label class="col-sm-1 control-label"  for="IssueTitle">标题*</label>
                        <div class="col-sm-8">
                          <input type="text" name="input_issuetitle" value="<%= issueModel.IssueTitle %>" class="form-control  "  disabled id="IssueTitle" aria-label="Issue Title" />
                        </div>


                                   <label for="IssueType" class=" col-sm-1 control-label">类别*</label>
                        <div class="col-sm-2">
                            <select disabled name="input_issuetype" id="IssueType" class="   form-control   ">
                               
                             
                              
                              
                              
                               

                                <% switch (issueModel.IssueType)
                                    {
                                        case 1:
                                            Response.Write("<option value='1'>Feedback</option>");
                                            break;
                                               case 2:
                                            Response.Write(" <option value='2'>HLk Issue</option>");
                                            break;   case 3:
                                            Response.Write(" <option value='3'>Debug Issue</option>");
                                            break;   case 4:
                                            Response.Write(" <option value='4'>Win10 Feature</option>");
                                            break; case 5:
                                            Response.Write("<option value='5'>Others</option>");
                                            break;
                                        default:
                                            break;
                                    } %>

                            </select>
                        </div>

                    </div>



         <%--       <div class="form-group" style="border:0" id="div-input_issuetitle">
                  

                       <div class="col-sm-10">
                             <input type="text" name="input_issuetitle" class="form-control  "  disabled id="IssueTitle" aria-label="Issue Title" />
                        </div>

                                <select name="input_issuetype" id="IssueType" class="  control-label dropdown-toggle btn btn-default ">
                               <option value='1'>Feedback</option>
                               <option value='2'>OS Issue</option>
                               <option value='3'>Debug Issue</option>

                            </select>
                      

                        <!-- /.input-group -->

            </div>--%>
                </div>

            <%--Issue Content--%>
            <div  id="div-input_issuecontent" >
            

                <div class="form-group " style="border:0">
                    <div class="col-sm-10" style="width: 100%">
                        <textarea id="issueContent"  name="input_issuecontent" class="form-control  "  disabled rows="10"><%= issueModel.IssueContent %>"</textarea>
                    </div>
                </div>
            </div>

            <p >状态 ：<% if (issueModel.status == 0)
                       { %> 
                暂未回复
                <%}
    else if (issueModel.status == 1)
    { %>
                已经答复

                <%} %>
            </p>
 



        <select name="input_status" id="id_status" runat="server" class="form-control"  >

            <option value='0' >尚未答复</option><option value='1'>已经答复</option><option value='2'>正在处理</option>

       
                          
                            </select>


            <p>答复内容</p>
            <asp:TextBox ID="TextBox1" runat="server" Height="82px" Width="657px" TextMode="MultiLine"></asp:TextBox>



            <asp:Button ID="Button1" CssClass="btn-default"  runat="server" Text="答复" Height="35px" Width="110px" OnClick="Button1_Click" />

            <asp:Button ID="Button2" CssClass="btn-default" runat="server" Height="35px" OnClick="Button2_Click" Text="返回" Width="110px" />

   



    </div>
   </div>
          </div>
        </div>


           <h3>Update History</h3>
           <!-- Large modal -->

           <!-- Button trigger modal -->
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 Check History
</button>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">History Tracking</h4>
      </div>
      <div class="modal-body">
              <ul>

           <asp:DataList ID="DataList1" runat="server" DataSourceID="LinqDataSource1">
            <ItemTemplate>

                <li>
                    <h3>
                   [<%#  Eval("Id") %>] UpdateBy      <asp:Label ID="UpdateByNameLabel" runat="server" Text='<%# Eval("UpdateByName") %>' /> -- <asp:Label ID="PubTimeLabel" runat="server" Text='<%# Eval("PubTime") %>' />  
                 </h3>
       
                    <br />
                   OldValue: <span style="  color:darkgray"><asp:Label ID="OldValueLabel" runat="server" Text='<%# Eval("OldValue") %>' /></span>
                   <br />
                   NewValue:<span style=" outline-style:groove; color:red"><asp:Label ID="NewValueLabel" runat="server" Text='<%# Eval("NewValue") %>' /></span>
                   
                     <br />
</li>
            </ItemTemplate>
        </asp:DataList>


           </ul>

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="TestShenzhenWebApplication.AzureDBContext" EntityTypeName="" OrderBy="Id desc" Select="new (UpdateById, Ipaddress, Header, Id, Table, Column, OldValue, NewValue, PubTime, UpdateByName, PK1)" TableName="Histories" Where="PK1 == @PK1">
            <WhereParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="PK1" QueryStringField="id" Type="Int32" />
            </WhereParameters>
        </asp:LinqDataSource>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

       












         </form>
</body>
</html>