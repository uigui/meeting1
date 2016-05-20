<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stat.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.Stat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Content/DataTables/css/jquery.dataTables.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet" />
    <script src="../Scripts/jquery-1.9.1.min.js"></script>
    <script src="../Scripts/DataTables/jquery.dataTables.js"></script>
    <script src="../json-to-table.js"></script>

   
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
          <a class="navbar-brand" href="#">Test</a>
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
                <div runat="server" id="_div_displayIssues">
                    
                </div>


    <h3>
        当前问题总数：
    </h3>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

        <h3>
            待处理总数
        </h3>      
    
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>



        <h3>
            已经处理总数
        </h3>      
        
            
    
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>



        
        <h3>
            正在处理总数
        </h3>      
        
            
            
    
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>





                <h3>
            问卷总数
        </h3>      
        
        
            
    
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>




              <h3>课程平均分 （满分10）</h3>




        
            
    
        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>



              <h3>实验平均分（满分10）</h3>
        
            
    
        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>






        <h3>已解决问题分组</h3>
            
    
        <%--<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>--%>
                <table id="example2" class="display" width="100%">
                    <thead>
            <tr>
                <th>Owner</th>
                <th>总计</th>
             
            </tr>
        </thead>
              </table>
                  <script>
                  var  dataSet2 =<%= groupbyresolvedjson %>;




              $('#example2').DataTable({
                  data: dataSet2,
                  columns: [
                      { data: 'Name' },
                      { data: 'Total' }
                  ],
                  "paging":   false,
                  "ordering": false,
                  "info":     false,
                  "searching": false
              });
              </script>

        
        <h3>正在解决问题分组</h3>
            
    
        
              <%--<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>--%>
            
              <table id="example1" class="display" width="100%">
                  <thead>
            <tr>
                <th>Owner</th>
                <th>总计</th>
             
            </tr>
        </thead>
              </table>
            
 
    
          <script>
                  var  dataSet1 =<%= groupbytrackingjson %>;




              $('#example1').DataTable({

                  data: dataSet1,
                  columns: [
                      { data: 'Name' },
                      { data: 'Total' }
                  ],
                  "paging":   false,
                  "ordering": false,
                  "info":     false,
                  "searching": false
              });
              </script>
            
    
        <%--<asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>--%>



        
            

        
            



          </div>
        </div>
      </div>
    </div>



      
         

















    </form>
</body>
</html>