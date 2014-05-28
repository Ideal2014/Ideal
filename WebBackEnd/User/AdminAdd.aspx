<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAdd.aspx.cs" Inherits="Teacher_TeacherAdd" %>

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
						<h2><i class="icon-plus-sign"></i> 增加管理员</h2>
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
								<label class="control-label" for="focusedInput">管理员号 </label>
								<div class="controls">
                                  <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminNo"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">邮箱 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminEmail"></asp:TextBox>
								</div>
							  </div>
							  
                              <div class="control-group">
								<label class="control-label" for="focusedInput">密码 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminPassword" TextMode="Password"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">昵称 </label>
								<div class="controls">
		                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminPetname"></asp:TextBox>
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

