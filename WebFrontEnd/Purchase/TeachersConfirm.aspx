<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeachersConfirm.aspx.cs" Inherits="Purchase_TeachersConfirm" %>

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
            <div class="content" style="padding-bottom:200px">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="title">选择购买</h3>
                        <!-- pricing table -->
                        <div id="pay_area" class="userpay" style="display:'none'">
          <h3 class="zhifu_title"></h3>
                    <div style="float:left; width:100%">
                    <h2>专业版 ￥899</h2>
                      <p></p>
                      <p>&nbsp;</p>
                    
                    </div>
                        <div style="float:left">     
                    <h4>平台支付</h4>
          <ul style="list-style:none; display:block">
						            <li style="float:left">
             <asp:RadioButton ID="RadioButton1" name="payMethod" runat="server" Text="" />
&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="http://static.51talk.com/images/bank/alipay.png" ImageAlign="AbsMiddle"/></li>
          </ul>
          
                       </div>
                       <div style="width:100%;float:left; padding-top:20px">
                           <asp:Button ID="Button1" class=" btn btn-color btn-group-lg" style="margin-left:120px" runat="server" Text="继续" />
                            </div>
                       </div>
                       </div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
                  <!-- 4 Column End -->
                  
               </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

