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
                        <article class="post hentry">
                           <div class="post-image" style=" background:none; border:none; width:auto; height:auto">
                             
                              <img src="../img/books/cover-orange.png" alt="">
                             
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date"></div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">日常会话</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">Viki</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">日常会话</a>,
                                   
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadPart1" runat="server" Text="下载试读样章"></asp:Button>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadAll1" runat="server" Text="下载完整版"></asp:Button>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image" style=" background:none; border:none; width:auto; height:auto">
                             
                              <img src="../img/books/cover-pink.png" alt="">
                             
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date"></div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">雅思英语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">Albert</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">雅思必考1000词</a>,
                                      
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                  全球超过7,000所机构认可雅思成绩！跟着Albert学英语，能够有效帮助攻克雅思考试中最至关重要的听力和口语两关，Albert会用最纯正的欧美思维让你抛开解题与技巧，真正地置身“异国”，体验“与人交流”的乐趣。
                                 </p>
                              </div>
                           </div>
                           <div>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadPart2" runat="server" Text="下载试读样章"></asp:Button>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadAll2" runat="server" Text="下载完整版"></asp:Button>
                           </div>
                           <div class="clearfix"></div>
                       </article>
                        <div class="blog-divider"></div>
                       <article class="post hentry">
                           <div class="post-image" style=" background:none; border:none; width:auto; height:auto">
                             
                              <img src="../img/books/cover-red.png" alt="">
                             
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date"></div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">英语四六级</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">Olivia</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">四六级必背1000词</a>,
                                  
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    Olivia知晓《和外教聊天记单词-四六级必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。学习考试从此不再枯燥单调，而是有了陪读的同伴，阅读、听力，不再是问题！过四六级，再也不难！
                                 </p>
                              </div>
                           </div>
                           <div>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadPart3" runat="server" Text="下载试读样章"></asp:Button>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadAll3" runat="server" Text="下载完整版"></asp:Button>
                           </div>
                           <div class="clearfix"></div>
                       </article>
                        <div class="blog-divider"></div>
                      <article class="post hentry">
                           <div class="post-image" style=" background:none; border:none; width:auto; height:auto">
                             
                              <img src="../img/books/cover-green.png" alt="">
                             
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date"></div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">商务英语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">Perter</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">商务英语1000词</a>,
                                     
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                   商务英语是以适应职场生活的语言要求为目的，内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念，包括如何和外国人打交道，如何和他们合作、工作的方式方法，以及他们的生活习惯等。
                                 </p>
                              </div>
                           </div>
                           <div>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadPart4" runat="server" Text="下载试读样章"></asp:Button>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadAll4" runat="server" Text="下载完整版"></asp:Button>
                           </div>
                           <div class="clearfix"></div>
                       </article>
                        <div class="blog-divider"></div>
                       <article class="post hentry">
                           <div class="post-image" style=" background:none; border:none; width:auto; height:auto">
                             
                              <img src="../img/books/cover-purple.png" alt="">
                             
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date"></div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">高考英语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">Daniel</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">高考必考1000词</a>,
                                     
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    高考英语要求学生掌握3000-4000的词汇量以及一些中高级词汇，熟悉常见单词和词组的正确用法，掌握书面使用技巧和一定会话能力，涉及听、说、读、写多个方面。在一对一的情景对话交流中，熟悉并掌握高考英语中可能会出现的单词、词组和句法，轻松战胜高考英语。
                                 </p>
                              </div>
                           </div>
                           <div>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadPart5" runat="server" Text="下载试读样章"></asp:Button>
                           <asp:Button CssClass="btn btn-normal" ID="DownloadAll5" runat="server" Text="下载完整版"></asp:Button>
                           </div>
                           <div class="clearfix"></div>
                       </article>
                        <div class="blog-divider"></div>
                        <div class="pagination-centered">
                           
                        </div>
                     </div>


                      <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12" id="course2" style="display:none">
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post1.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post1.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name="businessEnglish"><strong>18</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">面试口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post3.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post3.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name="ysSpoken"><strong>12</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">托福口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post2.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post2.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name ="child"><strong>05</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">雅思口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post4.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post4.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html"><strong>27</strong><i>八月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">新托福口语</font></font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post5.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post5.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html"><strong>10</strong><i>八月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">面试口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <div class="pagination-centered">
                           <ul class="pagination">
                              <li class="disabled"><a href="#">«</a></li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li><a href="#">»</a></li>
                           </ul>
                        </div>
                     </div>


                      <div class="posts-block col-lg-9 col-md-9 col-sm-8 col-xs-12" id="course3" style="display:none">
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post1.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post2.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name="businessEnglish"><strong>18</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">商务英语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post3.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post1.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name="ysSpoken"><strong>12</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">雅思口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post2.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post4.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html" name ="child"><strong>05</strong><i>九月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">少儿口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post4.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post3.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html"><strong>27</strong><i>八月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">新托福口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <article class="post hentry">
                           <div class="post-image">
                              <a href="../img/blog/blog-post5.jpg" data-rel="prettyPhoto">
                              <span class="img-hover"></span>
                              <span class="fullscreen"><i class="icon-search"></i></span>
                              <img src="../img/blog/blog-post5.jpg" alt="">
                              </a>
                           </div>
                           <div class="post-content-wrap">
                              <header class="post-header">
                                 <div class="post-date">
                                    <a class="date" href="member-reserve.html"><strong>10</strong><i>八月</i></a>
                                 </div>
                                 <a class="content-title" href="../Book/Book.aspx"><font size="6" face="微软雅黑">面试口语</font></a>
                                 <div class="blog-entry-meta">
                                    <div class="blog-entry-meta-author">
                                       <i class="icon-user"></i>
                                       <a href="teachers.html" class="blog-entry-meta-author">John Doe</a>
                                    </div>
                                    <div class="blog-entry-meta-tags">
                                       <i class="icon-tags"></i>
                                       <a href="member-purchase.html">Web Design</a>,
                                       <a href="member-purchase.html">Branding</a>
                                    </div>
                                    <div class="blog-entry-meta-comments">
                                       
                                       
                                    </div>
                                 </div>
                              </header>
                              <div class="post-content">
                                 <p>
                                    从全世界来看，说英语的人数已经超过了任何语言的人数，10多个国家以英语为母语，45个国家的官方语言是英语，世界三分之一的人口（二十几亿）讲英语。比如在日本，除了他们的本国母语——日语之外，英语是他们的第二语言，很多高层次的日本人以会说英语为荣。
                                 </p>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </article>
                        <div class="blog-divider"></div>
                        <div class="pagination-centered">
                           <ul class="pagination">
                              <li class="disabled"><a href="#">«</a></li>
                              <li class="active"><a href="#">1</a></li>
                              <li><a href="#">2</a></li>
                              <li><a href="#">3</a></li>
                              <li><a href="#">4</a></li>
                              <li><a href="#">5</a></li>
                              <li><a href="#">»</a></li>
                           </ul>
                        </div>
                     </div>
                  
                     <!-- Sidebar End -->     
                  </div>
               </div>
            </div>
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
</asp:Content>

