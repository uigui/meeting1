<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="TestShenzhenWebApplication.Agenda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-1.9.1.js"></script>
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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

    <!-- Fixed navbar -->
 
    <nav class="navbar navbar-default">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
          </div>
          <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
            <ul class="nav navbar-nav">
                
                 <li ><a href="Suvery.aspx">Survey</a></li>
                    <li  class="active"><a href="Agenda.aspx">Agenda</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <%--  <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
              <li><a href="../navbar-static-top/">Static top</a></li>
              <li><a href="../navbar-fixed-top/">Fixed top</a></li>--%>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>


    <div class="container theme-showcase" role="main">

        <div class="well">
               <img src="img/Test.PNG" width="160"  style="float:right;display:block"/>
                  <h1>&nbsp;Workshop</h1>
        </div>

        <form class="form-horizontal well" id="myFrom">



            <div class="table-responsive">
                <h2>Sessions: (Meeting Room )</h2>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <td>Time</td>
          <th>Items</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row" style="width:100px"> <span>9:15~9:45</span></th>
          <td class="text-muted"><span>Register</span></td>
        </tr>

      </tbody>
    </table>
  </div>






                  <div class="table-responsive">
                <h2> Hands-on Labs: (Meeting Room )</h2>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <td>Time</td>
          <th>Items</th>
        </tr>
      </thead>
      <tbody>
      

      </tbody>
    </table>
  </div>

              <div class="table-responsive">
                <h2>  Q&A: (VIP Room)</h2>
    <table class="table table-bordered table-striped">
      <thead>
        <tr>
          <td>Time</td>
          <th>Items</th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
  </div>


            <%--Issue Fileds--%>
            <div class="row">


                <div class="col-lg-6">
                </div>
            </div>



            <div class="row">
                <div class="col-lg-6">
                </div>

                <div class="col-lg-6">
                </div>
            </div>











        </form>



    </div>
    <!-- /container -->



</body>
</html>

