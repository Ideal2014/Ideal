<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FeedbackPage.aspx.cs" Inherits="Feedback_FeedbackPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
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
                           <div id="horizontal-tabs" >
                              <ul class="tabs">
                                 <li id="tab1" class="current">账户信息</li>
                                 <li id="tab2">学习信息</li>
                           
                              </ul>
                              <div class="contents">
                                 <div class="tabscontent" id="Div1" style="display: block;">
                                    <ul class="posts">
                                       <li>
                                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Feedback/FeedbackPage.aspx"><asp:Image ID="Image1" class="img-thumbnail recent-post-img" runat="server" ImageUrl="img/recent-post-img.jpg" /></asp:HyperLink>
          &nbsp;<h2>Qiyu</h2><span class="color">学号：</span>
          <span>11301127</span>

           
                                       </li>
                                    </ul>
                                 </div>
                                 <div class="tabscontent"  id="Div2">
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
                        <div class="widget category"><h3 class="title">会员中心</h3>
                           <ul class="category-list slide">
                           <li><asp:HyperLink  ID="HyperLink2" runat="server" NavigateUrl="member-teachers-start.html">智能外教</asp:HyperLink></li>
                               <li><asp:HyperLink ID="HyperLink3"  runat="server" NavigateUrl="../Teacher/TeacherTeaChoose.aspx">购买时长</asp:HyperLink></li>
                               <li><asp:HyperLink ID="HyperLink4"  runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户管理</asp:HyperLink></li>
                               <li><asp:HyperLink ID="HyperLink5"  runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">提交反馈</asp:HyperLink></li>
                           </ul></div>
                        <!-- Category Widget End -->
   
                     </div>
                     <!-- Sidebar End -->
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                     	<!-- 填个人信息-->
                       <h3 class="title">提交反馈</h3>
                              <div class="row">
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <label>标题: <span>*</span></label>
                                     <asp:TextBox class="form-control" ID="name" name="name" runat="server" ></asp:TextBox>
                                 </div>
                           
                              </div>
                         
                              <div class="row">
                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <label>内容: <span>*</span></label>
                                     <asp:TextBox class="form-control" ID="text" TextMode="MultiLine" name="text" Rows="4" Columns="40" runat="server" ></asp:TextBox>
                                 </div>
                              </div>
                           <asp:Button ID="Button1" class="btn-normal btn-color submit  bottom-pad" runat="server" Text="发送" />
                           <div class="success alert-success alert" style="display:none">Your message has been sent successfully.</div>
                           <div class="error alert-error alert" style="display:none">E-mail must be valid and message must be longer than 100 characters.</div>
                           <div class="clearfix">
                           </div>
                        </div>
                     <!-- Left Section End -->
                  </div>
               </div>
               <div class="row">
                     <div class="sidebar col-lg-12 col-md-12 col-sm-12" style="padding-top:100px">
                     </div>
                     </div>
            </div>
            <!-- Main Content end-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

