<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="TeacherMemRobot.aspx.cs" Inherits="TeacherMemRobot" %>

<!DOCTYPE html>

<!--[if IE 8]>			<html class="ie ie8"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9"> <![endif]-->
<!--[if gt IE 9]><!-->
<html>
<!--<![endif]-->
<head runat="server">
    <meta charset="utf-8">
    <title>个人中心首页</title>
    <!-- Library CSS -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts/font-awesome/css/font-awesome.css">
    <link rel="stylesheet" href="css/animations.css" media="screen">
    <link rel="stylesheet" href="css/superfish.css" media="screen">
    <link rel="stylesheet" href="css/prettyPhoto.css" media="screen">
    <!-- Theme CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Skin -->
    <link rel="stylesheet" href="css/colors/blue.css" id="colors">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/theme-responsive.css">
    <!-- Switcher CSS -->
    <link href="css/switcher.css" rel="stylesheet">
    <link href="css/spectrum.css" rel="stylesheet">
    <!-- Favicons -->
    <link rel="shortcut icon" href="img/ico/favicon.ico">
    <link rel="apple-touch-icon" href="img/ico/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/ico/apple-touch-icon-72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/ico/apple-touch-icon-114.png">
    <link rel="apple-touch-icon" sizes="144x144" href="img/ico/apple-touch-icon-144.png">
    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
      <script src="js/respond.min.js"></script>
      <![endif]-->
    <!--[if IE]>
      <link rel="stylesheet" href="css/ie.css">
      <![endif]-->
    <!-- Custom styles for this template -->
    <link href="css/flat-ui.css" rel="stylesheet" type="text/css">

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/tts.js"></script>
</head>
<body class="page" onload="mobile()">
    <form id="Form1" class="form-inline" role="form" onsubmit="return false;" runat="server">

        <script type="text/javascript">

            function mobile() {
                var browser_class = navigator.userAgent;
                var browser_class_name1 = browser_class.match("Mobile");
                var browser_class_name2 = browser_class.match("mobile");
                var location_url = window.location.href;
                if (browser_class_name1 != null || browser_class_name2 != null) {
                    if (location_url.match("wap") == null) {
                        window.location.href = "mobk/index.html";
                    }
                } else {
                    if (location_url.match("3g") != null || location_url.match("wap") != null) {
                        window.location.href = "mobk/index.html";
                    }
                }
            }



            var socket;
            var content = 'Hi there!';
            var type;
            if (!window.WebSocket) {
                window.WebSocket = window.MozWebSocket;
            }

            if (window.WebSocket) {
                socket = new WebSocket("ws://www.mobk.net:8080/websocket");
                socket.onmessage = function (event) {
                    var ta = document.getElementById('responseText');
                    if (type === 'hint') {
                        if (/.*[\u4e00-\u9fa5]+.*$/.test(event.data)) {
                            document.getElementById('speech_text_input').value = 'hi';
                        } else {
                            document.getElementById('speech_text_input').value = event.data;
                        }

                    } else {
                        ta.value = ta.value + '\n' + event.data;
                        content = event.data;


                        document.getElementById('responseText').scrollTop = document.getElementById('responseText').scrollHeight;
                    }

                };
                socket.onopen = function (event) {
                    var ta = document.getElementById('responseText');
                    ta.value = "Hi there!";
                };
                socket.onclose = function (event) {
                    var ta = document.getElementById('responseText');
                    ta.value = ta.value + "聊累啦，本次聊天结束啦！下次再来找我哦~";
                };
            } else {
                alert("您的浏览器不支持本网站的功能哦，请更换支持html5的浏览器吧");
            }


            // Send Websocket data  
            function send(message) {
                if (!window.WebSocket) { return; }
                if (socket.readyState == WebSocket.OPEN) {
                    socket.send(message);
                } else {
                    alert("哎呦，我在休息呢，重启一下我吧");
                }
            }
            function chat(message) {
                type = 'chat'
                send(message);
            }
            function hint() {
                type = 'hint'
                send(content);
            }
        </script>

        <div class="wrap">
            <!-- Header Start -->
            <header id="header">
                <!-- Header Top Bar Start -->
                <div class="top-bar">
                    <div class="slidedown collapse">
                        <div class="container">
                            <div class="phone-email pull-left">
                                <i class="icon-link"></i>欢迎回来，Student&nbsp;&nbsp;&nbsp;
                       <a class="sef" href="member-account-main.html"><font color="#B9B9FF" size="3" face="幼圆"><b>个人中心</b></font></a>
                            </div>
                            <div class="pull-right">
                                <ul class="social pull-left">
                                    <li class="facebook"><a href="#"><i class="icon-facebook"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="icon-twitter"></i></a></li>
                                    <li class="dribbble"><a href="#"><i class="icon-dribbble"></i></a></li>
                                    <li class="linkedin"><a href="#"><i class="icon-linkedin"></i></a></li>
                                    <li class="rss"><a href="#"><i class="icon-rss"></i></a></li>
                                </ul>
                                <div id="search-form" class="pull-right">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header Top Bar End -->
                <!-- Main Header Start -->
                <div class="main-header">
                    <div class="container">
                        <!-- TopNav Start -->
                        <div class="topnav navbar-header">
                            <a class="navbar-toggle down-button" data-toggle="collapse" data-target=".slidedown">
                                <i class="icon-angle-down icon-current"></i>
                            </a>
                        </div>
                        <!-- TopNav End -->
                        <!-- Logo Start -->
                        <div class="logo pull-left">
                            <h1>
                                <a href="index.html">
                                    <img src="img/logo.png" alt="viki" width="125" height="60">
                                </a>
                            </h1>
                        </div>
                        <!-- Logo End -->
                        <!-- Mobile Menu Start -->
                        <div class="mobile navbar-header">
                            <a class="navbar-toggle" data-toggle="collapse" href=".html">
                                <i class="icon-reorder icon-2x"></i>
                            </a>
                        </div>
                        <!-- Mobile Menu End -->
                        <!-- Menu Start -->
                        <nav class="collapse navbar-collapse menu">
                            <ul class="nav navbar-nav sf-menu">
                                <li>
                                    <a href="index.html">首页</a>
                                </li>
                                <li>
                                    <a href="teachers.html">外教团队
                                    </a>
                                </li>
                                <li>
                                    <a href="text.html" class="sf-with-ul">课程教材 
                                    </a>
                                </li>
                                <li>
                                    <a href="celebrity.html">名人堂</a>
                                </li>
                                <li><a href="member-testing.html">水平自测</a></li>
                                <li>
                                    <a href="about.html" class="sf-with-ul">关于我们
                           <span class="sf-sub-indicator">
                               <i class="icon-angle-down "></i>
                           </span>
                                    </a>
                                    <ul>
                                        <li><a href="about.html" class="sf-with-ul">关于我们</a></li>
                                        <li><a href="strength.html" class="sf-with-ul">Viki Chat的优势</a></li>
                                        <li><a href="solution.html" class="sf-with-ul">Viki Chat的理念和解决方案</a></li>
                                    </ul>
                                </li>


                            </ul>
                        </nav>
                        <!-- Menu End -->
                    </div>
                </div>
                <!-- Main Header End -->
            </header>
            <!-- Header End -->
            <!-- Content Start -->
            <div id="main">

                <!-- Main Content start-->
                <div class="content">

                    <div class="container" style="padding-bottom: 100px">
                        <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                        <script> window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "嘘！我介绍给你一个洋妞，她可以24小时随叫随到陪你聊天", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "1", "bdSize": "24" }, "share": {}, "image": { "viewList": ["qzone", "tsina", "tqq", "renren", "weixin"], "viewText": "嘘！我介绍给你一个洋妞，她可以24小时随叫随到陪你聊天", "viewSize": "24" }, "selectShare": { "bdContainerClass": null, "bdSelectMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"] } }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>

                        <div class="alert alert-danger fade in" id="alert_support" style="display: none;">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h4>啊哦，你的浏览器不支持语音输入哦</h4>
                            </br>
			       
			        
			        <p>
                        <a class="btn btn-danger" href="http://www.google.com/intl/zh-CN/chrome/">前往官网下载Chrome浏览器</a>
                    </p>
                        </div>


                        <div class="login">
                            <div class="login-screen">
                                <div class="login-icon">
                                    <asp:Image ID="Image1" runat="server" />
                                    <asp:Image ID="ImageT" ImageUrl="~/img/teacher/teacher-1@2x.png" alt="Welcome to Mail App" runat="server" />
                                    <h4><small>
                                        <center><asp:Label ID="LabelName" runat="server" Text="VIKI" /></center>
                                    </small></h4>
                                </div>

                                <div class="login-form">
                                    <div class="control-group">
                                        <textarea id="responseText" style="width: 320px; height: 200px;"></textarea>
                                    </div>

                                    <!--
<div class="control-group">
	              <input type="password" class="login-field" value="" placeholder="Password" id="login-pass">
	            </div>
-->
                                </div>
                            </div>
                        </div>

                        <div>
                            <center>

				<!--
<audio controls="controls">
				  Your browser does not support the <code>audio</code> element.
				  <source src="foo.wav" type="audio/wav">
				</audio>
-->
				<audio id="audiotag1" src="audio/example.wav" preload="auto"></audio>
				<div id="google_target"><!-- style="display:none;" -->
				    
				    	
						<input id="speech_text_input" type="text" name="message" placeholder="请输入您要说的内容吧" class="form-control" style="width:635px;height:40px;" speech x-webkit-speech="" />
						<div>
				        <button onclick="check();" class="btn btn-success">发送</button>
				        <button class="btn btn-info" onclick="hint();">憋不出来?_?</button>
						</div>
					
				</div>
				
				<div id="other_target" class="form-inline" style="display:none;">
					<input id="nospeech_text_input" type="text" name="message" placeholder="请输入您要说的内容吧" class="form-control" style="width:635px;height:24px;" />
					<button class="btn btn-large btn-success" onclick="downloadChrome();">发送</button>
					
				</div>
				
			    
			</center>
                        </div>



                    </div>
                </div>

            </div>

        </div>
        <br /><br/><br/>
        <br />
        <br />


        <!-- Main Content end-->

        <!-- Content End -->
        <!-- Footer Start -->
        <footer id="footer">
        </footer>
        <!-- Scroll To Top -->
        <a href="#" class="scrollup"><i class="icon-angle-up"></i></a>

        <!-- Wrap End -->
        <div style="display: none">
            <asp:TextBox ID="Tid" runat="server" ClientIDMode="Static" Text="11" />
        </div>
        <!-- The Scripts -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/jquery.parallax.js"></script>
        <script src="js/modernizr-2.6.2.min.js"></script>
        <script src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
        <script src="js/jquery.nivo.slider.pack.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/superfish.js"></script>
        <script src="js/tweetMachine.js"></script>
        <script src="js/tytabs.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/jflickrfeed.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/spectrum.js"></script>
        <script src="js/switcher.js"></script>
        <script src="js/jquery.gmap.min.js"></script>
        <script src="js/custom.js"></script>
        <div style="display: none">
            <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script>
        </div>
        <script type="text/javascript" src="js/google.tts.min.js"></script>
        <script type="text/javascript">

            var google_target = document.getElementById('google_target');
            var other_target = document.getElementById('other_target');
            var alert_target = document.getElementById('alert_support');

            if (document.createElement("input").webkitSpeech === undefined) {

                alert_target.style.display = "block";
            } else {

            }
        </script>
        <script type="text/javascript">
            $(document).ready(function () {

            });
            function check() {
                var tid = $("#Tid").val();
                $.ajax({
                    url: "TeacherMemRobot.aspx?act=check&tid=" + tid,
                    success: function (data) {
                        if (data != "")
                            alert(data);
                        else
                            chat($("#speech_text_input").val());
                    }
                });

            }
        </script>
    </form>
</body>
</html>
