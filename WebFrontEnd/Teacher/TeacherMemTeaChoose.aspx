<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherMemTeaChoose.aspx.cs" Inherits="Teacher_TeacherMemTeaChoose" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <!-- Content Start -->
         <div id="main">
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
                          <div class="post-content">
                             <asp:Table ID="TeacherTable" CssClass="table table-bordered" runat="server" GridLines="horizontal" HorizontalAlign="Center">
        
                           
                              <asp:TableRow style="border-width:thin">
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-1@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>日常外教 <a href="../Teacher/TeacherTeaInfo.aspx">Viki</a></h4>
                                 <h6>专长 日常英语</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell  width="26%" style="border:none"><asp:Button ID="BuyButton1" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-2@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>四六级外教 <a href="../Teacher/TeacherTeaInfo.aspx">Olivia</a></h4>
                                 <h6>专长 日常英语</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell width="26%" style="border:none"><asp:Button ID="BuyButton2" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                              
                              <asp:TableRow>
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-3@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>托福外教 <a href="../Teacher/TeacherTeaInfo.aspx">Stephenia</a></h4>
                                 <h6>专长 日常英语</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell width="26%" style="border:none"><asp:Button ID="BuyButton3" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-4@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>商务外教 <a href="../Teacher/TeacherTeaInfo.aspx">Peter</a></h4>
                                 <h6>专长 日常英语</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell width="26%" style="border:none"><asp:Button ID="BuyButton4" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-5@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>高考外教 <a href="../Teacher/TeacherTeaInfo.aspx">Danel</a></h4>
                                 <h6>专长 日常英语</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell width="26%" style="border:none"><asp:Button ID="BuyButton5" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                              <asp:TableRow>
                                 <asp:TableCell width="15%" style="border:none"><span style="border:none"><img src="../img/teacher/teacher-6@2x.png"/></span></asp:TableCell>
                                 <asp:TableCell width="50%" style="border:none"><h4>日常外教 <a href="../Teacher/TeacherTeaInfo.aspx">Albert</a></h4>
                                 <h6>专长 雅思英语外教</h6>
                                 <h6>来自 美国</h6></asp:TableCell>
                                 <asp:TableCell width="26%" style="border:none"><asp:Button ID="BuyButton6" type="submit"  class="btn btn-normal btn-danger" runat="server" Text="购买"></asp:Button>
  </asp:TableCell>
                              </asp:TableRow>
                          
                        </asp:Table>
                           </div>
                        </article>
                     </div>
                     <!-- Left Section End -->
                  </div>
               </div>
            </div>
            <!-- Main Content end-->
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

