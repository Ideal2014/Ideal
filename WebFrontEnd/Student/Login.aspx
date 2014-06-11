<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
             
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">登录</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="index-2.html">首页</a></li>
                              <li><a href="#">登陆</a></li>
                            
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Title, Breadcrumb End-->
            <!-- Main Content start-->
            <div style="background:url(../img/slider/slider-bg-1.jpg) center top;">
            <div class="content">
               <div class="container" >
                 
                  <div class="row" >
                     <div class="col-lg-12 col-md-12">
                        <h3 class="title">用户登录</h3>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6 ">
                            账号：  
                              <asp:TextBox id="Username" class="form-control" runat="server" />
                            密码：  
                              <asp:TextBox id="Password" TextMode="password" class="form-control" runat="server" />
                           <asp:Button id="Login" Text="登录" class="btn-color btn-normal btn-pad" OnClick="Login_Click"  runat="server" />
                            <!-- /input-group -->
                              
                              <!-- /input-group -->
                              
                              <div class="widget search-form"><!-- /input-group -->
                             </div>
                           </div>
                        </div>
                     </div>
                     <div style="height:200px">
                  </div>
                  <!-- End 5th Row-->
                 </div>
               </div>
            </div>    
           </div>   
            <!-- Content End -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

