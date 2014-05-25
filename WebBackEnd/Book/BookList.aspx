<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="Book_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    	<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">主页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">教材列表</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i>教材列表</h2>
						<div class="pull-right">
           	        <a class="btn btn-warning" href="book-add.html">
				    <i class="icon-plus-sign icon-white"></i>  
				    添加教材                                       
			        </a>
                    </div>
                        </div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th width="100">书名</th>
								  <th width="100">图片</th>
								  <th>简介</th>
								  <th width="70">上架时间</th>
								  <th width="70">预览版</th>
                                  <th width="70">完整版</th>
                                  <th width="190">操作</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td>日常交流1000词</td>
								<td class="center"><img src="img/books/cover-orange.png"></td>
								<td class="center">不论你现在口语程度如何，都可以试着跟着Viki学《和外教聊天记单词-日常交流1000词》，通过场景记单词，你能学得更快，记得更牢，掌握得更好！ 材料来源于国外教材，纯正欧美英语思维，让你摆脱中式英语！</td>
								<td class="center">
									2013-12-13
								</td>
                                <td class="center">
									<asp:LinkButton ID="LinkButton1" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                <td class="center">
									<asp:LinkButton ID="LinkButton2" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
                            <tr>
								<td>雅思必考1000词</td>
								<td class="center"><img src="img/books/cover-pink.png"></td>
								<td class="center">全球超过7,000所机构认可雅思成绩！跟着Albert学英语，能够有效帮助攻克雅思考试中最至关重要的听力和口语两关，Albert会用最纯正的欧美思维让你抛开解题与技巧，真正地置身“异国”，体验“与人交流”的乐趣。</td>
								<td class="center">
									2013-12-13
								</td>
                                <td class="center">
								<asp:LinkButton ID="LinkButton3" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                <td class="center">
                                <asp:LinkButton ID="LinkButton4" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
                              <tr>
								<td>四六级必考1000词</td>
								<td class="center"><img src="img/books/cover-red.png"></td>
								<td class="center">Olivia知晓《和外教聊天记单词-四六级必考1000词》中所有的对话、例句、翻译、重点单词及解释，以及正确朗读发音。学习考试从此不再枯燥单调，而是有了陪读的同伴，阅读、听力，不再是问题！过四六级，再也不难！</td>
								<td class="center">
									2013-12-13
								</td>
                                  <td class="center">
									<asp:LinkButton ID="LinkButton5" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                  <td class="center">
									<asp:LinkButton ID="LinkButton6" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
                              <tr>
								<td>托福必考1000词</td>
								<td class="center"><img src="img/books/cover-blue.png"></td>
								<td class="center">无论是打算去美国留学，畅享启发式教学的独特魅力；还是打算赴美工作，感受美国多元化的文化与升华；还是想在美国定居，完成自我理想——新托福考试，都是你面临的第一关“挑战”！想要成功应对托福考试，要经过听力，口语，单词三大关卡，Stephanie老师都为你做了准备。.5分</td>
								<td class="center">
									2013-12-13
								</td>
                                  <td class="center">
								<asp:LinkButton ID="LinkButton7" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                  <td class="center">
									<asp:LinkButton ID="LinkButton8" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
                            
                             <tr>
								<td>商务英语1000词</td>
								<td class="center"><img src="img/books/cover-green.png"></td>
								<td class="center">商务英语是以适应职场生活的语言要求为目的，内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念，包括如何和外国人打交道，如何和他们合作、工作的方式方法，以及他们的生活习惯等。</td>
								<td class="center">
									2013-12-13
								</td>
                                 <td class="center">
									<asp:LinkButton ID="LinkButton9" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                 <td class="center">
									<asp:LinkButton ID="LinkButton10" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
                             <tr>
								<td>高考必考1000词</td>
								<td class="center"><img src="img/books/cover-purple.png"></td>
								<td class="center">高考英语要求学生掌握3000-4000的词汇量以及一些中高级词汇，熟悉常见单词和词组的正确用法，掌握书面使用技巧和一定会话能力，涉及听、说、读、写多个方面。在一对一的情景对话交流中，熟悉并掌握高考英语中可能会出现的单词、词组和句法，轻松战胜高考英语。</td>
								<td class="center">
									2013-12-13
								</td>
                                 <td class="center">
									<asp:LinkButton ID="LinkButton11" runat="server">点此查看预览资源</asp:LinkButton>
								</td>
                                 <td class="center">
									<asp:LinkButton ID="LinkButton12" runat="server">点此查看完整资源</asp:LinkButton>
								</td>
								<td class="center">
									<a class="btn btn-success" href="book-edit.html">
										<i class="icon-zoom-in icon-white"></i>  
										查看编辑                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
						
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

