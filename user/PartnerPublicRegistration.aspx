<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PartnerPublicRegistration.aspx.cs" Inherits="TestShenzhenWebApplication.user.PartnerPublicRegistration" %>

<!DOCTYPE html>

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
                <li  class="active"><a href="/user/partnerPublicRegistration.aspx">Registration</a></li>
                  <%--  <li ><a href="Suvery.aspx">Survey</a></li>--%>
                 <%--   <li><a href="/Agenda.aspx">Agenda</a></li>--%>
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <%--  <li class="active"><a href="./">Default <span class="sr-only">(current)</span></a></li>
              <li><a href="../navbar-static-top/">Static top</a></li>
              <li><a href="../navbar-fixed-top/">Fixed top</a></li>--%>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>


    <!-- Fixed navbar -->
  

    <div class="container theme-showcase" role="main">

        <div class="well">
        <img src="/img/Test.PNG" width="160"  style="float:right;display:block"/>
            <%--<p>尊敬的来宾：</p>--%>
           <h1>Test Shenzhen Nov Workshop</h1>
        </div>

        <form class="form-horizontal well"  method="post" id="myFrom">

            <%--Issue Fileds--%>
            <div class="row">
                <div >
                 

                  
               

                        <div class="form-group  center-block" id="div-input_email">
                        <label class="col-sm-2 control-label"  for="email">
                            电子邮件<span style="color:red"></span></label>
                        <div class="col-sm-4">
                            <input type="text" name="email" class="form-control" id="email" placeholder="Email" />
                        </div>

                                   </div>
                       
                        <div class="form-group  center-block" id="div-input_phone">
                        <label class="col-sm-2 control-label"  for="phone">
                            手机号码</label>
                        <div class="col-sm-4">
                           <input type="text" name="phone" class="form-control" id="phone" placeholder="phone" />
                        </div>

                                   </div>
                            

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display:none">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel"></h4>
                                </div>
                                <div class="modal-body" id="myModalBody">
                                    <p></p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">返回</button>
                                    <%--<button type="button" class="btn btn-primary">Save changes</button>--%>
                                </div>
                            </div>
                        </div>
                    </div>
             
                   






                </div>

      

            </div>
           
             <div class="row text-center ">
                
                                 <!-- Button trigger modal -->
                    <button type="submit" class="btn btn-primary btn-primary bg-info" id="sumbitButton">
                        注册
                    </button>
            </div>
          

     


        </form>

         <%--<p class="small text-right text-capitalize">*您的反馈意见将有助于我们更好地完善Test的最近产品和技术。在未经您允许的情况下，Test不会将您提供的信息与第三方共享。 </p>--%>

    </div>
    <!-- /container -->



    <script>
        function validate() {
            if ($('#email').val() == "" && $('#phone').val() == "")
            {
         
                return false;
            }
            else
            return true;
        }
       
        
        $("#myFrom").submit(function (event) {

            if (validate()) {
                $('#myModal').modal()
                $("#myModalLabel").text("正在提交");
                $("#myModalBody").text("请稍后..");

                
                var url = "/api/PartnerRegStatusUpdate.ashx?r="+ Math.random(); // the script where you handle the form input.
                var url2 = "/api/PartnerRegShowData.ashx?r=" + Math.random();
                $.ajax({
                    type: "POST",
                    url: url,
                    data: $("#myFrom").serialize(), // serializes the form's elements.
                    success: function (data) {

                        //alert($("#myFrom").serialize());
                        if (data == '1') {
                            $('#myModal').modal()
                            $("#myModalLabel").text("注册成功");
                            $("#myModalBody").text("注册成功..");


                            $.ajax({
                                type: "POST",
                                url: url2,
                                data: $("#myFrom").serialize(), // serializes the form's elements.
                                success: function (data) {
                                    $("#myModalBody").text(" <br />" + data);

                                },
                                error: function () {
                                    $('#myModal').modal()
                                    $("#myModalLabel").text("网络错误");
                                    $("#myModalBody").text("网络错误,请重试..");
                                }

                            });

                        }
                        else if (data == '-1') {
                            $('#myModal').modal()
                            $("#myModalLabel").text("错误");
                            $("#myModalBody").text("邮箱没有记录，请重试，或与工作人员联系..");
                        }
                        else if (data == '0') {
                            $('#myModal').modal()
                            $("#myModalLabel").text("已注册");
                            $("#myModalBody").text("已注册..");


                            $.ajax({
                                type: "POST",
                                url: url2,
                                data: $("#myFrom").serialize(), // serializes the form's elements.
                                success: function (data) {
                                    $("#myModalBody").html("<p></p>" + data);

                                },
                                error: function () {
                                    $('#myModal').modal()
                                    $("#myModalLabel").text("网络错误");
                                    $("#myModalBody").text("网络错误,请重试..");
                                }

                            });

                        }
                        else {
                            $('#myModal').modal()
                            $("#myModalLabel").text("网络错误");
                            $("#myModalBody").text("网络错误,请重试..");
                        }

                    },
                    error: function () {
                        $('#myModal').modal()
                        $("#myModalLabel").text("网络错误");
                        $("#myModalBody").text("网络错误,请重试..");
                    }
                    
                });

                return false; // avoid to execute the actual submit of the form.
            }
            else {
                $('#myModal').modal()
                $("#myModalLabel").text("错误");
                $("#myModalBody").text("请至少填写一个条件..");
            }


            event.preventDefault();


        });

          
        
    </script>

</body>
</html>
