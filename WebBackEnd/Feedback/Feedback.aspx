<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">主页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">反馈列表</a>
            </li>
        </ul>
    </div>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>反馈管理</h2>

            </div>
            <div class="box-content">

                <asp:GridView ID="FeedbackGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Fee_ID" Visible="false"/>
                        <asp:BoundField DataField="Stu_UserName" HeaderText="姓名" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                        <asp:BoundField DataField="Fee_Topic" HeaderText="主题" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Fee_Detail" HeaderText="内容" ItemStyle-CssClass="center" />
                        <asp:BoundField DataField="Fee_Time" HeaderText="时间" ItemStyle-CssClass="center" ItemStyle-Width="70px" />
                        <asp:TemplateField HeaderText="评级" ItemStyle-CssClass="center" ItemStyle-Width="30px">
                            <ItemTemplate>
                                <span class="label label-important">
                                    <asp:Label ID="LevelLabel" runat="server" Text='<%#Bind("Fee_Level") %>'></asp:Label></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center" ItemStyle-Width="240px">
                            <ItemTemplate>
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">

                                        <li>
                                            <asp:LinkButton ID="LevelS" runat="server" OnClick="LevelS_Click">S</asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="LevelA" runat="server" OnClick="LevelA_Click">A</asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="LevelB" runat="server" OnClick="LevelB_Click">B</asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="LevelC" runat="server" OnClick="LevelC_Click">C</asp:LinkButton></li>
                                        <li>
                                            <asp:LinkButton ID="LevelD" runat="server" OnClick="LevelD_Click">D</asp:LinkButton></li>

                                    </ul>
                                    <asp:LinkButton ID="Delete" runat="server" Text="删除" CssClass="btn btn-danger" OnClick="Delete_Click"><i class="icon-trash icon-white"></i>
                                        删除</asp:LinkButton>
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

