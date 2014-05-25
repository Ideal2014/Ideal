<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestAdd.aspx.cs" Inherits="Test_TestADD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">
    	<div>
				<ul class="breadcrumb">
					<li>
						<a href="#">首页</a> <span class="divider">/</span>
					</li>
					<li>
						<a href="#">试题信息</a>
					</li>
				</ul>
			</div>
			


			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-plus-sign"></i>添加试题</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div class="form-horizontal">
							<fieldset>

                                <div class="control-group">
								<label class="control-label" for="focusedInput">题型 </label>
								<div class="controls">
								<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
								</div>
							  </div>


                                <div class="control-group">
							  <label class="control-label" for="textarea2">内容</label>
							  <div class="controls">
								<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
							  </div>
							</div>



							  
                              


                              <div class="control-group">
								<label class="control-label" for="focusedInput">选项A</label>
								<div class="controls">
								<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
								</div>
							  </div>
							  
                              <div class="control-group">
								<label class="control-label" for="focusedInput">选项B</label>
								<div class="controls">
								 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">选项C</label>
								<div class="controls">
								<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
								</div>
							  </div>
                              
                               <div class="control-group">
								<label class="control-label" for="focusedInput">选项D</label>
								<div class="controls">
								<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
								</div>
							  </div>

                               <div class="control-group">
								<label class="control-label">答案 </label>
								<div class="controls">
								  <label class="checkbox inline">
									<asp:CheckBox ID="A" runat="server" /> 
								  </label>
								  <label class="checkbox inline">
									<asp:CheckBox ID="B" runat="server" /> 
								  </label>
                                    <label class="checkbox inline">
								<asp:CheckBox ID="C" runat="server" /> 
								  </label>
                                    <label class="checkbox inline">
									<asp:CheckBox ID="D" runat="server" /> 
								  </label>
								</div>
							  </div>
                              
							  <div class="form-actions">
								<asp:Button ID="Add"  runat="server" Text="确认添加" />
								<asp:Button ID="Cancle" runat="server" Text="取消" />
							  </div>
							</fieldset>
						  </div>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>