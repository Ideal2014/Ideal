<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserList().aspx.cs" Inherits="User_UserList__" %>

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
						<h2><i class="icon-user"></i> 用户列表</h2>
                    <div class="pull-right">
           	        <a class="btn btn-warning" href="#">
				    <i class="icon-plus-sign icon-white"></i>  
				    添加学生                                         
			        </a>
                    </div>
                        </div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>用户</th>
								  <th>注册时间</th>
								  <th>角色</th>
								  
								  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td>David R</td>
								<td class="center">2012/01/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#" >
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Chris Jack</td>
								<td class="center">2012/01/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jack Chris</td>
								<td class="center">2012/01/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Muhammad Usman</td>
								<td class="center">2012/01/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/02/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Helen Garner</td>
								<td class="center">2012/02/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Saruar Ahmed</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Ahemd Saruar</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Habib Rizwan</td>
								<td class="center">2012/01/21</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Rizwan Habib</td>
								<td class="center">2012/01/21</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Amrin Sana</td>
								<td class="center">2012/08/23</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sana Amrin</td>
								<td class="center">2012/08/23</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Ifrah Jannat</td>
								<td class="center">2012/06/01</td>
								<td class="center">管理员</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jannat Ifrah</td>
								<td class="center">2012/06/01</td>
								<td class="center">管理员</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Dave Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Robert</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Usman Muhammad</td>
								<td class="center">2012/01/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Abdullah</td>
								<td class="center">2012/02/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Dow John</td>
								<td class="center">2012/02/01</td>
								<td class="center">管理员</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>John R</td>
								<td class="center">2012/02/01</td>
								<td class="center">管理员</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Paul Wilson</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Wilson Paul</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Heera Sheikh</td>
								<td class="center">2012/01/21</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Sheikh Heera</td>
								<td class="center">2012/01/21</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Andro Christopher</td>
								<td class="center">2012/08/23</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Jhon Doe</td>
								<td class="center">2012/06/01</td>
								<td class="center">管理员</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Lorem Ipsum</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Abraham</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Brown Blue</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
									</a>
									<a class="btn btn-danger" href="#">
										<i class="icon-trash icon-white"></i> 
										删除
									</a>
								</td>
							</tr>
							<tr>
								<td>Worth Name</td>
								<td class="center">2012/03/01</td>
								<td class="center">用户</td>
								
								<td class="center">
									
									<a class="btn btn-info" href="user-edit.html">
										<i class="icon-edit icon-white"></i>  
										查看修改                                            
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

			

		<footer>			<p class="pull-right">
				Powered by: <a href="#">Ideal</a>
			</p>
		</footer>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

