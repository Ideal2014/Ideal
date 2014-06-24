<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherList.aspx.cs" Inherits="Teacher_TeacherList" %>

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
                <a href="#">教师列表</a>
            </li>
        </ul>
    </div>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>教师列表</h2>
              
            </div>
            <div class="box-content">
                <asp:GridView ID="TeacherList" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Tea_Name" HeaderText="教师" />
                        <asp:BoundField DataField="Tea_Sex" HeaderText="性别"  />
                         <asp:BoundField DataField="Tea_Nation" HeaderText="国籍"  />
                         <asp:BoundField DataField="Tea_Skill" HeaderText="专长"  />
                        <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center">
                            <ItemTemplate>
                                <asp:Label ID="TeacherID" runat="server" Text='<%# Bind("Tea_ID") %>' Visible="false"></asp:Label>
                                <asp:LinkButton ID="Modify" runat="server" CssClass="btn btn-info" OnClick="Modify_Click">
                                     <i class="icon-edit icon-white"></i>修改
                                </asp:LinkButton>
                            <a  class="btn btn-danger" href="#myModal<%# Eval("Tea_ID") %>" data-toggle="modal">
                                      <i class="icon-trash icon-white"></i>删除
                                </a>
                                    <!-- Modal -->
                                <div class="modal fade" id='myModal<%# Eval("Tea_ID") %>' tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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

