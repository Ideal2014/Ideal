<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherMemAcctClass.aspx.cs" Inherits="Teacher_TeacherAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="main" style="padding-bottom:0">
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
            <div class="content" style="padding-bottom:200px">
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
                                          <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="../img/recent-post-img.jpg"></a>
          <h2>Qiyu</h2><span class="color">学号：</span>
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
                           <li><a href="member-teachers-start.html">智能外教</a></li>
                              <li><a href="../Teacher/TeacherTeaChoose.aspx">购买时长</a></li>
                              
                              <li><a href="../Purchase/AccountInfo.aspx">账户管理</a></li>
                              <li><a href="#">提交反馈</a></li>
                           </ul></div>
                        <!-- Category Widget End -->
   
                     </div>
                     <!-- Sidebar End -->
                     <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12">
                        <article class="post hentry">
                          <div class="post-content"><ul class="nav nav-tabs">
                    <li  ><a href="../Purchase/AccountInfo.aspx">账户信息</a></li>
  <li><a href="../Student/StudentModifyAccount.aspx">修改个人信息</a></li>
  <li><a href="../Student/StudentResetPassword.aspx">修改密码</a></li>
  <li><a href="../Purchase/AccountPurchase.aspx">购买记录</a></li>
  <li class="active"><a href="../Teacher/TeacherMemAcctClass.aspx">上课记录</a></li>
</ul></div>
                        </article>
                         <div style="width:100%">
                         
                        <asp:Table CssClass="table table-bordered" runat="server" GridLines="horizontal" HorizontalAlign="Center">
							<asp:TableRow>
                                <asp:TableCell>序号</asp:TableCell>
                                <asp:TableCell>教师</asp:TableCell>
                                <asp:TableCell>上课时间</asp:TableCell>
                                <asp:TableCell>结束时间</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>1</asp:TableCell>
                                <asp:TableCell>Viki</asp:TableCell>
                                <asp:TableCell>2014-04-10 16:40</asp:TableCell>
                                <asp:TableCell>2014-04-10 18:40</asp:TableCell>
                            </asp:TableRow>
						</asp:Table>
                         
                     </div>
                     <!-- Left Section End -->
                  </div>
               </div>
               
            </div>
            <!-- Main Content end-->
         </div>
         </div>
         <!-- Content End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
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
      
      <script src="js/jquery.gmap.min.js"></script>
      <script src="js/custom.js"></script>
</asp:Content>

