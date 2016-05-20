<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageCompany.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.ManageCompany" %>

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
<a href="AddCompany.aspx" class="btn-success btn-lg">Add Company</a>
          <br />
          <br />
          <br />

          </div>
          <div class="table-responsive">
                <div runat="server" id="_div_displayIssues"></div>


    
        


        
            <table id="table_id" class="table table-striped display" >
    <thead>
        <tr>
            <th> ID</th>
            <th> Name</th>
            <th> Type</th>
                        <th> CreateTime</th>
            <th> UpdateTime</th>
            <th> Action</th>
          
        </tr>
    </thead>
    <tbody>
   
       <% foreach (var item in partnerCompanies )
            {
                %>     <tr>

             <td><%=item.Id %></td>
             <td><%=item.Name %></td>
             <td><%=item.TypeName %></td>
             <td><%=item.CreateTime %></td>
             <td><%=item.UpdateTime %></td>
             <td><a href="UpdateCompany.aspx?id=<%=item.Id %>">Update</a></td>
                        
                   

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