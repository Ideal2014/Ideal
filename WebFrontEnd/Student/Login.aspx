﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">

    <!-- Title, Breadcrumb Start-->
    <div class="breadcrumb-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <h2 class="title">登录</h2>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                    <div class="breadcrumbs pull-right">
                        <ul>
                            <li>您的位置:</li>
                            <li><a href="index-2.html">首页</a></li>
                            <li><a href="#">登陆</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Title, Breadcrumb End-->
    <!-- Main Content start-->
    <div style="background: url(../img/slider/slider-bg-1.jpg) center top;">
        <div class="content">
            <div class="container">

                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h3 class="title">用户登录</h3>
                        <div>
                            <asp:CustomValidator runat="server" ID="LoginValidate" Display="Dynamic"
                                OnServerValidate="LoginValidate_ServerValidate" ValidationGroup="login"
                                ErrorMessage="用户名，密码错误或修改后为进行邮箱验证" Font-Size="15px" ForeColor="Red"></asp:CustomValidator>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                                <br />
                                账号：  
                              <asp:TextBox ID="Username" class="form-control" runat="server" />
                                <asp:RequiredFieldValidator ID="NameValidator1" runat="server"
                                    ErrorMessage="用户名不能为空" ControlToValidate="Username" Display="Dynamic" ValidationGroup="login"
                                    Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="NameValidator2" runat="server"
                                    ErrorMessage="格式不对，请输入只能输入6-20个以字母开头、可带数字、“_”、“.”的字串"
                                    ControlToValidate="Username" ValidationGroup="login"
                                    Display="Dynamic" ValidationExpression="^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$"
                                    Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                                <br />
                                密码：  
                              <asp:TextBox ID="Password" TextMode="password" class="form-control" runat="server" />
                                <asp:RequiredFieldValidator runat="server"
                                    ErrorMessage="用户名不能为空" ControlToValidate="Password" Display="Dynamic"
                                    ValidationGroup="login" Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server"
                                    ErrorMessage="密码6-20位" ControlToValidate="Password"
                                    Display="Dynamic" ValidationExpression="^.{5,19}$"
                                    ValidationGroup="login" Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>

                                <br />
                                <asp:Button ID="Login" ValidationGroup="login" Text="登录" class="btn-color btn-normal btn-pad" runat="server" OnClick="Login_Click" />

                                <!-- /input-group -->

                                <!-- /input-group -->

                                <div class="widget search-form">
                                    <!-- /input-group -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="height: 200px">
                    </div>
                    <!-- End 5th Row-->
                </div>
            </div>
        </div>
    </div>
    <!-- Content End -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

