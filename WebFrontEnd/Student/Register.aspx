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
                            用户名：  <asp:TextBox id="Name" class="form-control" placeholder="只能输入6-20个以字母开头、可带数字、“_”、“.”的字串"  runat="server" />
                              <asp:RequiredFieldValidator ID="NameValidator1" runat="server" ValidationGroup="register"
                                  ErrorMessage ="用户名不能为空" ControlToValidate="Name" Display="Dynamic"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="NameValidator2" runat="server" ValidationGroup="register"
                                  ErrorMessage="格式不对，请输入只能输入6-20个以字母开头、可带数字、“_”、“.”的字串" ControlToValidate="Name"
                                  DisPlay="Dynamic" ValidationExpression="^[a-zA-Z]{1}([a-zA-Z0-9]|[._]){5,19}$"
                                  Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                              <asp:CustomValidator runat="server" ID="RegisteValidate" DisPlay="Dynamic"  
                                  ValidationGroup="register" OnServerValidate="RegisterValidate_ServerValidate" 
                               ErrorMessage="用户名已存在"  Font-Size="15px" ForeColor="Red"></asp:CustomValidator>
                            <br />密码：  <asp:TextBox ID="Password1" TextMode="password" class="form-control" placeholder="输入6-20位密码" runat="server" />
                              <asp:RequiredFieldValidator ID="Password1Validator1" runat="server" ValidationGroup="register"
                                  ControlToValidate="Password1" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="Password1Validator2"  runat="server"  ControlToValidate="Password1"
                                  ErrorMessage="密码6-20位" ValidationGroup="register"
                                  DisPlay="Dynamic" ValidationExpression="^.{5,19}$"
                                  Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                            <br />确认密码：  <asp:TextBox ID="Password2" TextMode="password" class="form-control" placeholder="请再次输入密码" runat="server" />
                              <asp:RequiredFieldValidator ID="Password2Validator1" runat="server" ValidationGroup="register"
                                  ControlToValidate="Password2" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:CompareValidator ID="Password2Validator2" runat="server" ValidationGroup="register"
                                  ErrorMessage="两次输入的密码不一致" ControlToCompare="Password1" ControlToValidate="Password2"
                                  Display="Dynamic" Font-Size="15px" ForeColor="Red"></asp:CompareValidator>
                           <br /> 用户邮箱：  <asp:TextBox id="MailBox" class="form-control" placeholder="请输入有效邮箱" runat="server" />
                              <asp:RequiredFieldValidator ID="MailValidator1" runat="server" ValidationGroup="register"
                                  ControlToValidate="MailBox" Display="Dynamic" ErrorMessage="不能为空"
                                  Font-Size="15px" ForeColor="Red"></asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="MailValidator2" runat="server" ValidationGroup="register"
                                   ControlToValidate="MailBox" Display="Dynamic" ErrorMessage="邮箱格式不正确"
                                   ValidationExpression="^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$"
                                    Font-Size="15px" ForeColor="Red"></asp:RegularExpressionValidator>
                              <div class="checkbox">
                                  <asp:Button id="Register" Text="注册" ValidationGroup="register" class="btn-color btn-normal btn-pad" runat="server" OnClick="Register_Click" />
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