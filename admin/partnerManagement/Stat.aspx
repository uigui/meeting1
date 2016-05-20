<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stat.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.partnerManagement.Stat" %>

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
    <style>
        .bs-callout-warning {
    border-left-color: #aa6708;
}
        .bs-callout {
            padding: 20px;
            margin: 20px 0;
            border: 1px solid #eee;
            border-left-width: 5px;
            border-radius: 3px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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


          </div>

          <div class="table-responsive">
                <div runat="server" id="_div_displayIssues"></div>

          <%--  <h1> <span class="label label-default">Default</span></h1> 
<h2><span class="label label-primary">Primary</span></h2> 
<h3><span class="label label-success">Success</span></h3> 
<h4><span class="label label-info">Info</span></h4> 
<h5><span class="label label-warning">Warning</span></h5> 
<span class="label label-danger">Danger</span>--%>

        <div class="bs-callout bs-callout-warning" >
    <h4>Partner Registration Status</h4>
       
            
             <h1> Total Recorded Company <span class="label label-info"><%= partnerCompanies.Count %></span>   </h1> 
              <h1> Total Recorded Partner Registered/Checked-in <span class="label label-success"> <%= regPartners.Count %></span> / <span class="label  label-danger"> <%= TotalRegistered %></span> </h1> 
  </div>



                 <div class="bs-callout bs-callout-warning" >
    <h4>Partner Registration By Type</h4>
       

                     <table class="table table-bordered table-striped responsive-utilities">
      <thead>
        <tr>
       
          <th>
           Type
            <small>Count</small>
          </th>
          <th>
            Company 
            <small>Recorded</small>
          </th>
          <th>
         Partner
            <small>Recorded</small>
          </th>
          <th>
            Checked-in
            <small>Parters</small>
          </th>

              <th>
          Rate
            <small>Checked-in</small>
          </th>
        </tr>
      </thead>
      <tbody>

              <% foreach (var item in partnerCompanies.GroupBy(o=>o.TypeName)) 
                  {
                      %>
         
          
              <tr>
          <th scope="row"> <h3><span class="label label-default"><%=item.Key %></span></h3>    </th>
          <td class="is-visible"><h3><span class="label label-info">   <%= partnerCompanies.Where(o=>o.TypeName == item.Key).Count() %></span></h3></td>
          <td class="is-hidden">  <h3><span class="label label-success">  <%= GetTotalCompanyNumberByCompanyType(item.Key) %></span></h3></td>
          <td class="is-hidden">     <h3><span class="label label-danger"> <%= GetRegCompanyNumberByCompanyType(item.Key) %> </span>  </h3></td>
                    <td class="is-hidden">     <h3><span class="label label-danger"> <%= ( GetRegCompanyNumberByCompanyType(item.Key) * 1.00/GetTotalCompanyNumberByCompanyType(item.Key) * 100.00).ToString("0.00") %> % </span>  </h3></td>
        </tr>


                <%
                      
                  }  %>

    
       
      </tbody>
    </table>

      
  </div>
           


          </div>
        </div>
      </div>
    </div>




    
    </div>
    </form>
</body>
</html>
