<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suvery.aspx.cs" Inherits="TestShenzhenWebApplication.Suvery" %>

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
                <li ><a href="Default.aspx">Report Issue</a></li>
                    <li  class="active"><a href="Suvery.aspx">Survey</a></li>
                    <li ><a href="Agenda.aspx">Agenda</a></li>
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
         <h1>Test Workshop</h1>
        </div>

        <form class="form-horizontal well" id="myFrom">

            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <td>课程 反馈评价</td>
                            <th>请给出您的评价分数 (1~10 分)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">您对本次培训整体满意度如何</th>
                            <td class="text-muted">


                                <div class="btn-group" id="div-Q1options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q1options" id="optionsQ1_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q1options" id="optionsQ1_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q1options" id="optionsQ1_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q1options" id="optionsQ1_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q1options" id="optionsQ1_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q1options" id="optionsQ1_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q1options" id="optionsQ1_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q1options" id="optionsQ1_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q1options" id="optionsQ1_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q1options" id="optionsQ1_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">本次培训是否达到了您的期望</th>
                            <td class="text-success"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q2options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q2options" id="optionsQ2_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q2options" id="optionsQ2_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q2options" id="optionsQ2_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q2options" id="optionsQ2_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q2options" id="optionsQ2_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q2options" id="optionsQ2_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q2options" id="optionsQ2_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q2options" id="optionsQ2_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q2options" id="optionsQ2_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q2options" id="optionsQ2_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">培训主题是否对您有用</th>
                            <td class="text-success"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q3options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q3options" id="optionsQ3_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q3options" id="optionsQ3_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q3options" id="optionsQ3_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q3options" id="optionsQ3_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q3options" id="optionsQ3_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q3options" id="optionsQ3_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q3options" id="optionsQ3_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q3options" id="optionsQ3_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q3options" id="optionsQ3_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q3options" id="optionsQ3_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">您对课程的安排是否满意</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q4options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q4options" id="optionsQ4_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q4options" id="optionsQ4_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q4options" id="optionsQ4_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q4options" id="optionsQ4_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q4options" id="optionsQ4_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q4options" id="optionsQ4_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q4options" id="optionsQ4_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q4options" id="optionsQ4_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q4options" id="optionsQ4_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q4options" id="optionsQ4_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">您对培训场所及后勤安排是否满意</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q5options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q5options" id="optionsQ5_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q5options" id="optionsQ5_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q5options" id="optionsQ5_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q5options" id="optionsQ5_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q5options" id="optionsQ5_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q5options" id="optionsQ5_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q5options" id="optionsQ5_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q5options" id="optionsQ5_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q5options" id="optionsQ5_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q5options" id="optionsQ5_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th scope="row">培训讲师对所讲内容是否有深刻理解</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q6options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q6options" id="optionsQ6_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q6options" id="optionsQ6_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q6options" id="optionsQ6_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q6options" id="optionsQ6_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q6options" id="optionsQ6_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q6options" id="optionsQ6_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q6options" id="optionsQ6_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q6options" id="optionsQ6_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q6options" id="optionsQ6_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q6options" id="optionsQ6_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">培训内容是否选择恰当，帮您达到了目标</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q7options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q7options" id="optionsQ7_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q7options" id="optionsQ7_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q7options" id="optionsQ7_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q7options" id="optionsQ7_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q7options" id="optionsQ7_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q7options" id="optionsQ7_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q7options" id="optionsQ7_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q7options" id="optionsQ7_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q7options" id="optionsQ7_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q7options" id="optionsQ7_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">所讲内容对您的工作/项目是否有帮助</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q8options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q8options" id="optionsQ8_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q8options" id="optionsQ8_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q8options" id="optionsQ8_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q8options" id="optionsQ8_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q8options" id="optionsQ8_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q8options" id="optionsQ8_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q8options" id="optionsQ8_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q8options" id="optionsQ8_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q8options" id="optionsQ8_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q8options" id="optionsQ8_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">更多建设性建议和反馈</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                   <textarea id="issueContenta" name="input_issuecontenta" class="form-control" rows="10"></textarea>
                            </td>
                        </tr>



                    </tbody>
                </table>





            </div>



            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <td>动手实验 反馈评价</td>
                            <th>请给出您的评价分数 (1~10 分)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">您对本次实验整体满意度如何</th>
                            <td class="text-muted">


                                <div class="btn-group" id="div-Q9options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q9options" id="optionsQ9_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q9options" id="optionsQ9_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q9options" id="optionsQ9_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q9options" id="optionsQ9_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q9options" id="optionsQ9_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q9options" id="optionsQ9_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q9options" id="optionsQ9_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q9options" id="optionsQ9_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q9options" id="optionsQ9_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q9options" id="optionsQ9_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">本次实验是否达到了您的期望</th>
                            <td class="text-success"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q10options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q10options" id="optionsQ10_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q10options" id="optionsQ10_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q10options" id="optionsQ10_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q10options" id="optionsQ10_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q10options" id="optionsQ10_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q10options" id="optionsQ10_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q10options" id="optionsQ10_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q10options" id="optionsQ10_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q10options" id="optionsQ10_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q10options" id="optionsQ10_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">对实验的时间安排是否满意</th>
                            <td class="text-success"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q11options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q11options" id="optionsQ11_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q11options" id="optionsQ11_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q11options" id="optionsQ11_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q11options" id="optionsQ11_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q11options" id="optionsQ11_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q11options" id="optionsQ11_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q11options" id="optionsQ11_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q11options" id="optionsQ11_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q11options" id="optionsQ11_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q11options" id="optionsQ11_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">对实验场所及设备是否满意</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q12options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q12options" id="optionsQ12_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q12options" id="optionsQ12_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q12options" id="optionsQ12_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q12options" id="optionsQ12_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q12options" id="optionsQ12_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q12options" id="optionsQ12_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q12options" id="optionsQ12_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q12options" id="optionsQ12_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q12options" id="optionsQ12_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q12options" id="optionsQ12_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">培训讲师对所讲内容是否有深刻理解</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q13options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q13options" id="optionsQ13_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q13options" id="optionsQ13_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q13options" id="optionsQ13_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q13options" id="optionsQ13_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q13options" id="optionsQ13_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q13options" id="optionsQ13_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q13options" id="optionsQ13_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q13options" id="optionsQ13_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q13options" id="optionsQ13_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q13options" id="optionsQ13_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th scope="row">实验主题是否选择恰当，帮您达到了目标</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q14options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q14options" id="optionsQ14_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q14options" id="optionsQ14_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q14options" id="optionsQ14_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q14options" id="optionsQ14_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q14options" id="optionsQ14_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q14options" id="optionsQ14_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q14options" id="optionsQ14_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q14options" id="optionsQ14_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q14options" id="optionsQ14_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q14options" id="optionsQ14_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">动手操作是否帮助您培养了技能，<br />促进您为客户设计和制造设备的能力。</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                                <div class="btn-group" id="div-Q15options" data-toggle="buttons">



                                    <label class="btn btn-primary active">
                                        10
    <input type="radio" name="Q15options" id="optionsQ15_10" checked="checked" value="10" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        9
    <input type="radio" name="Q15options" id="optionsQ15_9" value="9" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        8
    <input type="radio" name="Q15options" id="optionsQ15_8" value="8" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        7
    <input type="radio" name="Q15options" id="optionsQ15_7" value="7" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        6
    <input type="radio" name="Q15options" id="optionsQ15_6" value="6" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        5
    <input type="radio" name="Q15options" id="optionsQ15_5" value="5" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        4
    <input type="radio" name="Q15options" id="optionsQ15_4" value="4" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        3
    <input type="radio" name="Q15options" id="optionsQ15_3" value="3" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        2
    <input type="radio" name="Q15options" id="optionsQ15_2" value="2" />
                                    </label>
                                    <label class="btn btn-primary ">
                                        1
    <input type="radio" name="Q15options" id="optionsQ15_1" value="1" />
                                    </label>

                                </div>
                            </td>
                        </tr>
                    
                        <tr>
                            <th scope="row">更多建设性建议和反馈</th>
                            <td class="text-danger"><span class="" aria-hidden="true"></span>
                              <textarea id="issueContentb" name="input_issuecontentb" class="form-control" rows="10"></textarea>
                            </td>
                        </tr>



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





                  <div class="row " style="margin:0">
     

                          <%--Submit Button--%>
            <div class="form-group pull-left">
                <div class=" col-sm-10">
                    <!-- Button trigger modal -->
                    <button type="submit" class="btn btn-primary  btn-lg" id="sumbitButton">
                        提交反馈
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none">
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
          
          <p class="small text-right text-capitalize ">*您的反馈意见将有助于我们更好地完善Test的最近产品和技术。在未经您允许的情况下，Test不会将您提供的信息与第三方共享。 </p>
    </div>
    <!-- /container -->

          


    <%-- 
<p><span id="results"></span></p>
<p><span id="results2"></span></p>--%>



    <script>


        function validate() {

            return true;
        }

        $("#myFrom").submit(function (event) {

            if (validate()) {
                $('#myModal').modal()
                $("#myModalLabel").text("正在提交");
                $("#myModalBody").text("请稍后..");


                var url = "api/suverysubmit.ashx"; // the script where you handle the form input.

                $.ajax({
                    type: "POST",
                    url: url,
                    data: $("#myFrom").serialize(), // serializes the form's elements.
                    success: function (data) {

                        //alert($("#myFrom").serialize());
                        if (data != 'fail') {
                            $('#myModal').modal()
                            $("#myModalLabel").text("提交成功");
                            $("#myModalBody").text("提交成功..");
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
            else {
                $('#myModal').modal()
                $("#myModalLabel").text("错误");
                $("#myModalBody").text("请填写完整后再提交..");
            }


            event.preventDefault();


        });
    </script>

</body>
</html>

