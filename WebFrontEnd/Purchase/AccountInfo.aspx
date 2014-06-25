<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountInfo.aspx.cs" Inherits="Purchase_AccountInfo" %>

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
                            <li>
                                <asp:HyperLink runat="server" NavigateUrl="#">会员中心</asp:HyperLink></li>
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
                            <li>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Teacher/TeacherMemTeaChoose.aspx">智能外教</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="../Teacher/TeacherMemTeaChoose.aspx">购买时长</asp:HyperLink></li>

                            <li>
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户管理</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../Feedback/FeedbackPage.aspx">提交反馈</asp:HyperLink></li>
                        </ul>
                    </div>
                    <!-- Category Widget End -->

                </div>
                <!-- Sidebar End -->
                <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <article class="post henasp:TableRowy">
                        <div class="post-content">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户信息</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="../Student/StudentModifyAccount.aspx">修改个人信息</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="../Student/StudentResetPassword.aspx">修改密码</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="../Purchase/AccountPurchase.aspx">购买记录</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="../Teacher/TeacherMemAcctClass.aspx">上课记录</asp:HyperLink></li>
                            </ul>
                        </div>
                    </article>
                    <div>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" HeaderStyle-Font-Bold="true" class="table table-bordered">
                            <Columns>
                                <asp:TemplateField HeaderText="序号">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <%#Container.DataItemIndex+1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="教师">
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <asp:Image runat="server" ImageUrl='<%#Eval("Tea_image")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Tea_Name" HeaderText="姓名" SortExpression="Tea_Name" />
                                <asp:BoundField DataField="Tea_Skill" HeaderText="专长" SortExpression="Tea_Skill" />
                                <asp:BoundField DataField="Bal_Time" HeaderText="到期时间" SortExpression="Bal_Time" />
                                <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
                                        <asp:Button ID="Button1" runat="server" class="btn-color btn-normal btn-pad" Text="购买" CommandName="a" CommandArgument='<%#Eval("Tea_ID") %>' OnCommand="Button1_Command" />
                                    </ItemTemplate>
                                </asp:TemplateField>

                            </Columns>
                        </asp:GridView>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

