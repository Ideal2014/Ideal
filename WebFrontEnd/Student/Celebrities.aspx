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
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p><asp:Label id ="Grade1" runat="server">
                              雅思成绩：总分8分，听力9分，阅读8分，口语7.5分</asp:Label>
                           </p>
                            <p>
                               我觉得，Viki的针对性非常强。对我的帮助非常大：一是授课的老师发音非常标准，通过和viki的外教对话，矫正了一些我的不正确发音；二是和手机电脑对话，避免了和真人对话的尴尬，说不出来也不觉得不好意思，这让我大胆的说出来，从而练习了我的口语；三是Viki有智能拼写及语法纠错的功能，能及时发现改正我的坏习惯；四是应用内容源取自各大经典教材，权威师资改编对英语考试有极大的帮助.
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="celebrity_detail.html" target="_blank">查看详情</a>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm1.jpg" /></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">刘菲</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p>
                               雅思成绩：听力9分，口语7分
                           </p>
                           <p><asp:Label runat="server">
                              听力和口语对我来说是难点，通过Viki，我和外教在线交流，锻炼了我的听力和口语。听力练习是个长期的过程，大家一定要坚持下来。在练习的过程中，我们会发现其中的秘诀，这个当然每个人都不一样，要提醒大家的是：只有通过不断的练习，长期积累才能真正提高英语听力水平，不要指望一个月就能大大提高，希望大家都能坚持下来！有了一定的听力基础后，可练习精听。每次只听一句话，但一定要听懂。先听简单的话，在听长句、复杂句。
                              &nbsp;&nbsp;&nbsp;&nbsp;<a href="celebrity_detail.html" target="_blank">查看详情</a></asp:Label>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm2.jpg"/></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">杜衡</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="divider"></div>
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p>
                               托福成绩：托福105分 听力30分
                           </p>
                           <p>
                              听力必须重点练习，因为听力在口语中还都会涉及，我就是听力特别好占了很大的便宜，如果时间多最好能每天都进行练习，并进行听写训练，不用长，2分钟左右即可，但关键是要坚持。我的分数之所以没能考得更好，其实就是吃亏在口语。所以口语一定要下功夫，多读，平时训练时还可以跟读听力材料，练习语音语调，说的越多越标准越好，功效巨大。练习口语，Viki就是一个不错的选择，跟在线的外教进行交流，不用担心说不出来的尴尬。
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="celebrity_detail.html" target="_blank">查看详情</a>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm3.jpg"/></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">张晓牧</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p>
                               雅思成绩：听力8.5分
                           </p>
                           <p>
                              在2012年第二次的雅思考试中，我取得了总分7的成绩，单项分别为：听力8.5、阅读7、写作6、口语6。这是我第二次考试，第一次则是在半年前，总分只有6分，单项分别为：听力6.5、阅读5.5、写作5.5、口语6。能在二次考雅思的时候分数得到这么大的进步，真心感谢Viki，通过跟Viki上的外教交流，我的听说能力得到很大的提高。听力还是主要在于长时间的练习，所以每天要保证一定的时间跟在线外教进行交流。
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="celebrity_detail.html" target="_blank">查看详情</a>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm4.jpg"/></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">何雪音</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- 2 Column Testimonials End-->
                  <!-- 2 Column Testimonials -->
                  <div class="divider"></div>
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p>
                               北美精英计划学员，托福总分111分，其中听力满分
                           </p>
                           <p>
                              我个人的心得就是，在备考过程中多读书，多背单词，不要只顾着埋头做题，还应该通过广泛的阅读来扩大自己的知识面。在备考心态上，心一定要静，要做到平和坚韧，能够耐得住寂寞，能够挺过漫长地练题以及反复记忆单词的枯燥时间，多给自己一些积极的心理暗示，多和其他同学或有备考经验的人进行交流。另外，还有一点就是保持规律的作息。
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">查看详情</a>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm5.jpg"/></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">成都</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="testimonial item">
                           <p>
                               雅思成绩：听力8.5分
                           </p>
                           <p>
                              听力是我几门中发挥最好的。要想尽办法将自己置身于英语的语言环境中，和Viki里的外教交流就是一个不错的选择，多听听那些外教的清晰纯正的发音对雅思听力有极大帮助，同时也能为写作积累素材。很多同学对选择题比较头疼，对此我的建议是：做题前先看题干，勾出重点词，然后将自己听到的答案像回答问题一样写在旁边，等听力录音播放结束后再回头来选。
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="#" >查看详情</a>
                           </p>
                           <div class="testimonials-arrow">
                           </div>
                           <div class="author">
                              <div class="testimonial-image "><img alt="" src="../img/testimonial/teamm6.jpg"/></div>
                              <div class="testimonial-author-info">
                                 <span class="color"><font face="幼圆" size="3" color="#38B0DE">刘祖泽</font></span>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  
                  <!-- 2 Column Testimonials End-->
               </div>
            </div>
            <!-- Main Content end-->
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

