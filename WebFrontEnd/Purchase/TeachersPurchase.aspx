<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeachersPurchase.aspx.cs" Inherits="Purchase_TeachersPurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">购买课程</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>你的位置:</li>
                              <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">会员中心</asp:HyperLink></li>
                              <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="#">购买次卡</asp:HyperLink></li>
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
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="title">选择购买</h3>
                        <!-- pricing table -->
                        <div class="p_table">
                           <!-- column style 1 -->
                           <div class="column_1">
                              <ul>
                                 <!-- column header -->
                                 <li class="header_row_1 align_center">
                                    <h2 class="col1">普通</h2>
                                 </li>
                                 <li class="header_row_2 align_center">
                                    <h1 class="col1">￥<span>299</span></h1>
                                 </li>
                                 <!-- data rows -->
                                 <li class="row_style_3 align_center">1个月</li>
                                 <li class="row_style_1 align_center"><span>免费与智能外教交流</span></li>
                                 
                                 <!-- column footer -->
                                 <li class="footer_row"><asp:Button ID="button1" Text="购买"  class="sign_up btn-color btn-small" runat="server" NavigateUrl="#" OnClick="button1_Click"/></li>
                              </ul>
                           </div>
                           <!-- column style 2 -->
                           <div class="column_2">
                              <ul>
                                 <!-- column header -->
                                 <li class="header_row_1 align_center">
                                    <h2 class="col2">高级</h2>
                                 </li>
                                 <li class="header_row_2 align_center">
                                    <h1 class="col2">￥<span>499</span></h1>
                                    
                                 </li>
                                 <!-- data rows -->
                                 <li class="row_style_3 align_center">2个月</li>
                                 <li class="row_style_1 align_center"><span>免费与智能外教交流</span></li>
                                 <!-- column footer -->
                                 <li class="footer_row"><asp:Button ID="button2" Text="购买"  class="sign_up btn-color btn-small" runat="server" NavigateUrl="#" OnClick="button2_Click"/></li>
                              </ul>
                           </div>
                           <!-- column style 3 -->
                           <div class="column_3">
                              <ul>
                                 <!-- column header -->
                                 <li class="header_row_1 align_center">
                                    <h2 class="col3">专业</h2>
                                 </li>
                                 <li class="header_row_2 align_center">
                                    <h1 class="col3">￥<span>899</span></h1>
                                   
                                 </li>
                                  <!-- data rows -->
                                 <li class="row_style_3 align_center">半年</li>
                                 <li class="row_style_1 align_center"><span>免费与智能外教交流</span></li>
                                 <!-- column footer -->
                                 <li class="footer_row"><asp:Button ID="button3" Text="购买"  class="sign_up btn-color btn-small" runat="server" NavigateUrl="#" OnClick="button3_Click"/></li>
                              </ul>
                           </div>
                           <!-- column style 4 -->
                           <div class="column_4">
                              <ul>
                                 <!-- column header -->
                                 <li class="header_row_1 align_center">
                                    <h2 class="col4">旗舰</h2>
                                 </li>
                                 <li class="header_row_2 align_center">
                                    <h1 class="col4">￥<span>1699</span></h1>
                                    
                                 </li>
                                  <!-- data rows -->
                                 <li class="row_style_3 align_center">一年</li>
                                 <li class="row_style_1 align_center"><span>免费与智能外教交流</span></li>
                                 <!-- column footer -->
                                 <li class="footer_row"><asp:Button ID="button4" Text="购买"  class="sign_up btn-color btn-small" runat="server" Height="21px" OnClick="button4_Click"/></li>
                              </ul>
                           </div>
                        </div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
                  <div class="divider"></div>
                  <!-- 4 Column End -->
                  
               </div>
            </div>
            <!-- Main Content end-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

