<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserView().aspx.cs" Inherits="User_UserView" %>

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
						<h2><i class="icon-zoom-in"></i> 查看用户</h2>
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
                                  <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="SNo" ReadOnly="true"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">邮箱 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SEmail" ReadOnly="true"></asp:TextBox>
								</div>
							  </div>
							  
                              <div class="control-group">
								<label class="control-label" for="focusedInput">密码 </label>
								<div class="controls">
								  <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SPassword" TextMode="Password" ReadOnly="true"></asp:TextBox>
								</div>
							  </div>
                              
                              <div class="control-group">
								<label class="control-label" for="focusedInput">昵称 </label>
								<div class="controls">
		                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="SPetname" ReadOnly="true"></asp:TextBox>
								</div>
							  </div>
                              
                               <div class="control-group">
								<label class="control-label" for="focusedInput">头像 </label>
								<div class="controls">
                                    <asp:Image runat="server" ID="ShowImage" />
								</div>
							  </div>
                              
                              <div class="control-group">
							  <label class="control-label" for="date01">最近登录</label>
							  <div class="controls">
    	                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="LastLogin" ReadOnly="true"></asp:TextBox>
							  </div>
							</div>	
                             <div class="control-group">
							  <label class="control-label" for="date01">上课余额</label>
							  <div class="controls">
    	                          <asp:TextBox runat="server"  CssClass="input-xlarge focused" SkinID="focusedInput" ID="TextBox1" ReadOnly="true"></asp:TextBox>
							  </div>
							</div>		
                            <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header well" data-original-title>
						<h2><i class="icon-user"></i> 上课记录</h2>
                        </div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th></th>
								  <th>开始时间</th>
								  <th>结束时间</th>							  
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td class="center">1</td>
								<td class="center">2012/01/01-09:00</td>
                                <td class="center">2012/01/01-12:00</td>								
							</tr>
                            
                            <tr>
								<td class="center">2</td>
                                <td class="center">2012/01/02-14:00</td>
								<td class="center">2012/01/02-15:00</td>
							</tr>
							
				
			
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
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

