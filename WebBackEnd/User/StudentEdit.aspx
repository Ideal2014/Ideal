<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentEdit.aspx.cs" Inherits="User_UserEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
			<!-- content starts -->
			

			<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">首页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">用户信息</a>
					</li>
				</ul>
			</div>
			


			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-edit"></i> 修改用户</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
							<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">学生号 </label>
								<div class="controls">
                                  <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="SNo"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">邮箱 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SEmail"></asp:TextBox>
								</div>
							  </div>
							  
                              <div class="control-group">
								<label class="control-label" for="focusedInput">密码 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SPassword" TextMode="Password"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">昵称 </label>
								<div class="controls">
		                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SPetname"></asp:TextBox>
								</div>
							  </div>
                              
                               <div class="control-group">
								<label class="control-label" for="focusedInput">头像 </label>
                               <div class="controls">
                                    <asp:FileUpload runat="server" ID="ImageFile" ToolTip="传~" />
                                    <asp:Image runat="server" ID="ShowImage" />
								</div>
							  </div>
                              
                             <div class="control-group">
							  <label class="control-label" for="date01">上课余额</label>
							  <div class="controls">
		                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SDuration"></asp:TextBox>
							  </div>
							</div>	
							    <div class="form-actions">
                                  <asp:Button runat="server" CssClass="btn btn-primary" ID="Submit" Text="确认添加" OnClick="Submit_Click"/>
								  <asp:Button runat="server" CssClass="btn btn-primary" ID="Reset" Text="取消" OnClick="Reset_Click"/>
							  </div>
							</fieldset>
						  </form>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
			

    
					<!-- content ends -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

