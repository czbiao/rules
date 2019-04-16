<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html
        class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg no-smil svgclippaths js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg no-smil svgclippaths"
        lang="en" style="height: auto;">
<!--<![endif]-->
<head>
    <title>韩山师范学院-网络安全知识竞赛</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <%--添加此meta适应手机--%>
    <meta name="viewport" content="width=device-width">
    <%--<!-- Web Fonts -->--%>
    <%--<link--%>
    <%--href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=cyrillic,latin"--%>
    <%--rel="stylesheet" type="text/css">--%>
    <!-- CSS Global Compulsory -->
    <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/app.css" rel="stylesheet">
    <link href="css/blocks.css" rel="stylesheet">
    <link href="css/one.style.css" rel="stylesheet">
    <!-- CSS Footer -->
    <link href="css/footers/footer-v7.css" rel="stylesheet">
    <!-- CSS Implementing Plugins -->
    <link href="plugins/animate.css" rel="stylesheet">
    <link href="plugins/line-icons/line-icons.css" rel="stylesheet">
    <link href="plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet">
    <link href="plugins/owl-carousel2/owl-carousel.css" rel="stylesheet">
    <link
            href="plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css"
            rel="stylesheet">
    <link
            href="plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css"
            rel="stylesheet">
    <link href="plugins/shhos/shhos.css" rel="stylesheet">
    <!-- CSS Theme -->
    <link href="css/app.style.css" rel="stylesheet">
    <!-- CSS Customization -->
    <link href="css/custom.css" rel="stylesheet">
    <!-- 全局JS -->
    <script src="plugins/jquery/jquery.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/forms/login.js"></script>
    <script src="js/forms/register.js"></script>
    <script src="plugins/json/jquery.json.min.js"></script>
    <!-- JS Implementing Plugins -->
    <!-- 平滑滚动 -->
    <script src="plugins/smoothScroll/jquery.smooth-scroll.js"></script>
    <script src="js/smoothScroll/smoothScroll.js"></script>
    <!-- 平滑滚动结束 -->
    <!--登录-->
    <script src="js/modalBox/loginModal.js"></script>
    <!--登录结束-->
    <!-- 弹出框 -->
    <script src="js/popup/personalPopup.js"></script>
    <!-- 弹出框结束 -->
    <!--通知-->
    <script src="js/notice/getPicture.js"></script>
    <script src="js/notice/getTextNotice.js"></script>
    <script src="js/modalBox/noticeModal.js"></script>
    <!--通知结束-->
    <!--题库-->
    <script src="js/modalBox/questionBankModal.js"></script>
    <!--题库结束-->
    <!--获取考试信息-->
    <script src="js/test/getTestInfo.js"></script>
    <script src="js/test/getTestRecord.js"></script>
    <script src="js/test/startTest.js"></script>
    <script src="js/test/getContestInfo.js"></script>
    <script src="js/test/isRegistedContest.js"></script>
    <script src="js/test/changeContestStatus.js"></script>
    <script src="js/test/getContestRecord.js"></script>
    <script src="js/test/registContest.js"></script>
    <script src="js/test/eventOnCloseWeb.js"></script>
    <script src="js/test/startContest.js"></script>
    <!--获取考试信息结束-->
    <!--Cookie-->
    <script src="js/cookie/cookie.js"></script>
    <script src="js/init/init.js"></script>
    <script src="js/cookie/jquery.cookie.js"></script>
    <!--Cookie结束-->
    <!--feedback-->
    <script src="js/feedback/feedback.js"></script>
    <!--feedback结束-->
    <!--重写alert-->
    <%--<script>--%>
        <%--window.alert = function(msg){--%>
            <%--$("#alertContentId").html(msg);--%>
            <%--$("#alertModalId").modal('show');--%>
            <%--// setTimeout('$("#alertModalId").modal("hide")',5000);--%>
        <%--};--%>
    <%--</script>--%>
    <!--重写失败-->

</head>
<body class="demo-lightbox-gallery  pace-done" id="body"
      data-target=".one-page-header" data-spy="scroll">

<!-- 首次登录模态框 -->
<div class="modal fade" id="alertModalId" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="z-index: 9999">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center" id="myModalLabel3">操作结果</h4>
            </div>
            <div class="modal-body">
                <p id="alertContentId" class="text-center"></p>
            </div>
        </div>
    </div>
</div>
<!-- 首次登录模态框结束 -->

<!-- 登录按钮模态框 -->
<div class="modal fade" id="loginModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">x
                </button>
                <h4 class="modal-title" id="myModalLabel">登录</h4>
            </div>
            <div class="modal-body">
                <form class="bs-example bs-example-form">
                    <div style="padding: 10px 10px 10px 10px;">
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
								<span class="input-group-addon"><i class="fa fa-user-o"></i>
								</span> <input type="text" class="form-control" placeholder="学号" id="studentId">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
								<span class="input-group-addon"><i class="fa fa-key"></i>
								</span> <input type="password" class="form-control" placeholder="密码" id="password">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <button type="button" class="col-md-8 col-sm-12 col-xs-12 btn btn-primary "
                                id="loginBT" onclick="login()">登录
                        </button>
                        <span id="loginMessage" class="g-color-red" ></span>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                    </div>
                    <hr>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 注册按钮模态框 -->
<div class="modal fade" id="registerModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">x
                </button>
                <h4 class="modal-title" id="myModalLabel2">注册</h4>
            </div>
            <div class="modal-body">
                <form class="bs-example bs-example-form">
                    <div style="padding: 10px 10px 10px 10px;">
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
                            <%--<span class="input-group-addon"><i class="fa fa-user-o"></i>--%>
                            </span> <input type="text" class="form-control" placeholder="学号" id="studentId2">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
								<%--<span class="input-group-addon"><i class="fa fa-key"></i>--%>
								</span> <input type="password" class="form-control" placeholder="密码" id="password2">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
                            <%--<span class="input-group-addon"><i class="fa fa-user-o"></i>--%>
                            </span> <input type="text" class="form-control" placeholder="姓名" id="userName">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
                            <%--<span class="input-group-addon"><i class="fa fa-user-o"></i>--%>
                            </span> <select class="form-control" id="college">
                                        <option selected="selected" value="null">二级培养单位</option>
                                     </select>
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">
                            
                             <input type="text" class="form-control" placeholder="专业班级 如：计科1603" id="clazz">
                        </div>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <br>
                        <%--<div class="col-md-2 col-sm-0 col-xs-0"></div>--%>
                        <%--<div class="col-md-8 col-sm-12 col-xs-12 input-group input-group">--%>
                            <%--&lt;%&ndash;<span class="input-group-addon"><i class="fa fa-user-o"></i>&ndash;%&gt;--%>
                            <%--</span> <input type="text" class="form-control" placeholder="班级" id="clazz">--%>
                        <%--</div>--%>
                        <%--<div class="col-md-2 col-sm-0 col-xs-0"></div>--%>
                        <%--<br>--%>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                        <button type="button" class="col-md-8 col-sm-12 col-xs-12 btn btn-primary "
                                id="registerBT" onclick="register()">注册
                        </button>
                        <span id="registerMessage" class="g-color-red"></span>
                        <div class="col-md-2 col-sm-0 col-xs-0"></div>
                    </div>
                    <hr>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 做题模态框 -->
<div class="modal fade" id="titleModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content" style="height:560px">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true" onclick="exitPractice()">x
                </button>
                <label class="modal-title" id="subjectTitle"></label>
            </div>
            <div class="modal-body" style="overflow-y: scroll; height: 500px;">
                <form class="bs-example bs-example-form" method="post">
                    <div id="title"></div>
                    <div style="text-align: center;">
                        <button type="button" class="btn btn-primary"
                                style="width: 100px; text-align: center" onclick="submitPractice()" id="submitTitleBT">提交
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 考试模态框 -->
<div class="modal fade" id="testModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content" style="height:560px">
            <div class="modal-header">
                <%--点击关闭的地方--%>
                <button type="button" class="close"
                        data-toggle="modal" data-target="#exitModal" onclick="exitModal()">x
                </button>
                    <%--这个一直消失状态呀--%>
                <label class="modal-title" id="testId" style="display: none"></label>
                <%--计时器的地方--%>
                <div id="testCountMsg" class="HotDate">
                    <span id="test_t_h">00时</span> <span id="test_t_m">00分</span>
                    <span id="test_t_s">00秒</span>
                </div>
            </div>
            <div class="modal-body" style="height:500px;overflow: auto">
                <form class="bs-example bs-example-form" method="post">
                    <div id="testTitle"></div>
                    <div style="text-align: center;">
                        <button type="button" class="btn btn-primary"
                                id="submitTestBT"
                                style="width: 100px; text-align: center" onclick="submitAll()">提交
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 退出按钮模态框 -->
<div class="modal fade" id="exitModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">×
                </button>
                <h4 class="modal-title" id="">
                    退出
                </h4>
            </div>
            <div class="modal-body">
                确认退出本次考试?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal" onclick="exitAll()" aria-hidden="true">退出
                </button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="cancel()" aria-hidden="true">
                    取消
                </button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!--通知模态框-->
<div class="modal fade" id="noticeModal" data-backdrop="static">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">x
                </button>
                <label class="modal-title" id="noticeTitle"></label>
            </div>
            <div class="modal-body" style="overflow-y: scroll; height: 400px;">
                <div id="noticeContent"></div>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!--/.modal-->

<!-- 顶栏 -->
<nav
        class="one-page-header navbar navbar-default navbar-fixed-top homeapp-header"
        data-role="navigation">
    <div class="container">
        <div class="menu-container page-scroll">
            <a class="navbar-brand" href="#body"> <img alt="韩山师范学院"
                                                       src="img/logo1.png">
            </a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>


        <!-- 导航栏 -->
        <div class="collapse navbar-collapse navbar-ex1-collapse" id="navbar-collapse">
            <div class="col-sm-3 col-xs-3 col-md-10 menu-container">
                <ul class="nav navbar-nav ">
                    <li class="page-scroll"><a href="#notice">通知公告</a></li>
                    <li class="page-scroll"><a href="#questionsbank">专项练习</a></li>
                    <li class="page-scroll"><a href="#examination">参与测试</a></li>
                    <li class="page-scroll"><a href="#ranking">测试成绩</a></li>
                    <li class="page-scroll"><a href="#contact">联系我们</a></li>
                    <li class="page-scroll"><a href="https://q.yiban.cn/app/index/appid/208342">申报入口</a></li>
                    <%--<li><form action="/account/adminLoginForm" method="get"><button class="btn-u btn-u-green btn-u-upper rounded-2x" type="submit">后台管理</button></form></li>--%>
                    <li id="login-li"><a
                            class="btn-u btn-u-lg btn-u-green btn-u-upper rounded-2x"
                            data-toggle="modal"
                            data-target="#loginModal" style="text-align: center">登录</a></li>
                    <li id="register-li"><a
                            class="btn-u btn-u-lg btn-u-green btn-u-upper rounded-2x"
                            data-toggle="modal"
                            data-target="#registerModal" style="text-align: center">注册</a></li>
                    <li style="display:none" id="personal-li"><a type="button"
                                                                 class="btn-u btn-u-lg btn-u-green btn-u-upper rounded-2x"
                                                                 data-toggle="personal" id="personal"
                                                                 onclick="personalPopover()" style="text-align: center">个人</a></li>
                </ul>
            </div>
        </div>
        <!-- 导航栏结束 -->
    </div>
    <!-- /.container --> </nav>
<!-- 顶栏结束 -->

<!-- 公告模块 -->
<section class="promo-section" id="intro">
    <div class="interactive-slider-v2">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-sm-12 col-xs-12 col-md-offset-1 promo-info">
                    <h1 style='font-size: 20px; font-famliy: "黑体";'>
                        韩山师范学院大学生网络安全知识竞赛系统
                    </h1>
                    <p>
                        <strong>韩山师范学院大学生网络安全知识竞赛</strong>
                        以《党的十九大报告》、《习近平总书记在网络安全和信息化工作座谈会上的讲话》、
                        《2018年两会工作报告》、《中华人民共和国网络安全法》等有关网络安全内容为纲，以电子政务安全、金融网络安全、电信网络安全、大学生上网安全、
                        防范网络欺诈、网络安全技术等几个方面的内容为主，增强中南学子网络安全意识，
                        引导广大学子树立正确的网络安全观，普及网络安全知识，提高网络素养，
                        营造健康文明的网络环境，共同维护国家网络安全。
                    </p>
                    <%--<p class="popover-options">--%>
                        <%--<a type="button" class="btn btn-primary btn-lg"><img--%>
                                <%--src="img/phone.png" width="25" height="22"> 手机App端</a>--%>
                    <%--</p>--%>
                    <%--<script>--%>
                        <%--$(function () {--%>
                            <%--$(".popover-options a")--%>
                                <%--.popover(--%>
                                    <%--{--%>
                                        <%--trigger: 'hover',--%>
                                        <%--html: true,--%>
                                        <%--content: "<img src='img/erWeiMa.jpg' width='120' height='120'>"--%>
                                    <%--});--%>
                        <%--});--%>
                    <%--</script>--%>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12 banner-img overflow-h">
                    <img class="img-responsive animated slideInUp wow animated"
                         style="visibility: visible; animation-name: slideInUp;" alt="网络安全"
                         src="img/schoolrules.png">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 公告模块结束 -->

<!-- 通知栏 -->
<section id="notice">
    <div class="container-fluid with-bg-2">
        <%--<div class="container margin-bottom-5">--%>
        <div>
            <div class="how-it-works" style="padding-top: 56px">
                <%--<div class="g-heading-v10 g-mb-65 text-center">--%>
                <div class="g-heading-v10 text-center">
                    <h3 class="g-color-white">
                        <strong class="block-name">通知公告</strong>
                    </h3>
                    <br>
                    <p>初赛面向  <strong>全体在校本科生及研究生</strong></p>
                    <br>
                    <p>现系统提供<strong>模拟自测</strong>，初赛考试将于<strong>5月1日—5月10日开放</strong></p>
                    <br>
                    <p>模拟自测可以重复进行，初赛<strong>每个账号只能考一次</strong></p>
                    <br>
                    <p>初赛试题与模拟自测的形式、题源完全相同</p>
                    <br>
                    <p>选择题 20题2分/题   判断题 10题2分/题  多选题 10题4分/题</p>
                    <br>
                    <p>单次考试时间为<strong> 20 分钟</strong></p>
                </div>
                <%--这里需要来修改前端，或者干脆就不要了--%>
                <%--<div class="col-md-5">--%>
                    <%--<div class="carousel slide carousel-v1" id="myCarousel">--%>
                        <%--<div class="carousel-inner" id="pictureNotice">--%>
                            <%--<div class="item active">--%>
                                <%--&lt;%&ndash;<img alt="" src="img/2.jpg">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<div class="carousel-caption">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<p>1234</p>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <%--<div class="carousel-arrow">--%>
                            <%--&lt;%&ndash;<a class="left carousel-control" href="#myCarousel"&ndash;%&gt;--%>
                               <%--&lt;%&ndash;data-slide="prev"> <i class="fa fa-angle-left"></i>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</a> <a class="right carousel-control" href="#myCarousel"&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;data-slide="next"> <i class="fa fa-angle-right"></i>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-7">--%>
                    <%--&lt;%&ndash;<table style="font-size: 16px">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<tbody id="textNotice">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</tbody>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</table>&ndash;%&gt;--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</section>
<!-- 通知栏结束 -->

<!-- 题库考试  -->
<section id="questionsbank">
    <div class="container">
        <div class="g-pt-90 g-pb-70">
            <div class="g-heading-v10 g-mb-65 text-center">
                <h3>
                    <strong class="block-name">专项练习</strong>
                </h3>
                <p>请选择下方的按钮进行专项练习</p>
            </div>
            <div class="row equal-height-columns">
                <div class="col-md-4 benefit-box animated fadeIn wow animated"
                     style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"
                     data-wow-duration="1.5s">
                    <div class="benefit equal-height-column"
                         style="height: 300px; width: 310px;">
                        <i class="fa  fa-database fa-3x"></i>
                        <h2>网络安全知识单选练习</h2>
                        <ul class="list-unstyled">
                            <li id="isSimulationLogin" class="g-color-red">&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-footer">
                            <a type="button"
                               class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                               data-toggle="" data-target=""
                               id="enterSimulation"
                              onclick="enterTitle()"
                            >开始练习</a>
                            </div>
                    </div>
                </div>
                <div class="col-md-4 benefit-box animated fadeIn wow animated"
                     style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"
                     data-wow-duration="1.5s">
                    <div class="benefit equal-height-column"
                         style="height: 300px; width: 310px;">
                        <i class="fa  fa-database fa-3x"></i>
                        <h2>网络安全知识判断练习</h2>
                        <ul class="list-unstyled">
                            <li id="isSimulationBlankLogin" class="g-color-red">&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-footer">
                            <a type="button"
                               class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                               data-toggle="" data-target=""
                               id="enterSimulationBlank"
                               onclick="enterBlankTitle()"
                            >开始练习</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 benefit-box animated fadeIn wow animated"
                     style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"
                     data-wow-duration="1.5s">
                    <div class="benefit equal-height-column"
                         style="height: 300px; width: 310px;">
                        <i class="fa  fa-database fa-3x"></i>
                        <h2>网络安全知识多选练习</h2>
                        <ul class="list-unstyled">
                            <li id="isSimulationShortLogin" class="g-color-red">&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-footer">
                            <a type="button"
                               class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                               data-toggle="" data-target=""
                               id="enterSimulationShort"
                               onclick="enterShortTitle()"
                            >开始练习</a>
                        </div>
                    </div>
                </div>
                <%--<div class="col-md-4 benefit-box animated fadeIn wow animated"--%>
                     <%--style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"--%>
                     <%--data-wow-duration="1.5s">--%>
                    <%--<div class="benefit equal-height-column"--%>
                         <%--style="height: 300px; width: 310px;">--%>
                        <%--<i class="fa  fa-database fa-3x"></i>--%>
                        <%--<h3>校规校纪模拟考试</h3>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled">--%>
                            <%--<li id="isSimulationJudgeLogin" class="g-color-red">&nbsp;</li>--%>
                        <%--</ul>--%>
                        <%--<div class="pricing-v9-footer">--%>
                            <%--<a type="button"--%>
                               <%--class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"--%>
                               <%--data-toggle="" data-target=""--%>
                               <%--id="enterSimulationJudge"--%>
                               <%--onclick="enterJudgeTitle()"--%>
                            <%-->判断练习</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 benefit-box animated fadeIn wow animated"--%>
                     <%--style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s; animation-delay: 0.5s;"--%>
                     <%--data-wow-duration="1.5s" data-wow-delay=".5s">--%>
                    <%--<div class="benefit equal-height-column"--%>
                         <%--style="height: 300px; width: 310px;">--%>
                        <%--<i class="fa  fa-database fa-3x"></i>--%>
                        <%--<h3>单选题错题重做</h3>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled">--%>
                            <%--<li id="isWrongTitleLogin" class="g-color-red">&nbsp;</li>--%>
                        <%--</ul>--%>
                        <%--<div class="pricing-v9-footer">--%>
                            <%--<a--%>
                                    <%--class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"--%>
                                    <%--id="enterWrongTitle"--%>
                                    <%--data-toggle="" data-target="" onclick="enterWrongTitle()"--%>
                            <%-->进入</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 benefit-box animated fadeIn wow animated"--%>
                     <%--style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"--%>
                     <%--data-wow-duration="1.5s">--%>
                    <%--<div class="benefit equal-height-column"--%>
                         <%--style="height: 300px; width: 310px;">--%>
                        <%--<i class="fa  fa-database fa-3x"></i>--%>
                        <%--<h3>校规校纪模拟考试</h3>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled">--%>
                            <%--<li id="isSimulationShortLogin" class="g-color-red">&nbsp;</li>--%>
                        <%--</ul>--%>
                        <%--<div class="pricing-v9-footer">--%>
                            <%--<a type="button"--%>
                               <%--class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"--%>
                               <%--data-toggle="" data-target=""--%>
                               <%--id="enterSimulationShort"--%>
                               <%--onclick="enterShortTitle()"--%>
                            <%-->简答练习</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 benefit-box animated fadeIn wow animated"--%>
                     <%--style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"--%>
                     <%--data-wow-duration="1.5s">--%>
                    <%--<div class="benefit equal-height-column"--%>
                         <%--style="height: 300px; width: 310px;">--%>
                        <%--<i class="fa  fa-database fa-3x"></i>--%>
                        <%--<h3>判断题错题重做</h3>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled">--%>
                            <%--<li id="isSimulationCaseLogin" class="g-color-red">&nbsp;</li>--%>
                        <%--</ul>--%>
                        <%--<div class="pricing-v9-footer">--%>
                            <%--<a type="button"--%>
                               <%--class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"--%>
                               <%--data-toggle="" data-target=""--%>
                               <%--id="enterSimulationCase"--%>
                               <%--onclick=""--%>
                            <%-->暂不可用</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="col-md-4 benefit-box animated fadeIn wow animated"--%>
                     <%--style="visibility: visible; animation-name: fadeIn; animation-duration: 1.5s;"--%>
                     <%--data-wow-duration="1.5s">--%>
                    <%--<div class="benefit equal-height-column"--%>
                         <%--style="height: 300px; width: 310px;">--%>
                        <%--<i class="fa  fa-database fa-3x"></i>--%>
                        <%--<h3>多选题错题重做</h3>--%>
                        <%--<br>--%>
                        <%--<ul class="list-unstyled">--%>
                            <%--<li id="isSimulationDiscussLogin" class="g-color-red">&nbsp;</li>--%>
                        <%--</ul>--%>
                        <%--<div class="pricing-v9-footer">--%>
                            <%--<a type="button"--%>
                               <%--class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"--%>
                               <%--data-toggle="" data-target=""--%>
                               <%--id="enterSimulationDiscuss"--%>
                               <%--onclick=""--%>
                            <%-->暂不可用</a>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>

            </div>
        </div>
    </div>
</section>
<!-- 题库结束  -->

<!-- 考试竞赛-->
<section id="examination">
    <div class="container-fluid">
        <div class="subscribe">
            <div class="g-heading-v10 g-mb-45">
                <h3>
                    <strong class="block-name">参与测试</strong>
                </h3>
            </div>
            <div class="container">
                <div class="g-heading-v7 g-mb-40">
                    <p>请在下方的竞赛报名处，浏览必须的考试信息并点击报名按钮完成竞赛报名</p>
                    <p>请在下方的模拟自测处选择进入测试，浏览必须的考试信息并在规定时间内完成测试</p>
                </div>
                <div class="col-md-2 col-xs-0 col-2xs-0 g-mb-30"></div>
                <!-- /考试项目 -->
                <div class="col-md-4 col-xs-6 col-2xs-12 g-mb-30">
                    <div class="pricing-v9 rounded-2x hover-effect">
                        <div class="pricing-v9-head">
                            <h3 class="h3">
                                <span class="g-color-default" id="testInfo">模拟自测</span>
                            </h3>
                        </div>
                        <ul class="list-unstyled">
                            <li id="test_name">&nbsp;</li>
                            <li id="testTime">&nbsp;</li>
                            <li id="testGrade">&nbsp;</li>
                            <li id="testDuration">&nbsp;</li>
                            <%--<li>参考书目：《韩山师范学院本科生手册》</li>--%>
                            <li>注意：答题前请先登录</li>
                            <li class="g-color-red" id="isLogin">&nbsp;</li>
                            <li>&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-price">
                            <%--是否考试：<span class="g-color-default" id="isTested">未登录</span>--%>
                            测试可重复进行
                        </div>
                            <div class="pricing-v9-footer" id="yesToTest">
                            <a
                                    class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                                    data-toggle="" data-target="" id="startTestModal"
                                    onclick="enterTest()">进入</a>
                        </div>
                        <div class="pricing-v9-footer" id="noToTest" style="display: none;">
                            <a      id="tested"
                                    class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                            >已考试</a>
                        </div>
                    </div>
                </div>

                <!-- /考试项目 -->
                <!-- 竞赛项目 -->

                <div class="col-md-4 col-xs-6 col-2xs-12 g-mb-30">
                    <div class="pricing-v9 rounded-2x hover-effect">
                        <div class="pricing-v9-head">
                            <h3 class="h3">
                                <span class="g-color-default" id="contestInfo">初赛考试</span>
                            </h3>
                        </div>
                        <ul class="list-unstyled">
                            <li id="contest_name">&nbsp;</li>
                            <li id="contestTime">&nbsp;</li>
                            <li id="contestGrade">&nbsp;</li>
                            <li id="contestDuration">&nbsp;</li>
                            <%--<li>参考书目：《韩山师范学院本科生手册》</li>--%>
                            <li>注意：答题前请先登录</li>
                            <li id="isContestLogin" class="g-color-red">&nbsp;</li>
                            <li id="isContested" class="g-color-red">&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-price">
                            是否报名：<span class="g-color-default" id="isRegisted">未登录</span>
                        </div>
                        <div class="pricing-v9-footer" id="regist">
                            <a
                                    class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                                    onclick="regist()">报名</a>
                        </div>
                        <div class="pricing-v9-footer" id="enter" style="display:none">
                            <a
                                    class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                                    id="startContestModal"
                                    data-toggle="" data-target=""
                                    onclick="enterContest()">进入</a>
                        </div>
                        <div class="pricing-v9-footer" id="notBegin" style="display:none">
                            <a
                                    class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                                    disabled="true">未开始</a>
                        </div>
                        <div class="pricing-v9-footer" id="isEnd" style="display:none">
                            <a type="button"
                               class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x"
                            >已结束</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 考试报名结束 -->

<!-- 考试排名 -->
<section id="ranking">
    <div class="container-fluid">
        <div class="subscribe">
            <div class="g-heading-v10 g-mb-45">
                <h3>
                    <strong class="block-name">测试成绩</strong>
                </h3>
            </div>
            <div class="container">
                <div class="g-heading-v7 g-mb-40">
                    <p>请在下方了解已参加过的考试的成绩信息</p>
                </div>
                <div class="col-md-2 col-xs-0 col-2xs-0 g-mb-30"></div>
                <!-- 考试成绩项目 -->
                <div class="col-md-4 col-xs-6 col-2xs-12 g-mb-30">
                    <div class="pricing-v9 rounded-2x hover-effect">
                        <div class="pricing-v9-head">
                            <h3 class="h3">
                                <span class="g-color-default">模拟自测</span>
                            </h3>
                        </div>
                        <ul class="list-unstyled">
                            <li id="testName"></li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                        </ul>
                        <div class="pricing-v9-price">
                            你的上一次有效测试成绩：<span class="g-color-default" id="testRecord">--</span><br><br>
                            <a class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x" id="" data-toggle="" data-target="" onclick="" style="visibility:hidden">这是假的</a>
                        </div>
                    </div>
                </div>
                <!-- 考试排名项目结束 -->
                <!-- 考试成绩项目 -->
                <div class="col-md-4 col-xs-6 col-2xs-12 g-mb-30">
                    <div class="pricing-v9 rounded-2x hover-effect">
                        <div class="pricing-v9-head">
                            <h3 class="h3">
                                <span class="g-color-default">初赛考试</span>
                            </h3>
                        </div>
                        <ul class="list-unstyled">
                            <li id="contestName"></li>
                            <li id="rank">当前排名:--</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>&nbsp;</li>
                            <li>成绩高于70分可获得电子证书</li>
                            <li>点击导出后右键保存或截屏即可</li>
                        </ul>
                        <div class="pricing-v9-price">
                            你的成绩：<span class="g-color-default" id="contestRecord">--</span><br><br>
                            <a class="btn-u btn-u-lg btn-u-light-green btn-u-upper rounded-2x" id="" data-toggle="" data-target="" onclick="Download()">导出证书</a>
                        </div>
                    </div>
                </div>
                <!-- 考试排名项目结束 -->
            </div>
        </div>
    </div>
</section>
<!-- 考试排名结束 -->
<div class="zs" style="text-align:center;display:none">   
<canvas id="cvs" width="1024" height="723" style="position:absolute">
 here is image
</canvas>
<img id="img" src="img/zhengshu.png" width="1024" height="723"  crossorigin="anonymous">
</div>

<hr>
<!-- 页脚 -->
<section id="contact">
    <div class="container-fluid with-bg-2 no-side-padding">
        <div class="container">
            <div class="footer">
                <div class="row">
                    <div class="col-md-5">
                        <div class="g-heading-v10 g-mb-65">
                            <h3 class="g-color-white">
                                <strong class="block-name">联系我们</strong>
                            </h3>
                            <p>您可以通过填写该表格向我们发送问题或建议，我们很想听听你的意见。我们会根据意见进行完善。</p>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="sky-form contact-style" id="sky-form3">
                            <fieldset id="feedback">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-0">
                                        <div class="margin-bottom-30">
                                            <input name="name" class="form-control" id="name" type="text"
                                                   placeholder="姓名">
                                        </div>
                                        <div class="margin-bottom-30">
                                            <input name="email" class="form-control" id="email"
                                                   type="text" placeholder="邮箱*">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-md-offset-0">
                                        <div class="margin-bottom-30">
											<textarea name="message"
                                                      class="form-control g-textarea-noresize" id="message"
                                                      placeholder="消息内容" rows="4"></textarea>
                                        </div>
                                        <label id="submitMessage"></label>
                                        <p>
                                            <button class="btn-u btn-u-lg btn-u-upper rounded-2x"
                                                     onclick="feedbackClick()">提交
                                            </button>
                                        </p>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="message">
                                <i class="rounded-x fa fa-check"></i>
                                <p>提交成功</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="cr-left">
                        <p>
                            <strong>易班平台</strong>：韩山师范学院大学生网络安全知识竞赛
                        </p>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                    <div class="cr-right">
                        <ul class="list-unstyled list-inline cr-list">
                            <li class="page-scroll"><a class="rounded" href="#notice"><span
                                    class="glyphicon glyphicon-pushpin"></span></a></li>
                            <li><a class="rounded" href="#"><span
                                    class="glyphicon glyphicon-link"></span></a></li>
                            <li class="popover-options"><a class="rounded"
                                                           data-placement="top"><span
                                    class="glyphicon glyphicon-qrcode"></span></a>
                                <script>
                                    $(function () {
                                        $(".popover-options a")
                                            .popover(
                                                {
                                                    trigger: 'hover',
                                                    html: true,
                                                    content: "<img src='img/erWeiMa.jpg' width='120' height='120'>"
                                                });
                                    });
                                </script>
                            </li>
                            <li><a class="rounded" href="mailto:????@????.com"><span
                                    class="glyphicon glyphicon-envelope"></span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 页脚结束 -->

<!-- JS Implementing Plugins -->
<script src="plugins/owl-carousel2/owl.carousel.min.js"></script>
<script>
function draw(){
        $(".zs").css("display","block");
        var username = getAccount().username;
        var college = getAccount().college;
        var nob = getAccount().studentId.toString();
        var r = confirm("您是研究生吗？");
        if (r == true){
            if (nob.length == 8) {nob = 0  +nob}
        }
          else{
            if (nob.length == 9) {nob = 0 + nob};
            if (nob.length == 13) {
                alphabet= String.fromCharCode(64 + parseInt(nob.substr(1, 2))); 
                nob = alphabet + nob.slice("3");
            };
        };
        var img = document.getElementById("img");
        var canvas=document.getElementById("cvs");
        var ctx=canvas.getContext("2d");
        ctx.drawImage(img,0,0);
        //var username= "username";
        ctx.font="25px 黑体 ";
        ctx.fillStyle = "rgb(0,0,0)";
        ctx.fillText(username,490,280);
        //var nob="山地车";   
        ctx.font="25px 黑体";
        ctx.fillStyle = "rgb(0,0,0)";
        ctx.fillText(nob,720,250);
        //var college="阿三";   
        ctx.font="25px 黑体";
        ctx.fillStyle = "rgb(0,0,0)";
        ctx.fillText(college,160,280);
        }

    function Download(){
        var score = getScore();
        if (score >= 70) {
              draw();
              $("#img").css("visibility","hidden");
            // var type ='png';
            // var d=document.getElementById("cvs");
            // var imgdata=d.toDataURL(type);
            // var fixtype=function(type){
            //     type=type.toLocaleLowerCase().replace(/jpg/i,'jpeg');
            //     var r=type.match(/png|jpeg|bmp|gif/)[0];
            //     return 'image/'+r;
            // };
            // imgdata=imgdata.replace(fixtype(type),'image/octet-stream');
            // var savaFile=function(data,filename)
            // {
            //     var save_link=document.createElementNS('http://www.w3.org/1999/xhtml', 'a');
            //     save_link.href=data;
            //     save_link.download=filename;
            //     var event=document.createEvent('MouseEvents');
            //     event.initMouseEvent('click',true,false,window,0,0,0,0,0,false,false,false,false,0,null);
            //     save_link.dispatchEvent(event);
            // };
            // var filename=''+new Date().getDate()+'.'+type;  
            // savaFile(imgdata,filename);  
            }
                else{
                    alert("很抱歉，成绩不足70分，无法生成证书！")
                };
        
        };
</script>
</body>
</html>