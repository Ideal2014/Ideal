<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookEdit.aspx.cs" Inherits="Book_BookEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    		<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">主页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">教材信息</a> <span class="divider">/</span>
					</li>
                    <li>
						<a href="#">教材信息修改</a>
					</li>
				</ul>
			</div>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> 教材信息</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div class="form-horizontal">
						  <fieldset>
							<legend>编辑教材信息</legend>
							<div class="control-group">
							  <label class="control-label" for="typeahead">书名 </label>
							  <div class="controls">
									<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							  </div>
							</div>

                               <div class="control-group">
							  <label class="control-label" for="typeahead">上架时间 </label>
							  <div class="controls">
									<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="imageInput">教材图片</label>
							  <div class="controls">
								   <asp:FileUpload ID="FileUpload1" runat="server" />
							  </div>
                               <div class = "controls">
                              <img src="img/books/cover-green.png">
                              </div>
							</div>

							<div class="control-group">
							  <label class="control-label" for="fileInput">预览资源</label>
							  <div class="controls">
								   <asp:FileUpload ID="FileUpload2" runat="server" />
							  </div>
                            </div>    
                                <div class="control-group">
							  <label class="control-label" for="fileInput">完整资源</label>
							  <div class="controls">
								   <asp:FileUpload ID="FileUpload3" runat="server" />
							  </div>
                             
							</div>           
							<div class="control-group">
							  <label class="control-label" for="textarea2">教材简介</label>
							  <div class="controls">
							<asp:TextBox ID="Context1" runat="server" TextMode="MultiLine" Text="内容涉及到商务活动的方方面面。商务英语课程不只是简单地对学员的英文水平、能力的提高，它更多地是向学员传授一种西方的观念理念，包括如何和外国人打交道，如何和他们合作、工作的方式方法，以及他们的生活习惯等。"></asp:TextBox>	
							  </div>
							</div>
							<div class="form-actions">
							  <asp:Button ID="Keep" runat="server" type="submit" class="btn btn-primary" Text="保存"></asp:Button>
							  <asp:Button ID="Cancle" runat="server" type="reset" class="btn" Text="取消"></asp:Button>
							</div>
						  </fieldset>
						</div>   

					</div>
				</div><!--/span-->

			</div><!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

