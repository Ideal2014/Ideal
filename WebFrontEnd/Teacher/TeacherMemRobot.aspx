<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherMemRobot.aspx.cs" Inherits="Teacher_TeacherMemRobot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
    <script type="text/javascript">

        function mobile() {
            var browser_class = navigator.userAgent;
            var browser_class_name1 = browser_class.match("Mobile");
            var browser_class_name2 = browser_class.match("mobile");
            var location_url = window.location.href;
            if (browser_class_name1 != null || browser_class_name2 != null) {
                if (location_url.match("wap") == null) {
                    window.location.href = "mobk/../Home/Home.aspx";
                }
            } else {
                if (location_url.match("3g") != null || location_url.match("wap") != null) {
                    window.location.href = "mobk/../Home/Home.aspx";
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

                    TTS.say(content);

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

        function tts() {
            var audio = new Audio();
            if (content == undefined) {
                content = 'Please talk to me';
            }
            content = content.toString().replace(/[\ |\~|\`|\!|\@|\#|\$|\%|\^|\&|\*|\(|\)|\-|\_|\+|\=|\||\\|\[|\]|\{|\}|\;|\:|\"|\'|\,|\<|\.|\>|\/|\?]/g, " ");
            alert(content);
            audio.src = 'http://translate.google.com/translate_tts?ie=utf-8&tl=en&q=' + encodeURIComponent(content);
            audio.play();

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <!-- Content Start -->
    <div id="main">

        <!-- Main Content start-->
        <div class="content">

            <div class="container" style="padding-bottom: 100px">
                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信"></a></div>
                <script> window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "嘘！我介绍给你一个洋妞，她可以24小时随叫随到陪你聊天", "bdMini": "2", "bdMiniList": false, "bdPic": "", "bdStyle": "1", "bdSize": "24" }, "share": {}, "image": { "viewList": ["qzone", "tsina", "tqq", "renren", "weixin"], "viewText": "嘘！我介绍给你一个洋妞，她可以24小时随叫随到陪你聊天", "viewSize": "24" }, "selectShare": { "bdContainerClass": null, "bdSelectMiniList": ["qzone", "tsina", "tqq", "renren", "weixin"] } }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>

                <div class="alert alert-danger fade in" id="alert_support" style="display: none;">
                    <asp:Button ID="RobotButton" type="button" CssClass="close" data-dismiss="alert" aria-hidden="true" runat="server" Text="×"></asp:Button>
                    <h4>啊哦，你的浏览器不支持语音输入哦</h4>
                    </br>
			       
			        
			        <p>
                        <a class="btn btn-danger" href="http://www.google.com/intl/zh-CN/chrome/">前往官网下载Chrome浏览器</a>
                    </p>
                </div>


                <div class="login">
                    <div class="login-screen">
                        <div class="login-icon">
                            <img src="../img/icon.png" alt="Welcome to Mail App">
                            <h4><small>
                                <center>VIKI</center>
                            </small></h4>
                            <a href="javascript:void(0)" class="btn btn-block btn-danger" onclick="TTS.say(content);">再听一遍?</a>
                        </div>

                        <div class="login-form">
                            <div class="control-group">
                                <asp:TextBox ID="ResponseText" Style="width: 320px; height: 200px;" runat="server"></asp:TextBox>
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
				    
				    	
						<asp:Textbox runat="server" id="SpeechTextInput" type="text" name="message" placeholder="请输入您要说的内容吧" class="form-control" style="width:635px;height:24px;" speech x-webkit-speech="" />
						<div>
				        <asp:Button ID="Send" class="btn btn-success" OnClientClick="chat(this.form.message.value);" runat="server" Text="发送"></asp:Button>
				        <asp:Button ID="Hint" class="btn btn-info" OnClientClick="hint();" runat="server" Text="憋不出来?_?"></asp:Button>
						<div>
					
				</div>
				
				<div id="other_target" class="form-inline" style="display:none;">
					<asp:Textbox id="NospeechTextInput" type="text" name="message" placeholder="请输入您要说的内容吧" class="form-control" style="width:635px;height:24px;" runat="server" />
					<asp:Button ID="Send1" class="btn btn-large btn-success" OnClientClick="downloadChrome();" runat="server" Text="发送"></asp:Button>
					
				</div>
				
			    
			</center>
                </div>



            </div>
        </div>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">

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
    <script type="text/javascript" src="https://rawgithub.com/hiddentao/google-tts/master/google-tts.min.js"></script>
    <script type="text/javascript">

        var google_target = document.getElementById('google_target');
        var other_target = document.getElementById('other_target');
        var alert_target = document.getElementById('alert_support');

        if (document.createElement("input").webkitSpeech === undefined) {

            alert_target.style.display = "block";
        } else {

        }
    </script>
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/tts.js"></script>

    <script>
        $(document).ready(function () {
            $("body").removeClass("home");
            $("body").addClass("page");
            $("body").load("mobile");
        });
    </script>
</asp:Content>

