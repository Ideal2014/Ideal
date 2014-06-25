<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestList.aspx.cs" Inherits="Test_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">首页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">试题列表</a>
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
                                        <asp:Label ID="TestID" runat="server" Text='<%# Bind("Tes_ID") %>' Visible="false"></asp:Label>

                                        <a class="btn btn-danger" href="#myModal<%# Eval("Tes_ID") %>" data-toggle="modal">
                                            <i class="icon-trash icon-white"></i>删除
                                        </a>
                                        <!-- Modal -->
                                        <div class="modal fade" id='myModal<%# Eval("Tes_ID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
                                                        <asp:Button ID="Button1" runat="server" class="btn btn-primary" OnClick="Delete_Click" Text="删除" />

                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>

                        </Columns>
                    </asp:GridView>
                </div>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

