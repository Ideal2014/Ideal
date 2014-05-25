<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" Runat="Server">
    
            <!-- Slider Start-->
            <div class="fullwidthbanner-container">
               <div class="fullwidthbanner rslider">
                  <ul>
                     <!-- THE FIRST SLIDE -->
                     <li data-delay="6000" data-masterspeed="300" data-transition="fade">
                        <div class="slotholder"><img src="../img/slider/slider-bg-1.jpg" data-fullwidthcentering="on" alt="Pixma"/></div>
                        <div class="caption modern_big_bluebg h1 lft tp-caption start"
                           data-x="40"
                           data-y="85"
                           data-speed="700"
                           data-endspeed="800"
                           data-start="1000"
                           data-easing="easeOutQuint"
                           data-endeasing="easeOutQuint">
                           <h3>ViKi Chat</h3>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="1400" 
                           data-speed="1050" 
                           data-y="180" 
                           data-x="40">
                           <div class="list-slide">
                              <i class="icon-camera slide-icon"></i>
                              <h5 class="dblue"> 最智能的英语教练 </h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="1800" 
                           data-speed="1200" 
                           data-y="220" 
                           data-x="40">
                           <div class="list-slide">
                              <i class="icon-search slide-icon"></i>
                              <h5 class="dblue"> 带你走向国际化 </h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="2200" 
                           data-speed="1350" 
                           data-y="260" 
                           data-x="40">
                           <div class="list-slide">
                              <i class="icon-code slide-icon"></i>
                              <h5 class="dblue"> 二千的最佳助手 </h5>
                           </div>
                        </div>
                        <div class="caption lfb caption_button_1 fadeout tp-caption start"
                           data-x="40"
                           data-y="330"
                           data-speed="900"
                           data-endspeed="300"
                           data-start="2700"
                           data-hoffset="-70"
                           data-easing="easeOutExpo">
                           <a class="btn-special hidden-xs btn-grey" href="../About/About.aspx">了解更多</a>
                        </div>
                        <div class="caption lfb caption_button_2 fadeout tp-caption start"
                           data-x="210"
                           data-y="330"
                           data-speed="800"
                           data-endspeed="300"
                           data-start="2900"
                           data-hoffset="70"
                           data-easing="easeOutExpo">
                           <a class="btn-special hidden-xs btn-color" href="../Teacher/TeacherMemRobot.aspx">现在就开始吧</a>
                        </div>
                     </li>
                     <!-- THE RESPONSIVE SLIDE -->
                     <li data-transition="fade" data-slotamount="1" data-masterspeed="300">
                        <img src="../img/slider/slider-bg-2.jpg" data-fullwidthcentering="on" alt=""/>
                        <div class="caption large_text sft"
                           data-x="660"
                           data-y="54"
                           data-speed="300"
                           data-start="800"
                           data-easing="easeOutExpo"  >我们</div>
                        <div class="caption medium_text sfl"
                           data-x="689"
                           data-y="92"
                           data-speed="300"
                           data-start="1100"
                           data-easing="easeOutExpo"  >的</div>
                        <div class="caption large_text sfr"
                           data-x="738"
                           data-y="88"
                           data-speed="300"
                           data-start="1100"
                           data-easing="easeOutExpo"  ><span class="dblue">特色</span></div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="1400" 
                           data-speed="1050" 
                           data-y="180" 
                           data-x="660">
                           <div class="list-slide">
                              <i class="icon-eye-open slide-icon"></i>
                              <h5>智能外教 </h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="1800" 
                           data-speed="1200" 
                           data-y="220" 
                           data-x="660">
                           <div class="list-slide">
                              <i class="icon-table slide-icon"></i>
                              <h5> 标准发音</h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="2200" 
                           data-speed="1350" 
                           data-y="260" 
                           data-x="660">
                           <div class="list-slide">
                              <i class="icon-ok slide-icon"></i>
                              <h5> 解闷除忧 </h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="2600" 
                           data-speed="1350" 
                           data-y="300" 
                           data-x="660">
                           <div class="list-slide">
                              <i class="icon-twitter slide-icon"></i>
                              <h5> 风趣幽默 </h5>
                           </div>
                        </div>
                        <div class="caption list_slide lfb tp-caption start" 
                           data-easing="easeOutExpo" 
                           data-start="3000" 
                           data-speed="1350" 
                           data-y="340" 
                           data-x="660">
                           <div class="list-slide">
                              <i class="icon-th slide-icon"></i>
                              <h5> 随传随到 </h5>
                           </div>
                        </div>
                        <div class="caption lfl"
                           data-x="53"
                           data-y="30"
                           data-speed="300"
                           data-start="1400"
                           data-easing="easeOutExpo">
                           <img src="../img/slider/net.jpg" alt="iMac Responsive" height="186" width="400"/>
                        </div>
                        <div class="caption lfl"
                           data-x="323"
                           data-y="145"
                           data-speed="300"
                           data-start="1500"
                           data-easing="easeOutExpo">
                           <img src="../img/slider/phones.png" alt="iPad Responsive" height="163" width="110"/>
                        </div>
                     </li>
                  </ul>
               </div>
            </div>
            <!-- Slider End--> 
            <!-- Slogan Start-->
            <div class="slogan bottom-pad-small">
               <div class="container">
                  <div class="row">
                     <div class="slogan-content"></div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
               </div>
            
            <!-- Slogan End--> 
            <!-- Main Content start-->
            <div class="main-content">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="content-box big ch-item bottom-pad-small">
                           <div class="ch-info-wrap">
                              <div class="ch-info">
                                 <div class="ch-info-front ch-img-1"><i class="icon-fullscreen"></i></div>
                                 <div class="ch-info-back">
                                    <i class="icon-fullscreen"></i>
                                 </div>
                              </div>
                           </div>
                           <div class="content-box-info">
                              <h3>用户</h3>
                              
                              <label>用户名:</label>
                               <asp:TextBox id="Username" class="formcontrol"  placeholder="请输入用户名" runat="server" />
                                 <br />
                                <label>密&nbsp;&nbsp;&nbsp;码:</label>
                               <asp:TextBox id="Password" TextMode="password" class="formcontrol" placeholder="请输入密码" runat="server" />
                                <br />
                               <asp:Button id="Login" Text="登录" class = "btn-small btn-color submit  bottom-pad"  runat="server" />
                               <asp:Button id="Cancle" Text="取消" class="btn-small btn-color cancle  bottom-pad" type ="cancle" runat="server" />
                               <br />
                              <a href="#">忘记密码？ <i class="icon-angle-right"></i><i class="icon-angle-right"></i></a>
                              <a href="../Student/Register.aspx">注册 <i class="icon-angle-right"></i><i class="icon-angle-right"></i></a>
                           </div>
                        </div>
                     </div>
                    
                     <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="content-box big ch-item">
                           <div class="ch-info-wrap">
                              <div class="ch-info">
                                 <div class="ch-info-front ch-img-1"><i class="icon-eye-open"></i></div>
                                 <div class="ch-info-back">
                                    <i class="icon-eye-open"></i>
                                 </div>
                              </div>
                           </div>
                           <div class="content-box-info">
                              <h3>媒体报道</h3>
                              <h5>
                                 2015年，Viki Chat 成功上市，让我们来共同探究其成功的秘密。
                              </h5>
                              <p>
                              Viki Chat 是由郑同学带领开发的智能外教，不仅可以陪你聊天，而且是一个随身翻译。这样，你走出国门都不用担心不会和外国佬交流啦。
                              </p>
                              <p>智能移动辅助语言学习交互环境（IMALLE）的实现，大数据支持智能解释功能和智能语法检查纠错功能的实现，基于数据挖掘与机器学习的人机对话策略的优化，是这个项目成功的关键...</p>
                              <a href="http://www.baidu.com/baidu?word=viki%20chat" target="_blank">了解更多 <i class="icon-angle-right"></i><i class="icon-angle-right"></i></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Main Content end--> 
            <!-- 外教团队 start-->
            <div class="recentworks bottom-pad">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 animate_afl d1">
                        <div class="portfolio-desc">
                           <h3 class="title"><a href="teachers.html">智能外教</a></h3>
                           <p>我们的外教有着纯正的发音，聪明的智慧，将是你英语学习的好伙伴。并且我们有着多种人物的设定，总有一个外教会是你喜欢的型。</p>
                           <div class="carousel-controls">
                              <a class="prev" href="#portfolio-carousel" data-slide="prev"><i class="icon-angle-left"></i></a>
                              <a class="next" href="#portfolio-carousel" data-slide="next"><i class="icon-angle-right"></i></a>
                              <div class="clearfix"></div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-9 col-md-9 col-xs-12">
                        <div class="row">
                           <div id="portfolio-carousel" class="portfolio-carousel slide">
                              <div class="carousel-inner">
                                 <div class="item active">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d2">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-1@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span>
                                          <span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-1@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Viki</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">女，20岁，美国</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d3">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-2@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-2@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Olivia</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">女，22岁，澳大利亚</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d4">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-3@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-3@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Stephanie</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">女，28岁，美国</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                 </div>
                                 <div class="item">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-4@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-4@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Peter</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">男，30岁，英国</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-5@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-5@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Daniel</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">男，40岁，英国</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item">
                                       <div class="portfolio-item">
                                          <a href="../img/teacher/teacher-6@2x.png" class="portfolio-item-link" data-rel="prettyPhoto" >
                                          <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="icon-search"></i></span><img src="../img/teacher/teacher-6@2x.png" alt=" "/>
                                          </a>
                                          <div class="portfolio-item-title">
                                             <a href="teachers.html"><font style="color:blue">Albert</font></a>
                                             <p>
                                                <font face="华文新魏" style="font-style:normal" size="2">男，29岁，英国</font>
                                             </p>
                                          </div>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- 智能外教 end-->
             
            <!-- Our Clients Start-->
            <div class="our-clients">
               <div class="container">
                  <div class="row">
                     <div class="client">
                        <div class="client-logo">
                           <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                              <div class="clients-title">
                                 <h3 class="title"><a href="../Book/Book.aspx">配套教材</a></h3>
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
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d1">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-orange.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d2">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-green.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d3">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-red.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d4">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-blue.png"/></a></div>
                                          </div>
                                       </div>
                                       <div class="item">
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-green.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-red.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-purple.png"/></a></div>
                                          </div>
                                          <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                             <div class="item-inner"><a href="#"><img alt="Upportdash" src="../img/books/cover-pink.png"/></a></div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                              <!-- Testimonials Widget Start -->
                              <div class="row ">
                                 <div class="testimonials widget">
                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                       <div class="testimonials-title">
                                          <h3 class="title"><a href="../Student/Celebrities.aspx">名人堂</a></h3>
                                       </div>
                                    </div>
                                    <div class="clearfix"></div>
                                    <div id="testimonials-carousel" class="testimonials-carousel slide animate_afr d5">
                                       <div class="carousel-inner">
                                          <div class="item active">
                                             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="testimonial item">
                                                   <p><a href="celebrity_detail.html" target="_blank">
                                                      雅思成绩：总分8分，听力9分，阅读8分，口语7.5分<br>
                                                      我觉得，Viki的针对性非常强。对我的帮助非常大：一是授课的老师发音非常标准，通过和viki的外教对话...
                                                       </a>
                                                   </p>
                                                   <div class="testimonials-arrow">
                                                   </div>
                                                   <div class="author">
                                                      <div class="testimonial-image "><img alt="" src="../img/celebrity/teamm1.jpg"/></div>
                                                      <div class="testimonial-author-info">
                                                         <a href="celebrity.html"><span class="color">刘菲</span></a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="item">
                                             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="testimonial item">
                                                   <p><a href="celebrity_detail.html" target="_blank">
                                                      雅思成绩：听力9分，口语7分<br>
听力和口语对我来说是难点，通过Viki，我和外教在线交流，锻炼了我的听力和口语。听力练习是个长期的过程，大家一定要坚持下来...
                                                       </a>
                                                   </p>
                                                   <div class="testimonials-arrow">
                                                   </div>
                                                   <div class="author">
                                                      <div class="testimonial-image "><img alt="" src="../img/celebrity/teamm2.jpg"/></div>
                                                      <div class="testimonial-author-info">
                                                         <a href="celebrity.html"><span class="color">杜衡</span></a>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="item">
                                             <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                <div class="testimonial item">
                                                   <p><a href="celebrity_detail.html" target="_blank">
                                                      托福成绩：托福105分 听力30分<br>
听力必须重点练习，因为听力在口语中还都会涉及，我就是听力特别好占了很大的便宜，如果时间多最好能每天都进行练习...</a>
                                                   </p>
                                                   <div class="testimonials-arrow">
                                                   </div>
                                                   <div class="author">
                                                      <div class="testimonial-image "><img alt="" src="../img/celebrity/teamm3.jpg"/></div>
                                                      <div class="testimonial-author-info">
                                                         <a href="celebrity.html"><span class="color">张晓牧</span></a>
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
                     </div>
                  </div>
               </div>
            </div>
            <!-- Our Clients End -->  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

