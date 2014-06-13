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
                <h2><i class="icon-user"></i>学生列表</h2>
                <div class="pull-right">
                 
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
                                <a  class="btn btn-danger" href="#myModal<%# Eval("Stu_ID") %>" data-toggle="modal">
                                     <i class="icon-trash icon-white"></i>删除
                                </a>
                                <!-- Modal -->
                                <div class="modal fade" id="myModal<%# Eval("Stu_ID") %>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">提示</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h2>确认删除？</h2>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <asp:Button ID="Button1" runat="server" class="btn btn-primary"  OnClick="Delete_Click" Text="删除"/>
                                               
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->


      <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>管理员列表</h2>
                <div class="pull-right">
                 
                </div>
            </div>
            <div class="box-content">
                <asp:GridView ID="AdminList" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Adm_UserName" HeaderText="管理员" />
                        <asp:BoundField DataField="Adm_LastLogin" HeaderText="上次登录时间" ItemStyle-CssClass="center" />
                        <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center">
                            <ItemTemplate>
                                <asp:Label ID="StudentID" runat="server" Text='<%# Bind("Adm_ID") %>' Visible="false"></asp:Label>
                                <asp:LinkButton ID="Modify" runat="server" CssClass="btn btn-info" OnClick="Modify_Click">
                                     <i class="icon-edit icon-white"></i>修改
                                </asp:LinkButton>
                                <a  class="btn btn-danger" href="#myModal<%# Eval("Adm_ID") %>" data-toggle="modal">
                                     <i class="icon-trash icon-white"></i>删除
                                </a>
                                <!-- Modal -->
                                <div class="modal fade" id='myModal<%# Eval("Adm_ID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4 class="modal-title" id="myModalLabel">提示</h4>
                                            </div>
                                            <div class="modal-body">
                                                <h2>确认删除？</h2>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                                <asp:Button ID="Button1" runat="server" class="btn btn-primary"  OnClick="Delete_Click" Text="删除"/>
                                               
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                <!-- /.modal -->
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

