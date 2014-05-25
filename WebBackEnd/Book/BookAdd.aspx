﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookAdd.aspx.cs" Inherits="Book_BookAdd"%>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    
			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">主页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">教材信息改一个</a> <span class="divider">/</span>
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
						<form class="form-horizontal">

						  <fieldset>
							<legend>添加教材信息</legend>
							<div class="control-group">
							  <asp:label class="control-label" runat="server" for="typeahead">书名 </asp:label>
							  <div class="controls">
							<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
							  </div>
							</div>

                              <div class="control-group">
							  <asp:Label class="control-label" runat="server" for="typeahead">上架时间 </asp:Label>
							  <div class="controls">
								<asp:TextBox ID="UpdataTime" runat="server"></asp:TextBox>
							  </div>
							</div>

							<div class="control-group">
							  <asp:Label class="control-label" runat="server" for="imageInput">教材图片</asp:Label>
							  <div class="controls">
							<asp:FileUpload ID="FileUpload3" runat="server" />
							  </div>
                              
							</div>

							<div class="control-group">
							  <asp:Label class="control-label" runat="server" for="fileInput">预览资源</asp:Label>
							  <div class="controls">
								<asp:FileUpload ID="FileUpload2" runat="server" />
							  </div>
                            </div>    
                                <div class="control-group">
							  <asp:label class="control-label" runat="server" for="fileInput">完整资源</asp:label>
							  <div class="controls">
								
                                  <asp:FileUpload ID="FileUpload1" runat="server" />
							  </div>
                             
							</div>          
							<div class="control-group">
							  <asp:Label class="control-label" runat="server" for="textarea2">教材简介</asp:Label>
							  <div class="controls">
								<asp:TextBox class="cleditor" runat="server" ID="textarea2" Rows="5"></asp:TextBox>
							  </div>
							</div>
							<div class="form-actions">
							  <asp:Button ID="Keep" runat="server" type="submit" class="btn btn-primary" Text="保存"></asp:Button>
							  <asp:Button ID="Cancle" runat="server" type="reset" class="btn" Text="取消"></asp:Button>
                              
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

