<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentModifyAccount.aspx.cs" Inherits="Student_Student_Modify_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <!-- Title, Breadcrumb Start-->
    <div class="breadcrumb-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <h2 class="title">会员中心首页</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <div class="breadcrumbs pull-right">
                        <ul>
                            <li>您的位置</li>
                            <li><a href="/">会员中心</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Title, Breadcrumb End-->
    <!-- Main Content start-->
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="sidebar col-lg-3 col-md-3 col-sm-4 col-xs-12">
                    <!-- Tab Start -->
                    <div class="widget tabs">
                        <div id="horizontal-tabs">
                            <ul class="tabs">
                                <li id="tab1" class="current">账户信息</li>
                                <li id="tab2">学习信息</li>

                            </ul>
                            <div class="contents">
                                <div class="tabscontent" id="Div1" style="display: block;">
                                    <ul class="posts">
                                        <li>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">
                                                <asp:Image ID="Image7" class="img-thumbnail recent-post-img" runat="server" ImageUrl="~/img/recent-post-img.jpg" /></asp:HyperLink>
                                            <h2>
                                                <asp:Label runat="server" ID="Std_Name" Text="Qiyu" /></h2>
                                            <span class="color">学号：</span>
                                            <span>
                                                <asp:Label ID="Std_ID" runat="server" Text="11301127" /></span>



                                        </li>
                                    </ul>
                                </div>
                                <div class="tabscontent" id="Div2">
                                    <ul class="posts">
                                        <li>
                                            <span class="color">完成上课次数：</span>
                                            <span>10节课</span>
                                        </li>
                                        <li>
                                            <span class="color">完成上课时长：</span>
                                            <span>20小时</span>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- Tab End -->
                    <!-- Category Widget Start -->
                    <div class="widget category">
                        <h3 class="title">会员中心</h3>
                        <ul class="category-list slide">
                            <li><a href="member-teachers-start.html">智能外教</a></li>
                            <li><a href="../Teacher/TeacherTeaChoose.aspx">购买时长</a></li>

                            <li><a href="../Purchase/AccountInfo.aspx">账户管理</a></li>
                            <li><a href="#">提交反馈</a></li>
                        </ul>
                    </div>
                    <!-- Category Widget End -->

                </div>
                <!-- Sidebar End -->
                <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <article class="post hentry">
                        <div class="post-content">
                            <ul class="nav nav-tabs">
                                <li><a href="../Purchase/AccountInfo.aspx">账户信息</a></li>
                                <li class="active"><a href="../Student/StudentModifyAccount.aspx">修改个人信息</a></li>
                                <li><a href="../Student/StudentResetPassword.aspx">修改密码</a></li>
                                <li><a href="../Purchase/AccountPurchase.aspx">购买记录</a></li>
                                <li><a href="../Teacher/TeacherMemAcctClass.aspx">上课记录</a></li>
                            </ul>
                        </div>
                    </article>
                    <div style="width: 50%">
                        <div class="input-group input-type">
                            <span class="input-group-addon">用户名</span>
                            <div class="input-group-lg">
                                <asp:TextBox ID="Name" class="form-control" runat="server"  ReadOnly="true"/>
                                <asp:RequiredFieldValidator ID="NameValidator1" runat="server" class="form-control" ValidationGroup="modify"
                                    ErrorMessage="用户名不能为空" ControlToValidate="Name" Display="Dynamic"
                                    Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="NameValidator2" runat="server" class="form-control" ValidationGroup="modify"
                                    ErrorMessage="格式不对，请输入只能输入5-20个以字母开头、可带数字、“_”、“.”的字串" ControlToValidate="Name"
                                    Display="Dynamic" ValidationExpression="^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$"
                                    Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="input-group input-type">
                            <span class="input-group-addon">邮&nbsp;&nbsp;&nbsp;箱</span>
                            <div class="input-group-lg">
                                <asp:TextBox ID="Mailbox" class="form-control" runat="server" ReadOnly="true" />
                                <asp:RequiredFieldValidator ID="MailValidator1" runat="server" class="form-control" ValidationGroup="modify"
                                    ControlToValidate="MailBox" Display="Dynamic" ErrorMessage="不能为空"
                                    Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="MailValidator2" runat="server" class="form-control" ValidationGroup="modify"
                                    ControlToValidate="MailBox" Display="Dynamic" ErrorMessage="邮箱格式不正确"
                                    ValidationExpression="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$"
                                    Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="input-group input-type">
                            <span class="input-group-addon">手&nbsp;&nbsp;&nbsp;机</span>
                            <div class="input-group-lg">
                                <asp:TextBox ID="Telephone" class="form-control" runat="server" />
                                <asp:RegularExpressionValidator ID="TelephoneValidator2" runat="server" class="form-control" ValidationGroup="modify"
                                    ErrorMessage="格式不对,请输入手机号" ControlToValidate="Telephone"
                                    Display="Dynamic" ValidationExpression="^1[3|4|5|8][0-9]\d{8}$"
                                    Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="input-group input-type">
                            <span class="input-group-addon">性&nbsp;&nbsp;&nbsp;别</span>

                            <asp:RadioButtonList ID="Radio" class="form-control" RepeatLayout="OrderedList" runat="server">
                                <asp:ListItem Value="男">男</asp:ListItem>
                                <asp:ListItem Value="女">女</asp:ListItem>
                            </asp:RadioButtonList>

                        </div>
                        <div class="input-group input-type">
                            <span class="input-group-addon">头&nbsp;&nbsp;&nbsp;像</span>
                            <div class="input-group-lg">
                                <div class="input-lg">
                                    <asp:FileUpload ID="HeadImage" class="form-control" runat="server" />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" class="form-control"
                                        ControlToValidate="HeadImage" ErrorMessage="必须是 jpg,png,或者gif文件" ValidationGroup="modify"
                                        ValidationExpression="^(([a-zA-Z]:)|(\\{2}\w+)\$?)(\\(\w[\w].*))+(.jpg|.JPG|.gif|.GIF|.png|.PNG)$"
                                        Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>
                        </div>

                        <br />
                        <div class="input-type">
                            <asp:Button ID="Submit" Text="提交修改" ValidationGroup="modify" Style="float: right" class="btn btn-normal btn-pad btn-color" runat="server" OnClick="Submit_Click" />
                        </div>
                    </div>
                    <!-- Left Section End -->
                </div>
            </div>
            <div class="row">
                <div class="sidebar col-lg-12 col-md-12 col-sm-12" style="padding-top: 100px">
                </div>
            </div>
        </div>
        <!-- Main Content end-->
    </div>
    <!-- Content End -->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

