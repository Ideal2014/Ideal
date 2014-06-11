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
                                          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#"><asp:Image ID="Image7" class="img-thumbnail recent-post-img" runat="server" ImageUrl="~/img/recent-post-img.jpg" /></asp:HyperLink>
          <h2><asp:Label runat="server" ID="Std_Name" Text="Qiyu"/></h2><span class="color">学号：</span>
          <span><asp:Label ID="Std_ID" runat="server" Text="11301127"/></span>

           
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
<li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Teacher/TeacherMemTeaChoose.aspx">智能外教</asp:HyperLink></li>
                              <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../Teacher/TeacherMemTeaChoose.aspx">购买时长</asp:HyperLink></li>
                              
                              <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户管理</asp:HyperLink></li>
                              <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="../Feedback/FeedbackPage.aspx">提交反馈</asp:HyperLink></li>
                           </ul>
</div>
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
                         
                        <asp:GridView ID="GridRec" CssClass="table table-bordered" runat= "server"  AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField HeaderText="序号" InsertVisible="False"> 
                                    <ItemStyle HorizontalAlign="Center" /> 
                                        <HeaderStyle HorizontalAlign="Center" Width="5%" /> 
                                    <ItemTemplate> 
                                        <%#Container.DataItemIndex+1%> 
                                    </ItemTemplate> 
                                </asp:TemplateField>
                                <asp:BoundField DataField="Tea_Name" HeaderText="教师" ItemStyle-CssClass="center" />
                                <asp:BoundField DataField="Cla_StartTime" HeaderText="上课时间" ItemStyle-CssClass="center" />
                                <asp:BoundField DataField="Cla_EndTime" HeaderText="结束时间" ItemStyle-CssClass="center" />
                            </Columns>
						</asp:GridView>
                         
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

