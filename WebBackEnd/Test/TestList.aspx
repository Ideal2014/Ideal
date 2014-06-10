<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestList.aspx.cs" Inherits="Test_Default" %>

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
						<h2><i class="icon-plus-sign"></i>浏览试题</h2>
						<div class="box-icon">
							<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
							<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div class="form-horizontal">
							  <asp:GridView ID="TestGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Tes_Type" HeaderText="试题类型" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                        <asp:BoundField DataField="Tes_Detail" HeaderText="题目内容" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tes_A" HeaderText="A选项" ItemStyle-CssClass="center" ItemStyle-Width="70px" />
                        <asp:BoundField DataField="Tes_B" HeaderText="B选项" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tes_C" HeaderText="C选项" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tes_D" HeaderText="D选项" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tes_Answer" HeaderText="正确选项" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                          <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center" ItemStyle-Width="240px">
                              <ItemTemplate>
                                <div class="btn-group">
                                 
                                   <asp:Button ID="Modify" runat="server" OnClick="Modify_Click" CssClass="btn-danger" Text="修改" />
                                   <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" CssClass="btn-danger" Text="删除" />
                    
                                     </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
						  </div>
					
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" Runat="Server">
</asp:Content>

