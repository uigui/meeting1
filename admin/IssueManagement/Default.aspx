<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.Default" %>

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


   <%--     <div>

            当前问题总数：<asp:Label ID="Label2" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>

        </div>--%>


      <%--  <div>

            当前问卷总数：<asp:Label ID="Label3" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>--%>
              <%--总成绩：<asp:Label ID="Label4" runat="server" Font-Size="XX-Large" Text="Label"></asp:Label>--%>
        <%--</div>--%>



         <nav class="navbar navbar-inverse ">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Test - Issue Management</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="Default.aspx">Home</a></li>
            <li><a href="Stat.aspx">Stat</a></li>
            <li><a href="UserInfo.aspx">修改密码</a></li>

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
      

          <div class="table-responsive">
                <div runat="server" id="_div_displayIssues"></div>


    
        


        
            <table id="table_id" class="table table-striped display" >
    <thead>
        <tr>
            <th>Tracking ID</th>
            <th>Email</th>
            <th>Company Name</th>
            <th>Issue Type</th>
            <th>Issue Title</th>
            <th>Issue Description</th>
            <th>Reply Status</th>
            <th>Reply By</th>

            <th>Link</th>
        </tr>
    </thead>
    <tbody>
       <%-- <tr>
            <td>Row 1 Data 1</td>
            <td>Row 1 Data 2</td>
        </tr>
        <tr>
            <td>Row 2 Data 1</td>
            <td>Row 2 Data 2</td>
        </tr>--%>
       
    
        <% foreach (var item in IssueList )
            {
                %>     <tr>

             <td><%=item.ID %></td>
                         <td><%=item.UserEmail %></td>
             <td><%= GetCompanyNameFromID(item.CompanyId) %></td>
             <td>  <% switch (item.IssueType)
                                    {
                                        case 1:
                                            Response.Write("Feedback");
                                            break;
                                               case 2:
                                            Response.Write(" HLk Issue");
                                            break;   case 3:
                                            Response.Write("Debug Issue");
                                            break;   case 4:
                                            Response.Write(" Win10 Feature");
                                            break; case 5:
                                            Response.Write("Others");
                                            break;
                                        default:
                                            break;
                                    } %></td>
             <td><%= item.IssueTitle %></td>
             <td><%= item.IssueContent %></td>
             <td><%= item.status == 1?"已经答复":item.status ==0 ?"尚未答复":"正在处理" %></td>
                      <td><%= item.ReplyUserEmail %></td>
             <td><a href="IssueDetail.aspx?id=<%=item.ID %>">查看详情</a></td>
                   

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
