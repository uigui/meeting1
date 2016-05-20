<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TestShenzhenWebApplication.Default" %>

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
                <li  class="active"><a href="Default.aspx">Report Issue</a></li>
                    <li ><a href="Suvery.aspx">Survey</a></li>
                    <li><a href="Agenda.aspx">Agenda</a></li>
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
        <img src="img/Test.PNG" width="160"  style="float:right;display:block"/>
            <%--<p>尊敬的来宾：</p>--%>
            <h1>Test Workshop</h1>
        </div>

        <form class="form-horizontal well" id="myFrom">

            <%--Issue Fileds--%>
            <div class="row">
                <div class="col-lg-6">
                 

                  
               

                        <div class="form-group" id="div-input_projectname">
                        <label class="col-sm-2 control-label"  for="projectName">项目名称<span style="color:red">*</span></label>
                        <div class="col-sm-10">
                            <input type="text" name="input_projectname" class="form-control" id="projectName" placeholder="Project Name" />
                        </div>
                    </div>
                   


                             <div class="form-group" id="div-fch">
                        &nbsp;<div class=" col-sm-10">
                                   
 

                              </div>
                        </div>

                     
                       <div class="form-group" id="div-input_productMPDate">
                        <label class="col-sm-2 control-label"  for="productMPDate">发布日期</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_productMPDate" class="form-control" id="productMPDate" placeholder="2015/9/10" />
                        </div>
                    </div>

                    
                        <div class="form-group" id="div-input_productform">
                        <label class="col-sm-2 control-label"  for="productDimension">产品形态</label>
                        <div class="col-sm-10">
                       <%--     <input type="text" name="input_productform" class="form-control" id="productForm" placeholder="All-in-one/Tablet.. " />--%>


                            <select  name="input_productform" class="form-control" id="productForm" >
                                <option value="N/A">N/A</option>
                                <option value="PC">PC</option>
                                <option value="Tablet">Tablet</option>
                                <option value="2-in-1">2-in-1</option>
                                <option value="All-in-one">All-in-one</option>
                                <option value="Notebook">Notebook</option>
                                <option value="Others">Others</option>
                               
                            </select>




                        </div>
                    </div>


                        <div class="form-group" id="div-input_productdimension">
                        <label class="col-sm-2 control-label"  for="productDimension">屏幕尺寸</label>
                        <div class="col-sm-10">
                         
                            
                          <%--     <input type="text" name="input_productdimension" class="form-control" id="productDimension" placeholder="Dimension " />--%>

                                  <select  name="input_productdimension" class="form-control" id="productDimension" >
                                 <option value="N/A">N/A</option>
                                <option value="8寸以下">8寸以下</option>
                                <option value="8-9寸">8-9寸</option>
                                <option value="9-10寸">9-10寸</option>
                                <option value="10寸以上">10寸以上</option>
                     
                               
                            </select>





                        </div>
                    </div>



                        <div class="form-group" id="div-input_projectplatfrom">
                        <label class="col-sm-2 control-label"  for="projectPlatform">平台</label>
                        <div class="col-sm-10">
                        <%--    <input type="text" name="input_projectplatfrom" class="form-control" id="projectPlatform" placeholder="Platfrom" />--%>

                               <select  name="input_projectplatfrom" class="form-control" id="projectPlatform" >
                                 <option value="N/A">N/A</option>
                     
                                <option value="Others">Others</option>
                            </select>



                        </div>
                    </div>


           





                </div>

                <div class="col-lg-6">
                    
                  
                    
                     <div class="form-group">
                        <label for="CompanyId" class="col-sm-2 control-label">公司<span style="color:red">*</span></label>
                        <div class="col-sm-10">
                            <select name="input_company" id="CompanyId" class="form-control">


                                <%  

                                    using (var db = new TestShenzhenWebApplication.AzureDBContext())
                                    {
                                        var q = from d in db.PartnerCompanies orderby d.Name ascending select d;
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
                        <label for="UserEmail" class="col-sm-2 control-label">电子邮件<span style="color:red">*</span></label>
                        <div class="col-sm-10">
                            <input type="email"  name="input_email" class="form-control" id="UserEmail" placeholder="Email" />
                        </div>
                    </div>
                    <div id="div-input_name" class="form-group">
                        <label class="col-sm-2 control-label"  for="UserName">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" name="input_name" class="form-control" id="UserName" placeholder="Name" />
                        </div>

                    </div>
                         <div class="form-group" id="div-input_phone">
                        <label for="UserPhone" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                            <input type="tel" name="input_phone" class="form-control" id="UserPhone" placeholder="Phone Number" />
                        </div>
                    </div>
                </div>

            </div>


            <%--issue Title--%>
            <div class="panel panel-primary " style="border:0">

                <div class="panel-heading">
                    <h3 class="panel-title">问题</h3>
                </div>

                         <div class="form-group" id="div-input_issuetitle">
                  
                              <label class="col-sm-1 control-label"  for="IssueTitle">标题<span style="color:red">*</span></label>
                        <div class="col-sm-8">
                          <input type="text" name="input_issuetitle" class="form-control" id="issueTitle" placeholder=""  aria-label="Issue Title" />
                        </div>


                                   <label for="IssueType" class=" col-sm-1 control-label">类别<span style="color:red">*</span></label>
                        <div class="col-sm-2">
                            <select name="input_issuetype" id="IssueType" class="   form-control ">
                               <option value='1'>A</option>
                               <option value='2'>B</option>
                               <option value='3'>C</option>
                               <option value='4'>D</option>
                               <option value='5'>E</option>
                            </select>
                        </div>

                    </div>



         <%--       <div class="form-group" style="border:0" id="div-input_issuetitle">
                  

                       <div class="col-sm-10">
                             <input type="text" name="input_issuetitle" class="form-control" id="IssueTitle" aria-label="Issue Title" />
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
            <div class="panel panel-primary " id="div-input_issuecontent" style="margin-bottom: 0px; border-bottom-width: 0px;">
                <div class="panel-heading">
                    <h3 class="panel-title">简要描述</h3>
                </div>

                <div class="form-group " style="border:0">
                    <div class="col-sm-10" style="width: 100%">
                        <textarea id="issueContent" name="input_issuecontent" class="form-control" rows="10"></textarea>
                    </div>
                </div>
            </div>


            <div class="row " style="margin:0">
                       <%--Submit Button--%>
            <div class="form-group pull-left">
                <div class=" col-sm-10">
                    <!-- Button trigger modal -->
                    <button type="submit" class="btn btn-primary  btn-lg" id="sumbitButton">
                        提交问题
                    </button>

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

           <span class="top-right" style="float:right; display:block; margin:0">
            <img class="img-responsive" src="img/portal_barcode.png" width="120" />
            </span>
            </div>

     


        </form>

         <p class="small text-right text-capitalize">*您的反馈意见将有助于我们更好地完善Test的最近产品和技术。在未经您允许的情况下，Test不会将您提供的信息与第三方共享。 </p>

    </div>
    <!-- /container -->

   


<%-- 
<p><span id="results"></span></p>
<p><span id="results2"></span></p>--%>



    <script>

        //function showValues() {
        //    var str = $("#myFrom").serialize();
        //    $("#results").text(str);
        //}
        //$("input[type='checkbox'], input[type='radio']").on("click", showValues);
        //$("select").on("change", showValues);
        //showValues();


        //$("#myFrom").submit(function (event) {
        //    if ($("input_name").val() === "123") {
        //        $("#results2").text("Validated...").show();
        //        $("#myModal").show();
        //        return;
        //    }
        //    $("#results2").text("Not valid!").show().fadeOut(1000);
        //    event.preventDefault();
        //});
        var errormessage = '';
        function validate() {
            errormessage = '';
            //if ($("#UserName").val() == "") {
            //    $("#div-input_name").addClass("has-error");
            //    return false;
            //}
            //else if ($("#UserEmail").val() == "") {
            //    $("#div-input_email").addClass("has-error");
            //    return false;
            //}
            //else if ($("#UserPhone").val() == "") {
            //    $("#div-input_phone").addClass("has-error");
            //    return false;
            //}
       
            //} else if ($("#productMPDate").val() == "") {
            //    $("#div-input_productMPDate").addClass("has-error");
            //    return false;
            //} else if ($("#productDimension").val() == "") {
            //    $("#div-input_productdimension").addClass("has-error");
            //    return false;
            //} else if ($("#projectPlatform").val() == "") {
            //    $("#div-input_projectplatfrom").addClass("has-error");
            //    return false;
            $("div").removeClass("has-error");

          

        if ($("#projectName").val() == "") {
            $("#div-input_projectname").addClass("has-error");
            errormessage = '请填写项目名称';

            return false;
        }
              if ($("#issueTitle").val() == "") {
                $("#div-input_issuetitle").addClass("has-error");
                errormessage = '请填写问题标题';
                return false;
              }

              if ($("#UserEmail").val() == "") {
                  $("#div-input_email").addClass("has-error");
                  errormessage = '请填写邮箱地址';
                      return false;

                  }

            


            //} else if ($("#issueContent").val() == "") {
            //    $("#div-input_issuecontent").addClass("has-error");
            //    return false;
            return (true);
        }
        
        $("#myFrom").submit(function (event) {

            if (validate()) {
                            $('#myModal').modal()
                            $("#myModalLabel").text("正在提交");
                            $("#myModalBody").text("请稍后..");


                            var url = "api/issuesubmit.ashx"; // the script where you handle the form input.

                            $.ajax({
                                type: "POST",
                                url: url,
                                data: $("#myFrom").serialize(), // serializes the form's elements.
                                success: function (data) {
                                    if (data != 'fail') {
                                        $('#myModal').modal()
                                        $("#myModalLabel").text("提交成功");
                                        $("#myModalBody").html("<p>请记录 Tracking ID: <b class='bg-info' style='font-size: 25px;'>" + data + "</span> </b><p> 请在Q&A Support Room咨询问题时提供以便查询，谢谢您的合作。 </p>");
                                    }
                                    else {
                                        $('#myModal').modal()
                                        $("#myModalLabel").text("错误");
                                        $("#myModalBody").text("网路异常，请重试..");
                                    }

                                }
                            });

                            return false; // avoid to execute the actual submit of the form.
                        }
                        else
                        {
                            $('#myModal').modal()
                            $("#myModalLabel").text("错误");
                            $("#myModalBody").text("星号标记的项目是必填项，.."+errormessage);
                        }
                     

                    event.preventDefault();

          
        });
    </script>

</body>
</html>
