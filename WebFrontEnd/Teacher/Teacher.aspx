<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Teacher.aspx.cs" Inherits="Teacher_Teacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="Server">
    <!-- Content Start -->
    <div id="main">
        <!-- Title, Breadcrumb Start-->
        <div class="breadcrumb-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">智能外教团队</h2>
                    </div>
                    <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                            <ul>
                                <li>你的位置:</li>
                                <li><a href="index-2.html">首页</a></li>
                                <li><a href="#">外教团队</a></li>
                                <li>外教团队</li>
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
                            <h3 class="title">我们强大的外教团队</h3>
                            <div class="post-content">
                                <p>
                                    我们拥有强大的外教团队，他们都从事英语教学工作多年，拥有丰富的经验。而且他们是在一直学习的，随着你和他们交流的增多，他们会越来越聪明。
                                </p>
                            </div>
                        </article>
                    </div>
                    <!-- Left Section End -->
                </div>
                <div class="divider"></div>
                <div class="row">
                    <!-- 2 Column Testimonials -->
                    <asp:Repeater runat="server" ID="TeacherList">
                        <ItemTemplate>
                            <div class='col-lg-5 col-md-5 col-sm-5 col-xs-5'>
                                <div class='testimonial item'>
                                    <p>
                                        <img src='<%#Eval("Tea_Image")%>'></br><label><%#Eval("Tea_Describe")%><label>
                                    </p>
                                    <div class='testimonials-arrow'></div>
                                    <div class='author'>
                                        <div class='testimonial-image '>
                                            <img src='<%#Eval("Tea_SImage")%>' />
                                        </div>
                                        <div class='testimonial-author-info'><span class='color'><a href='../Teacher/TeacherMemTeaInfo.aspx?TeaID=" + t.Tea_ID + "'><%#Eval("Tea_Name")%></a></span></div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
                <!-- 2 Column Testimonials End-->
            </div>
        </div>
        <!-- Main Content end-->
    </div>
    <!-- Content End -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
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
</asp:Content>

