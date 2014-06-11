<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login_Default" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>Viki后台管理系统</title>

    <!-- The styles -->
    <link href="../css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../css/charisma-app.css" rel="stylesheet">
    <link href="../css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='../css/fullcalendar.css' rel='stylesheet'>
    <link href='../css/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='../css/chosen.css' rel='stylesheet'>
    <link href='../css/uniform.default.css' rel='stylesheet'>
    <link href='../css/colorbox.css' rel='stylesheet'>
    <link href='../css/jquery.cleditor.css' rel='stylesheet'>
    <link href='../css/jquery.noty.css' rel='stylesheet'>
    <link href='../css/noty_theme_default.css' rel='stylesheet'>
    <link href='../css/elfinder.min.css' rel='stylesheet'>
    <link href='../css/elfinder.theme.css' rel='stylesheet'>
    <link href='../css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='../css/opa-icons.css' rel='stylesheet'>
    <link href='../css/uploadify.css' rel='stylesheet'>
    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">
</head>

<body>
    <form runat="server" id="form1">
        <div class="container-fluid">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="span12 center login-header">
                        <h2>VikiChat信息管理系统</h2>
                    </div>
                    <!--/span-->
                </div>
                <!--/row-->

                <div class="row-fluid">
                    <div class="well span5 center login-box">
                        <div class="alert alert-info">
                          <asp:CustomValidator runat="server" ID="LoginValidate" OnServerValidate="LoginValidate_ServerValidate" ErrorMessage="用户名或密码错误"></asp:CustomValidator>
                        </div>

                        <fieldset>
                            <div class="input-prepend" title="用户名" data-rel="tooltip">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <asp:TextBox runat="server" autofocus CssClass="input-large span10" ID="UserName"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ControlToValidate="UserName" runat="server" ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ControlToValidate="UserName" runat="server" ValidationExpression="\d{1,5}" ErrorMessage="用户名必须为1到5位数字"></asp:RegularExpressionValidator>
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend" title="密码" data-rel="tooltip">
                                <span class="add-on"><i class="icon-lock"></i></span>

                                <asp:TextBox runat="server" CssClass="input-large span10" ID="Password" TextMode="Password"></asp:TextBox>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="Password" runat="server" ErrorMessage="不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ControlToValidate="Password" runat="server" ValidationExpression="\d{1,5}" ErrorMessage="密码必须为1到5位数字"></asp:RegularExpressionValidator>
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend">
                                <label class="remember" for="remember">
                                    <input type="checkbox" id="remember" />记住我</label>
                            </div>
                            <div class="clearfix"></div>
                            <p class="center span5">
                                <asp:Button runat="server" CssClass="btn btn-primary" Text="登录" ID="LoginButton" OnClick="LoginButton_Click"></asp:Button>
                            </p>
                        </fieldset>

                    </div>
                    <!--/span-->
                </div>
                <!--/row-->
            </div>
            <!--/fluid-row-->

        </div>
        <!--/.fluid-container-->

        <!-- external javascript
	================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->

        <!-- jQuery -->
        <script src="../js/jquery-1.7.2.min.js"></script>
        <!-- jQuery UI -->
        <script src="../js/jquery-ui-1.8.21.custom.min.js"></script>
        <!-- transition / effect library -->
        <script src="../js/bootstrap-transition.js"></script>
        <!-- alert enhancer library -->
        <script src="../js/bootstrap-alert.js"></script>
        <!-- modal / dialog library -->
        <script src="../js/bootstrap-modal.js"></script>
        <!-- custom dropdown library -->
        <script src="../js/bootstrap-dropdown.js"></script>
        <!-- scrolspy library -->
        <script src="../js/bootstrap-scrollspy.js"></script>
        <!-- library for creating tabs -->
        <script src="../js/bootstrap-tab.js"></script>
        <!-- library for advanced tooltip -->
        <script src="../js/bootstrap-tooltip.js"></script>
        <!-- popover effect library -->
        <script src="../js/bootstrap-popover.js"></script>
        <!-- button enhancer library -->
        <script src="../js/bootstrap-button.js"></script>
        <!-- accordion library (optional, not used in demo) -->
        <script src="../js/bootstrap-collapse.js"></script>
        <!-- carousel slideshow library (optional, not used in demo) -->
        <script src="../js/bootstrap-carousel.js"></script>
        <!-- autocomplete library -->
        <script src="../js/bootstrap-typeahead.js"></script>
        <!-- tour library -->
        <script src="../js/bootstrap-tour.js"></script>
        <!-- library for cookie management -->
        <script src="../js/jquery.cookie.js"></script>
        <!-- calander plugin -->
        <script src='../js/fullcalendar.min.js'></script>
        <!-- data table plugin -->
        <script src='../js/jquery.dataTables.min.js'></script>

        <!-- chart libraries start -->
        <script src="../js/excanvas.js"></script>
        <script src="../js/jquery.flot.min.js"></script>
        <script src="../js/jquery.flot.pie.min.js"></script>
        <script src="../js/jquery.flot.stack.js"></script>
        <script src="../js/jquery.flot.resize.min.js"></script>
        <!-- chart libraries end -->

        <!-- select or dropdown enhancer -->
        <script src="../js/jquery.chosen.min.js"></script>
        <!-- checkbox, radio, and file input styler -->
        <script src="../js/jquery.uniform.min.js"></script>
        <!-- plugin for gallery image view -->
        <script src="../js/jquery.colorbox.min.js"></script>
        <!-- rich text editor library -->
        <script src="../js/jquery.cleditor.min.js"></script>
        <!-- notification plugin -->
        <script src="../js/jquery.noty.js"></script>
        <!-- file manager library -->
        <script src="../js/jquery.elfinder.min.js"></script>
        <!-- star rating plugin -->
        <script src="../js/jquery.raty.min.js"></script>
        <!-- for iOS style toggle switch -->
        <script src="../js/jquery.iphone.toggle.js"></script>
        <!-- autogrowing textarea plugin -->
        <script src="../js/jquery.autogrow-textarea.js"></script>
        <!-- multiple file upload plugin -->
        <script src="../js/jquery.uploadify-3.1.min.js"></script>
        <!-- history.js for cross-browser state change on ajax -->
        <script src="../js/jquery.history.js"></script>
        <!-- application script for Charisma demo -->
        <script src="../js/charisma.js"></script>
    </form>
</body>
</html>
