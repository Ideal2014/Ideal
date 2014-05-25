<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestPage.aspx.cs" Inherits="Test_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">

            
            <!-- Main Content start-->
            <div class="content" style=" padding-bottom:100px">
               <div class="container">
                  <div class="row">
                     <div class="posts-block col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <article class="post hentry">
                          <div class="post-content">
                           <div class="post-image"> 
                             <h2>水平测试</h2>
                           </div><div class="center png_bg">
    <div class="l_r">
        <div class="title">
            <asp:Label ID="Label1" Font-Bold="true" Font-Size="19px" runat="server" Text="第一部分：词汇语法 (基础知识)"></asp:Label></div>
    </div>
    <div class="left_2"><h4>根据题意，选择最佳答案</h4></div>
    <div class="right_2">
        <div class="title_r">
            <span id='word_index'></span>.&nbsp;<span id='name'></span>
        </div>
        <div class="box_r">
            <div><asp:RadioButton Text="A" ID="av" runat="server" GroupName="colors"/><span id='selection0'></span></div>      
            <div><asp:RadioButton Text="B" ID='bv' runat="server" GroupName="colors"/><span id='selection1'></span></div>
            <div><asp:RadioButton Text="C" ID='cv' runat="server" GroupName="colors"/><span id='selection2'></span></div>
            <div><asp:RadioButton Text="D" ID='dv' runat="server" GroupName="colors"/><span id='selection3'></span></div>
              
        </div>
    </div>
</div>
          
                           <ul class="pager">
  
  <li>
      <asp:HyperLink ID="next" runat="server" NavigateUrl="~/Test/../Test/TestPage.aspx">Next</asp:HyperLink>
      </li>
</ul>
                          </div>
                        </article>
                     </div>
                     <!-- Left Section End -->
                  </div>
               </div>
            </div>
            <!-- Main Content end-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

