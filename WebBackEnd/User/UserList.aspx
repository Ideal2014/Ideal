<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="User_UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
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
                <h2><i class="icon-user"></i>用户列表</h2>
                <div class="pull-right">
                    <asp:LinkButton ID="Add" runat="server" OnClick="Add_Click" CssClass="btn btn-warning">
                        <i class="icon-plus-sign icon-white"></i>
                        添加用户
                    </asp:LinkButton>
                </div>
            </div>
            <div class="box-content">
                <asp:GridView ID="StudentList" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Stu_UserName" HeaderText="用户" />
                        <asp:BoundField HeaderText="添加时间" ItemStyle-CssClass="center" />
                        <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center">
                            <ItemTemplate>
                                <asp:Label ID="StudentID" runat="server" Text='<%# Bind("Stu_ID") %>' Visible="false"></asp:Label>
                                <asp:LinkButton ID="Modify" runat="server" CssClass="btn btn-info" OnClick="Modify_Click">
                                     <i class="icon-edit icon-white"></i>修改
                                </asp:LinkButton>
                                <asp:LinkButton ID="Delete" runat="server" CssClass="btn btn-danger" OnClick="Delete_Click">
                                     <i class="icon-trash icon-white"></i>删除
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->



    <footer>
        <p class="pull-right">
            Powered by: <a href="#">Ideal</a>
        </p>
    </footer>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

