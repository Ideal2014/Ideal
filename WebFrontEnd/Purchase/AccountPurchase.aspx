﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountPurchase.aspx.cs" Inherits="Purchase_AccountPurchase" %>

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
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">会员中心</asp:HyperLink></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Title, Breadcrumb End-->
    <!-- Main Content start-->
    <div class="content" style="padding-bottom: 200px">
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
                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">
                                                <asp:Image ID="Image7" class="img-thumbnail recent-post-img" runat="server" ImageUrl="~/img/recent-post-img.jpg" />
                                            </asp:HyperLink>
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
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Teacher/TeacherMemTeaChoose.aspx">智能外教</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../Teacher/TeacherMemTeaChoose.aspx">购买时长</asp:HyperLink></li>

                            <li>
                                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户管理</asp:HyperLink></li>
                            <li>
                                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="../Feedback/FeedbackPage.aspx">提交反馈</asp:HyperLink></li>
                        </ul>
                    </div>
                    <!-- Category Widget End -->

                </div>
                <!-- Sidebar End -->
                <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12">
                    <article class="post hentry">
                        <div class="post-content">
                            <ul class="nav nav-tabs">
                                <li>
                                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户信息</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="../Student/StudentModifyAccount.aspx">修改个人信息</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="../Student/StudentResetPassword.aspx">修改密码</asp:HyperLink></li>
                                <li class="active">
                                    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="../Purchase/AccountPurchase.aspx">购买记录</asp:HyperLink></li>
                                <li>
                                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="../Teacher/TeacherMemAcctClass.aspx">上课记录</asp:HyperLink></li>
                            </ul>
                        </div>
                    </article>
                    <div style="width: 100%">



                        <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" HeaderStyle-Font-Bold="true" class="table table-bordered">
                            <Columns>
                                <asp:BoundField DataField="Ord_Time" HeaderText="订单时间" />
                                <asp:TemplateField HeaderText="订单金额">
                                    <ItemTemplate>
                                        <asp:Label ID="MoneyLabel" CssClass="prd_moneys" ClientIDMode="Static" runat="server" Text='<%#Eval("Ord_Plan") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Tea_ID" HeaderText="教师" />
                                <asp:TemplateField HeaderText="套餐">
                                    <ItemTemplate>
                                        <asp:Label ID="PlanLabel" CssClass="ord_plans" runat="server" Text='<%#Bind("Ord_Plan") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                    </div>
                    <!-- Left Section End -->
                </div>
            </div>

        </div>
        <!-- Main Content end-->
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
    <script>
        function convertMoney(money) {
            if (money == 1)
                    return "299";
            if (money == 2)
                    return "499";
            if (money == 3)
                    return "899";
            if (money == 4)
                    return "1699";
            }
        

        function convertType(money) {
            if (money == 1)
                return "普通";
            if (money == 2)
                return "高级";
            if (money == 3)
                return "专业";
            if (money == 4)
                return "旗舰";
        }

        $(document).ready(function () {
            $(".ord_plans").each(function () {
                var content =$(this).html();
                var v = convertType(content);
                $(this).html(v);
            });
            $(".prd_moneys").each(function () {
                var content =$(this).html();
                var v = convertMoney(content);
                $(this).html(v);
            });
        });

    </script>
</asp:Content>

