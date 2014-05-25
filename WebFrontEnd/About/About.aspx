<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    <div id="main">
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">关于我们</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>您的位置:</li>
                              <li><a href="../Home/Home.aspx">首页</a></li>
                              <li>关于我们</li>
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
                     <div class="posts-block col-lg-8 col-md-8 col-sm-6 col-xs-12">
                        <article>
                           <h3 class="title">我们是谁?</h3>
                           <div class="post-content">
                              <div class="img-content">
                                 <img src="../img/team/team.jpg" alt="">
                              </div>
                              <p>
                                 Viki智能外教是一款好玩又有效的英语学习应用，让你在轻轻松松的对话聊天之间，掌握如何用英语进行交流。再也不怕“想说却说不出口”的尴尬！身边没有外教老师，没有机会和外国朋友交流？想要参加英语角，又担心自己的口语不过关，想说却说不上来？使用Viki，让你早日摆脱窘境，流利“说英语”！Viki智能外教基于智能自改进系统，你聊的时间越长，她会越智能判断并且调整和您聊天的英语水平和内容，从而实现真正的“因材施教”。Viki支持语音输入，体验与外教交流，让你开口说英语，智能拼写及语法纠错，及时发现改正你的坏习惯，内置在线翻译功能，支持整段长句翻译，无需预约，随时开始，不分昼夜 ，不限地点。
                              </p>
                              <br>
                              <p>
                                 智能移动辅助语言学习交互环境（IMALLE）技术使用人工智能、自然语言处理等技术，在移动终端上提供交互式的学习环境，帮助用户有效学习。 该技术的主要功能点在于使得人机交互具有智能的特点。这就涉及到对话的策略,以及要求系统不仅能够理解自然语言,而且能够作出适当的回答。对话处理的难点之一是对话中的有些语句不符合语法规则,必须借助于上下文环境才能够正确理解。 普通的智能教学系统应具备的关于对话的三种知识:a)系统需知道对话的模式,也就是独立于说话者的语言表达的类型,这些模式可用来解释或产生人机对话;b)系统应懂得所讨论的主题;c)系统应能够作出适当回答,在适当时刻为学生产生正确的信息。Viki智能外教所拥有的独有算法在原有的技术基础上，提高了智能的水平，回答问题的准确性更高。
                              </p>
                           </div>
                        </article>
                     </div>
                     <!-- Left Section End -->
                     <!-- Skill Section Start -->
                     <div class="skills col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <h3 class="title">适用设备</h3>
                        <div class="progress">
                           <div class="progress-bar" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">iOS 7.0 及以上操作系统的全型号iPhone</div>
                        </div>
                        <div class="progress">
                           <div class="progress-bar" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">Android 2.2 及以上操作系统的安卓移动设备</div>
                        </div>
                        <div class="progress">
                           <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">其他用户可添加微信公众账号：teacher_viki</div>
                        </div>
                     </div>
                     <!-- Skill Section Start -->
                     <div class="clearfix"></div>
                  </div>
                  <div class="divider"></div>
                  <div class="row">
                     <div class="col-lg-12">
                        <h3 class="title">我们的成长</h3>
                     </div>
                     <div class="clearfix"></div>
                     <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 animate_afl">
                        <h4>过去3年的成就</h4>
                        <p>
                           从Viki上线以来，Viki的功能一直在不断完善中，增加了智能拼写及语法纠错，及时发现改正使用者的坏习惯，内置了在线翻译功能，支持整段长句翻译，Viki的用户数量也一直在增加。右图展示了Viki三年来的用户数量的变化。
                        </p>                      
                     </div>
                     <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 animate_afr">
                        <ul class="graph-container">
                           <li>
                              <span>2011</span>
                              <div class="bar-wrapper">
                                 <div class="bar-container">
                                    <div class="bar-background"></div>
                                    <div class="bar-inner">25</div>
                                    <div class="bar-foreground"></div>
                                 </div>
                              </div>
                           </li>
                           <li>
                              <span>2012</span>
                              <div class="bar-wrapper">
                                 <div class="bar-container">
                                    <div class="bar-background"></div>
                                    <div class="bar-inner">50</div>
                                    <div class="bar-foreground"></div>
                                 </div>
                              </div>
                           </li>
                           <li>
                              <span>2013</span>
                              <div class="bar-wrapper">
                                 <div class="bar-container">
                                    <div class="bar-background"></div>
                                    <div class="bar-inner">75</div>
                                    <div class="bar-foreground"></div>
                                 </div>
                              </div>
                           </li>                         
                           <li>
                              <ul class="graph-marker-container">
                                 <li style="bottom:25%;"><span>25%</span></li>
                                 <li style="bottom:50%;"><span>50%</span></li>
                                 <li style="bottom:75%;"><span>75%</span></li>
                                 <li style="bottom:100%;"><span>100%</span></li>
                              </ul>
                           </li>
                        </ul>
                     </div>
                  </div>               
                  <div class="divider"></div>
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="title">我们的团队</h3>
                        <div class="row team">
                           <!-- item 1 -->
                           <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 item animate_afc d1">
                              <div class="team-member">
                                 <div class="team-member-holder">
                                    <div class="team-member-image">
                                       <img alt="" src="../img/team/team-member-1.jpg"/>
                                       <div class="team-member-links">
                                          <div class="team-member-links-list">
                                             <a target="_blank" class="facebook team-member-links-item" href="#"><i class="icon-facebook"></i></a>
                                             <a target="_blank" class="twitter team-member-links-item" href="#"><i class="icon-twitter"></i></a>
                                             <a target="_blank" class="linkedin team-member-links-item" href="#"><i class="icon-linkedin"></i></a>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="team-member-meta">
                                       <h4 class="team-member-name">Albert</h4>
                                       <div class="team-member-role">专长雅思IELTS英语</div>
                                       <div class="team-member-description">
                                          <p>全球超过7,000所机构认可雅思成绩，无论你想留学、移民、就业，还是检测英语水平；无论你想去英国，澳大利亚，新西兰，美国，加拿大，还是荷兰，法国，德国，瑞士，瑞典，新加坡，香港，马来西亚，日本，南非等；你只需要一项英语考试--雅思考试。</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- End -->
                           <!-- item 2 -->
                           <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 item animate_afc d2">
                              <div class="team-member">
                                 <div class="team-member-holder">
                                    <div class="team-member-image">
                                       <img alt="" src="../img/team/team-member-2.jpg"/>
                                       <div class="team-member-links">
                                          <div class="team-member-links-list">
                                             <a target="_blank" class="facebook team-member-links-item" href="#"><i class="icon-facebook"></i></a>
                                             <a target="_blank" class="twitter team-member-links-item" href="#"><i class="icon-twitter"></i></a>
                                             <a target="_blank" class="linkedin team-member-links-item" href="#"><i class="icon-linkedin"></i></a>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="team-member-meta">
                                       <h4 class="team-member-name">Viki</h4>
                                       <div class="team-member-role">专长日常英语会话交流</div>
                                       <div class="team-member-description">
                                          <p>也许有时你会苦恼，没有一个伙伴和你一起学习，与你一问一答，让你在枯燥的学习中收获乐趣，更学到知识。Viki正是为此而诞生的。她知晓《和外教聊天记单词-日常交流1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- End -->
                           <!-- item 3 -->
                           <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 item animate_afc d3">
                              <div class="team-member">
                                 <div class="team-member-holder">
                                    <div class="team-member-image">
                                       <img alt="" src="../img/team/team-member-3.jpg"/>
                                       <div class="team-member-links">
                                          <div class="team-member-links-list">
                                             <a target="_blank" class="facebook team-member-links-item" href="#"><i class="icon-facebook"></i></a>
                                             <a target="_blank" class="twitter team-member-links-item" href="#"><i class="icon-twitter"></i></a>
                                             <a target="_blank" class="linkedin team-member-links-item" href="#"><i class="icon-linkedin"></i></a>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="team-member-meta">
                                       <h4 class="team-member-name">Olivia</h4>
                                       <div class="team-member-role">专长大学英语四六级</div>
                                       <div class="team-member-description">
                                          <p>Olivia是著名的英语单词记忆教材：《和外教聊天记单词-四六级必考1000词》的配套学习伴侣。她知晓《和外教聊天记单词-四六级必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- End -->
                           <!-- item 4 -->
                           <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 item animate_afc d4">
                              <div class="team-member">
                                 <div class="team-member-holder">
                                    <div class="team-member-image">
                                       <img alt="" src="../img/team/team-member-4.jpg"/>
                                       <div class="team-member-links">
                                          <div class="team-member-links-list">
                                             <a target="_blank" class="facebook team-member-links-item" href="#"><i class="icon-facebook"></i></a>
                                             <a target="_blank" class="twitter team-member-links-item" href="#"><i class="icon-twitter"></i></a>
                                             <a target="_blank" class="linkedin team-member-links-item" href="#"><i class="icon-linkedin"></i></a>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="team-member-meta">
                                       <h4 class="team-member-name">Peter</h4>
                                       <div class="team-member-role">专长商务会话英语</div>
                                       <div class="team-member-description">
                                          <p>商务英语是以适应职场生活的语言要求为目的，内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念。</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!-- End -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Main Content end-->
            <!-- Our Clients Start-->
            <div class="our-clients">
               <div class="container">
                  <div class="row">
                     <div class="client">
                        <div class="client-logo">
                           <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                              <div class="clients-title">
                                 <h3 class="title">我们的学员来自</h3>
                                 <div class="carousel-controls pull-right">
                                    <a class="prev" href="#client-carousel" data-slide="prev"><i class="icon-angle-left"></i></a>
                                    <a class="next" href="#client-carousel" data-slide="next"><i class="icon-angle-right"></i></a>
                                    <div class="clearfix"></div>
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                              <div class="row">
                                 <div id="client-carousel" class="client-carousel slide">
                                    <div class="carousel-inner">
                                       <div class="item active">
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d1">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client1.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d2">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client2.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d3">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client3.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d4">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client4.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d5">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client5.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item animate_afc d6">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client6.jpg"/></a></div>
                                          </div>
                                       </div>
                                       <div class="item">
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client7.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client8.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client9.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client10.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client11.jpg"/></a></div>
                                          </div>
                                          <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/clientslogo/client12.jpg"/></a></div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Our Clients End --> 
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
      <script src="../js/jquery.min.js"></script>
      <script src="../js/bootstrap.js"></script>
      <script src="../js/jquery.parallax.js"></script> 
      <script src="../js/modernizr-2.6.2.min.js"></script> 
      <script src="../js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>
      <script src="../js/jquery.nivo.slider.pack.js"></script>
      <script src="../js/jquery.prettyPhoto.js"></script>
      <script src="../js/superfish.js"></script>
      <script src="../js/tweetMachine.js"></script>
      <script src="../js/tytabs.js"></script>
      <script src="../js/jquery.sticky.js"></script>
      <script src="../js/jflickrfeed.js"></script>
      <script src="../js/imagesloaded.pkgd.min.js"></script>
      <script src="../js/waypoints.min.js"></script>
      
      <script src="../js/jquery.gmap.min.js"></script>
      <script src="../js/custom.js"></script>
</asp:Content>

