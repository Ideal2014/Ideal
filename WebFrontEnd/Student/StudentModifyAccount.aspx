<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentModifyAccount.aspx.cs" Inherits="Student_Student_Modify_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" style="padding-bottom:0" Runat="Server">
    
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
                                          <a href="#"><img class="img-thumbnail recent-post-img" alt="" src="../img/recent-post-img.jpg"/></a>
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
  <li class="active"><a href="../Student/StudentModifyAccount.aspx">修改个人信息</a></li>
  <li><a href="../Student/StudentResetPassword.aspx">修改密码</a></li>
  <li><a href="../Purchase/AccountPurchase.aspx">购买记录</a></li>
  <li><a href="../Teacher/TeacherMemAcctClass.aspx">上课记录</a></li>
</ul></div>
                        </article>
                         <div style="width:50%">
                         
                         <div class="input-group input-type">
 						 <span class="input-group-addon">邮箱</span>
                         <asp:TextBox id="Mailbox" class="form-control" value="11301127@bjtu.edu.cn" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">手机</span>
                         <asp:TextBox id="Telephone" class="form-control" value="18755608711" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">性别</span>
 						 <input type="radio" checked id="111"  style=" margin-left:20px; display:inline"  name="a1"/><label style="display:inline" for="111">男</label><input style="display:inline;margin-left:20px;" type="radio" id="222" name="a1" placeholder="" /><label style="display:inline" for="222">女</label>
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">生日</span>
                         <asp:TextBox id="Birthday" class="form-control" value="1993/07/14" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">昵称</span>
                            <asp:TextBox id="Nickname" class="form-control" value="小宇宇" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">QQ</span>
                            <asp:TextBox id="Qq" class="form-control" value="11096664234" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">收件人姓名</span>
                            <asp:TextBox id="Name" class="form-control" value="qiyu" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">收件人地址</span>
                            <asp:TextBox id="Address" class="form-control" value="北京交通大学" runat="server" />
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">邮编</span>
                            <asp:TextBox id="Code" class="form-control" value="100044" runat="server" />
						</div>
                        <div class="input-type">
                           <asp:Button id="Submit" Text="提交修改" style="float:right" class="btn btn-normal btn-pad btn-color"  runat="server" />
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
         </div>
         <!-- Content End -->
        
         
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

