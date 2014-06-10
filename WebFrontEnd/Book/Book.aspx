<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <!-- Content Start -->
         
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">课程设置与推荐教材</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="../Home/Home.aspx">首页</a></li>
                              <li><a href="#">课程教材</a></li>
                              <li>课程设置和推荐教材</li>
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
                     <div class="posts-block col-lg-12 col-md-12 col-sm-12 col-xs-12" id="course1">
                        <asp:GridView ID="GridBook" BorderColor="White" ShowHeader="false" CssClass="table table-bordered" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField ItemStyle-CssClass="center" ItemStyle-Width="12%">
                                        <ItemTemplate>
                                            <span style="border:none">
                                                <asp:Image ID="ImageT" runat="server" ImageUrl='<%#Bind("Boo_Image") %>' />
                                            </span>
                                        </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-CssClass="center" ItemStyle-Width="50%">
                                        <ItemTemplate>
                                            <span style="border:none">
                                                <div class="post-content-wrap">
                                                    <header class="post-header">
                                                    <div class="post-date"></div>
                                                        
                                                    <a class="content-title" href="../Book/Book.aspx"><asp:Label ID="LabelBName" Font-Size="XX-Large" runat="server" Text='<%#Bind("Boo_Name") %>' /></a>
                                                    <div class="blog-entry-meta">
                                                        <div class="blog-entry-meta-author">
                                                            <i class="icon-user"></i>
                                                            <a href="teachers.html" class="blog-entry-meta-author"><asp:Label ID="LabelTName" runat="server" Text='<%#Bind("Tea_Name") %>' /></a>
                                                        </div>
                                                        <div class="blog-entry-meta-comments">
                                                        </div>
                                                    </div>
                                                    </header>
                                                    <div class="post-content">
                                                        <p>
                                                            <asp:Label ID="LabelDes" runat="server" Text='<%#Bind("Boo_Desribe") %>' />
                                                        </p>
                                                    </div>
                                                </div>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField ItemStyle-CssClass="center" ItemStyle-Width="30%">
                                        <ItemTemplate>
                                            <span style="border:none">
                                                <asp:Button CssClass="btn-color btn-normal btn-pad" CommandName="LinkPart" CommandArgument='<%#Eval("Boo_Preview") %>' ID="DownloadPart" runat="server" OnCommand="DownloadPart_Command" Text="下载试读样章"></asp:Button>
                                                <asp:Button CssClass="btn-color btn-normal btn-pad" ID="DownloadAll" CommandArgument='<%#Eval("Boo_View") %>' OnCommand="DownloadAll_Command" runat="server" Text="下载完整版"></asp:Button>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        
                     </div>

                     <!-- Sidebar End -->     
                  </div>
               </div>
            </div>
    <br />
    <br />
            <!-- Main Content end-->
         
         <!-- Content End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
    <!-- The Scripts -->
      <script src="js/jquery.min.js"></script>
      <script src="js/bootstrap.js"></script>
      <script src="js/jquery.parallax.js"></script> 
      <script src="js/modernizr-2.6.2.min.js"></script> 
      <script src="js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
      <script src="js/jquery.nivo.slider.pack.js"></script>
      <script src="js/jquery.prettyPhoto.js"></script>
      <script src="js/superfish.js"></script>
      <script src="js/tweetMachine.js"></script>
      <script src="js/tytabs.js"></script>
      <script src="js/jquery.sticky.js"></script>
      <script src="js/jflickrfeed.js"></script>
      <script src="js/imagesloaded.pkgd.min.js"></script>
      <script src="js/waypoints.min.js"></script>
      
      <script src="js/jquery.gmap.min.js"></script>
      <script src="js/custom.js"></script>
         <script>
             $(document).ready(function () {
                 $("body").removeClass("home");
                 $("body").addClass("blog blog-small");
             });
   </script>
</asp:Content>

