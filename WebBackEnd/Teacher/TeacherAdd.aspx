<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherAdd.aspx.cs" Inherits="Teacher_TeacherAdd" %>

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
						<a href="#">教师信息</a>
					</li>
				</ul>
			</div>
			


			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-plus-sign"></i>增加教师</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal">
							<fieldset>
							  <div class="control-group">
								<label class="control-label" for="focusedInput">教师号 </label>
								<div class="controls">
                                    <asp:TextBox runat="server" ID="TeacherNo" CssClass="input-xlarge focused"></asp:TextBox>
								</div>
							  </div>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">称号 </label>
								<div class="controls">
								    <asp:TextBox runat="server" ID="TeacherLabel" CssClass="input-xlarge focused"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">昵称 </label>
								<div class="controls">
								    <asp:TextBox runat="server" ID="TeacherPetname" CssClass="input-xlarge focused"></asp:TextBox>
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
								<label class="control-label">性别</label>
								<div class="controls">
                                    <asp:RadioButton runat="server" ID="male" Text="男" GroupName="sex" TextAlign="Right"/>
                                    <asp:RadioButton runat="server" ID="female" Text="女" GroupName="sex" TextAlign="Right"/>
								</div>
							  </div>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">年龄 </label>
								<div class="controls">
                                    <asp:DropDownList ID="TeacherAge" runat="server" CssClass="input-xlarge focused">
                                        <asp:ListItem Text="1"></asp:ListItem> 
                                        <asp:ListItem Text="2"></asp:ListItem> 
                                    </asp:DropDownList>
								</div>
							  </div>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">国籍 </label>
								<div class="controls">
                                    <asp:DropDownList ID="TeacherNation" runat="server" CssClass="input-xlarge focused">
                                        <asp:ListItem Text="America"></asp:ListItem> 
                                        <asp:ListItem Text="England"></asp:ListItem> 
                                    </asp:DropDownList>
								</div>
							  </div>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">专长 </label>
								<div class="controls">
                                    <asp:DropDownList ID="TeacherSkill" runat="server" CssClass="input-xlarge focused">
                                        <asp:ListItem Text="口语"></asp:ListItem> 
                                        <asp:ListItem Text="听力"></asp:ListItem> 
                                    </asp:DropDownList>
								</div>
							  </div>

                                <div class="control-group">
								<label class="control-label" for="focusedInput">适用人群 </label>
								<div class="controls">
                                    <asp:DropDownList ID="TeacherAim" runat="server" CssClass="input-xlarge focused">
                                        <asp:ListItem Text="80后"></asp:ListItem> 
                                        <asp:ListItem Text="90后"></asp:ListItem> 
                                    </asp:DropDownList>
								</div>
							  </div>
                              <div class="control-group">
								<label class="control-label" for="focusedInput">购买相关 </label>
								<div class="controls">
								    <asp:TextBox runat="server" ID="TeacherDuration" CssClass="input-xlarge focused"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">简介 </label>
								<div class="controls">
                                    <asp:TextBox runat="server" ID="TeacherAbout" TextMode="MultiLine" Rows="5"></asp:TextBox>
								</div>
							  </div>
                             <div class="form-actions">
                                 <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="确认"/>
                                 <asp:Button ID="Cancel" runat="server" CssClass="btn btn-primary" Text="取消"/>
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

