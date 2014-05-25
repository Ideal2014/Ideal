<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Student_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">注册</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="index-2.html">首页</a></li>
                              <li><a href="#">注册</a></li>
                             
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Title, Breadcrumb End-->
            <!-- Main Content start-->
            <div style="background:url(../img/slider/slider-bg-1.jpg) center top no-repeat;">
            <div class="content">
               <div class="container" >
                 
                  <div class="row" >
                     <div class="col-lg-12 col-md-12">
                        <h3 class="title">账号信息</h3>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                            账号：  <asp:TextBox id="Username" class="form-control" runat="server" />
                            密码：  <asp:TextBox id="Password1" TextMode="password" class="form-control" runat="server" />
                            确认密码：  <asp:TextBox id="Password2" TextMode="password" class="form-control" runat="server" />
                            用户邮箱：<br>
                              <div class="input-group"> <asp:TextBox id="MailBox" class="form-control" runat="server" />
                                 <span class="input-group-addon">@</span>
                                   <select class="form-control">
                                 <option>qq.com</option>
                                 <option>163.com</option>
                                 <option>126.com</option>
                                 <option>gmail.com</option>
                                 <option>bjtu.edu.cn</option>
                              </select>
                             </div>
                                     手机号码：  <asp:TextBox id="Telephone" class="form-control" runat="server" />
                                     家庭住址：  <asp:TextBox id="Address" class="form-control" runat="server" />
                              
                              <div class="checkbox">
                                  <asp:Button id="Register" Text="注册" class="btn-color btn-normal btn-pad" runat="server" />
                              </div>
                            <!-- /input-group -->
                              
                              <!-- /input-group -->
                              
      
                           </div>
                        </div>
                     </div>
                     <div style="height:100px">
                   </div>
                  </div>
                  <!-- End 5th Row-->
                   
            </div>    
           </div>   
            <!-- Content End -->
         </div>
         
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

