<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MailValidateSuccess.aspx.cs" Inherits="Student_MailValidateSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">邮箱验证</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="index-2.html">首页</a></li>
                              <li><a href="#">个人中心</a></li>
                               <li><a href="#">邮箱验证</a></li>
                            
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
                        <h3 class="title">邮箱验证</h3>
                        <div class="row">
                          <asp:Label ID ="Validate" runat="server"></asp:Label>
                              
                              <div class="widget search-form"><!-- /input-group --></div>
                        </div>
                     <div style="height:200px"></div>
                  </div>
                  <!-- End 5th Row-->
                 </div>
               </div>
            </div>    
           </div>   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

