<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Celebrities.aspx.cs" Inherits="Student_Celebrities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">名人堂</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="../Home/Home.aspx">首页</a></li>
                              <li>名人堂</li>
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
                     <div class="posts-block col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <article>
                           <h3 class="title">VikiChat <font face="华文行楷" size="6">优秀学员榜</font></h3>
                           <div class="post-content">
                               <p style="margin: 0px 0px 1.1em; padding: 0px; font-size: 15px; line-height: 27.71875px; color: rgb(51, 51, 51); font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   Viki智能外教是一款好玩又有效的英语学习应用，让你在轻轻松松的对话聊天之间，掌握如何用英语进行交流。再也不怕“想说却说不出口”的尴尬！身边没有外教老师，没有机会和外国朋友交流？想要参加英语角，又担心自己的口语不过关，想说却说不上来？使用Viki，让你早日摆脱窘境，流利“说英语”！Viki智能外教基于智能自改进系统，你聊的时间越长，她会越智能判断并且调整和您聊天的英语水平和内容，从而实现真正的“因材施教”。Viki从上线至今已经有了几万的学员，下面是Viki的一些有代表性的优秀学员。</p>
                              <p>&nbsp;
                                  </p>
                           </div>
                        </article>
                     </div>
                     <!-- Left Section End -->
                  </div>
                  <!-- 2 Column Testimonials -->
                   <asp:DataList ID ="Information" runat="server">
                  <AlternatingItemTemplate>
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p><asp:Label id ="Title"  Text='<%#Bind("Fee_Topic") %>' runat="server"></asp:Label>
                           </p>
                            <p>
                                <asp:Label ID ="Describe" Text='<%#Bind("Fee_Detail") %>' runat="server"> </asp:Label>
                                <asp:HyperLink ID ="Link1" Target="_blank"  runat="server"/>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image ">
                                  <asp:Image ID="HeadImage1" ImageUrl='<%# Bind("Fee_Detail") %>' runat="server" />
                              <div class="testimonial-author-info">
                                 <span class="color">
                                     <asp:Label id ="Name"  Font-Names="幼圆" Font-Size="3" ForeColor="#38B0DE" Text='<%#Bind("Stu_Image") %>' runat="server"></asp:Label>
                              </div>
                           </div>
                        </div>
                     </div>
                      </div>
                  </div>
                      </AlternatingItemTemplate>
                       </asp:DataList>
                      
                
            </div>
                </div>
            <!-- Main Content end-->
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

