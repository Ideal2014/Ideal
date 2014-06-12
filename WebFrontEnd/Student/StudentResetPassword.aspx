<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentResetPassword.aspx.cs" Inherits="Student_StudentResetPassword" %>

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
                                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#"><asp:Image ID="Image7" class="img-thumbnail recent-post-img" runat="server" ImageUrl="~/img/recent-post-img.jpg" /></asp:HyperLink>
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
  <li class="active"><a href="../Student/StudentResetPassword.aspx">修改密码</a></li>
  <li><a href="../Purchase/AccountPurchase.aspx">购买记录</a></li>
  <li><a href="../Teacher/TeacherMemAcctClass.aspx">上课记录</a></li>
</ul></div>
                        </article>
                         <div style="width:50%">
                          <div class="input-group input-type">
 						 <span class="input-group-addon">验证邮箱</span>
                             <div class="input-group-lg">
                         <asp:TextBox id="Mailbox" class="form-control"  runat="server" /></div>
						</div>
                         <div class="input-group input-type">
 						 <span class="input-group-addon">请输入原密码</span>
                             <div class="input-group-lg">
                          <asp:TextBox id="Password1" TextMode="password"   class="form-control" runat="server" />
                             <asp:Label  ID="Check" runat="server"></asp:Label>
                             <asp:RequiredFieldValidator ID="Password1Validator1" runat="server"
                                  ControlToValidate="Password1" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">请输入新密码</span>
                            <div class="input-group-lg">
 						 <asp:TextBox id="Password2" TextMode="password" class="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="Password2Validator1" runat="server"
                                  ControlToValidate="Password2" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="Password1Validator2"  runat="server"
                                  ErrorMessage="密码6-20位" ControlToValidate="Password2"
                                  DisPlay="Dynamic" ValidationExpression="^.{6,19}$"
                                  Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
						</div>
                        <div class="input-group input-type">
 						 <span class="input-group-addon">请确认新密码</span>
                            <div class="input-group-lg">
 						<asp:TextBox id="Password3" TextMode="password" class="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="Password3dValidator1" runat="server"
                                  ControlToValidate="Password3" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:CompareValidator ID="Password3Validator2" runat="server"
                                  ErrorMessage="两次输入的密码不一致" ControlToCompare="Password2" ControlToValidate="Password3"
                                  Display="Dynamic" Font-Size="15px" ForeColor="Red"></asp:CompareValidator>
                                </div>
						</div>
                       
                        <div class="input-type">
                        <asp:Button id="ResetPassword" Text="提交修改" class="btn-color btn-normal btn-pad" runat="server" OnClick="ResetPassword_Click" />
                         
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
         
         
      </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

