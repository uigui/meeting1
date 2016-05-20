<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="/Content/DataTables/css/jquery.dataTables.css" rel="stylesheet" />
    <link href="/Content/bootstrap.css" rel="stylesheet" />
    <link href="/Content/bootstrap-theme.css" rel="stylesheet" />
    <script src="/Scripts/jquery-1.9.1.min.js"></script>
    <script src="/Scripts/DataTables/jquery.dataTables.js"></script>
    <script src="/json-to-table.js"></script>

    <script>
        $(document).ready(function () {
            $('#table_id').DataTable();
        });


    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    


    </div>




         <nav class="navbar navbar-inverse ">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Test - Partner Management</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Default.aspx">Home</a></li>

                
               <li><a href="Default.aspx">Partner Management</a></li>
    <li><a href="AddPartner.aspx">Add Partner</a></li>
  
                <li role="separator" class="divider"></li>
            <li><a href="ManageCompany.aspx">Manage Company</a></li>
    <li><a href="AddCompany.aspx">Add Company</a></li>
          
               
            <li><a href="Stat.aspx">Stat</a></li>
            <li><a href="/admin/UserInfo.aspx">修改密码</a></li>
              <li>  <a href="#" ><asp:Label ID="Label1" runat="server" Text=""></asp:Label> </a></li>
            <li><asp:Button ID="Button1" runat="server" Text="LogoOut" /></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid" >
      <div class="row">
       <%-- <div class="col-sm-3 col-md-2 sidebar">
    
        </div>--%>
        <div class="  col-lg-12" >
      
            <div class="clearfix table-responsive ">
<a href="AddPartner.aspx" class="btn-success btn-lg">Add Partner</a>
          <br />
          <br />
          <br />

          </div>

          <div class="table-responsive">
                <div runat="server" id="_div_displayIssues"></div>


    
        


        
            <table id="table_id" class="table table-striped display" >
    <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Name</th>
            <th>Company Name</th>
            <th>Type</th>
        <th>Phone</th>
            <th>Tag</th>
            <th>Reg Status</th>
               <th>Lunch Needed</th>
            <th>Update By</th>
            <th>Updaet Date</th>
            <th>Action Link</th>
        </tr>
    </thead>
    <tbody>
   
        <% foreach (var item in regPartners)
            {
                %>     <tr>

             <td><%=item.Id %></td>
             <td><%=item.Email %></td>
                    <td><%=item.Name %></td>
             <td><%=item.CompanyName %></td>
             <td><%  
                     var db = new TestShenzhenWebApplication.AzureDBContext();
                    Response.Write( db.PartnerCompanies.Where(o => o.Id == item.CompanyId).FirstOrDefault().TypeName);


                         %></td>

             <td><%=item.Phone %></td>
                    <td><%=item.Tag %></td>
             <td>  <%
                                               if (item.IfReg)
                                               { %>
                 <span class="btn-success">已注册</span>
                 <%} else { %>
                 <span class="btn-danger">未注册</span>

                 <%} %>
             </td>
                     <td>  <%
                                               if (item.Lunch == 1)
                                               { %>
                 <span class="btn-success">需要午餐</span>
                 <%} else { %>
                 <span class="btn-default">无需午餐</span>

                 <%} %>
             </td>
             <td><%=item.UpdateBy %></td>
             <td><%=item.UpdateTime %></td>

             <td><a href="UpdatePartner.aspx?id=<%=item.Id %>">Update</a></td>
                        
                   

                           </tr>
        <%
            } %>

    </tbody>
</table>



          </div>
        </div>
      </div>
    </div>



      
         

















    </form>
</body>
</html>
