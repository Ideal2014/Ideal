<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="Book_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
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
               
            </div>
            <div class="box-content">
             

                <asp:GridView ID="BookGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Boo_Name" HeaderText="书名" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                        <asp:BoundField DataField="Boo_Image" HeaderText="封面" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_Desribe" HeaderText="简介" ItemStyle-CssClass="center" ItemStyle-Width="70px" />
                        <asp:BoundField DataField="Boo_RegisterDate" HeaderText="上架时间" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_Preview" HeaderText="预览版" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_View" HeaderText="完整版" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tea_Name" HeaderText="所属老师" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                          <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center" ItemStyle-Width="240px">
                              <ItemTemplate>
                                <div class="btn-group">
                                 
                                   <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" CssClass="btn-danger" Text="删除" />
                    
                                     </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

