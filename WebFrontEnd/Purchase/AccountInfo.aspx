<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AccountInfo.aspx.cs" Inherits="Purchase_AccountInfo" %>

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
                              <li><asp:HyperLink runat="server" NavigateUrl="#">会员中心</asp:HyperLink></li>
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
                                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#"><img class="img-thumbnail recent-post-img" alt="" src="img/recent-post-img.jpg"></asp:HyperLink>
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
                           <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="member-teachers-start.html">智能外教</asp:HyperLink></li>
                              <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="../Teacher/TeacherTeaChoose.aspx">购买时长</asp:HyperLink></li>
                              
                              <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户管理</asp:HyperLink></li>
                              <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="#">提交反馈</asp:HyperLink></li>
                           </ul></div>
                        <!-- Category Widget End -->
   
                     </div>
                     <!-- Sidebar End -->
                     <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12">
                        <article class="post henasp:TableRowy">
                          <div class="post-content"><ul class="nav nav-tabs">
                    <li  class="active"><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="../Purchase/AccountInfo.aspx">账户信息</asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="../Student/StudentModifyAccount.aspx">修改个人信息</asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="../Student/StudentResetPassword.aspx">修改密码</asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="../Purchase/AccountPurchase.aspx">购买记录</asp:HyperLink></li>
  <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="../Teacher/TeacherMemAcctClass.aspx">上课记录</asp:HyperLink></li>
</ul></div>
                        </article>
                         <div>
                         <asp:table class="table table-bordered" runat="server">
							<asp:TableHeaderRow>
                              <asp:TableHeaderCell>序号</asp:TableHeaderCell>
                              <asp:TableHeaderCell>老师</asp:TableHeaderCell>
							  <asp:TableHeaderCell>姓名</asp:TableHeaderCell>
                              <asp:TableHeaderCell>专长</asp:TableHeaderCell>
							  <asp:TableHeaderCell>到期时间</asp:TableHeaderCell>
							  <asp:TableHeaderCell>操作</asp:TableHeaderCell>
				          </asp:TableHeaderRow>
							<asp:TableRow>
							  <asp:TableCell>1</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image4" runat="server" ImageUrl="~/img/teacher/teacher-1@2x.png"/></asp:TableCell>
							  <asp:TableCell>Viki</asp:TableCell>
							  <asp:TableCell>日常英语</asp:TableCell>
							  <asp:TableCell>2014-04-10</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          <asp:TableRow>
							  <asp:TableCell>2</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image1" runat="server" ImageUrl="~/img/teacher/teacher-2@2x.png"/>
                              </asp:TableCell>
							  <asp:TableCell>Olivia</asp:TableCell>
							  <asp:TableCell>四六级英语</asp:TableCell>
							  <asp:TableCell>2014-04-10</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          <asp:TableRow>
							  <asp:TableCell>3</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image2" runat="server" ImageUrl="~/img/teacher/teacher-3@2x.png"/></asp:TableCell>
							  <asp:TableCell>Spethanie</asp:TableCell>
							  <asp:TableCell>托福英语</asp:TableCell>
							  <asp:TableCell>未购买</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          <asp:TableRow>
							  <asp:TableCell>4</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image3" runat="server" ImageUrl="~/img/teacher/teacher-4@2x.png"/></asp:TableCell>
							  <asp:TableCell>Peter</asp:TableCell>
							  <asp:TableCell>商务英语</asp:TableCell>
							  <asp:TableCell>未购买</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          <asp:TableRow>
							  <asp:TableCell>5</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image5" runat="server" ImageUrl="~/img/teacher/teacher-5@2x.png"/></asp:TableCell>
							  <asp:TableCell>Danvel</asp:TableCell>
							  <asp:TableCell>高考英语</asp:TableCell>
							  <asp:TableCell>未购买</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          <asp:TableRow>
							  <asp:TableCell>6</asp:TableCell>
							  <asp:TableCell><asp:Image ID="Image6" runat="server" ImageUrl="~/img/teacher/teacher-6@2x.png"/></asp:TableCell>
							  <asp:TableCell>Albert</asp:TableCell>
							  <asp:TableCell>雅思英语</asp:TableCell>
							  <asp:TableCell>未购买</asp:TableCell>
                              <asp:TableCell><form action="../Purchase/TeachersPurchase.aspx"><button type="submit"  class="btn btn-danger">购买</button></form></asp:TableCell>
					      </asp:TableRow>
                          
							
						</asp:table>
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

