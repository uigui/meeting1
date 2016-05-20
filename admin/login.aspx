<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="TestShenzhenWebApplication.peshenzhen_admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div>
     <div class="container">

      <form class="form-signin" id="form1" runat="server">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" runat="server" class="form-control" value="" placeholder="Email address" required="required" autofocus="autofocus" /> 
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" runat="server" id="inputPassword" value="Pass.word," class="form-control" placeholder="Password" required="required" />
        <button class="btn btn-lg btn-primary btn-block" runat="server" id="btn_login" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->
    </div>
</body>
</html>
