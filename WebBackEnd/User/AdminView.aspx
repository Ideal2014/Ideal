<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminView.aspx.cs" Inherits="User_AdminView" %>

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
                <h2><i class="icon-zoom-in"></i>查看用户</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>

            <asp:HiddenField runat="server" ID="AdminNo"></asp:HiddenField>

            <div class="box-content">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">管理员号 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminNoShow" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">昵称 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminNickName" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">邮箱 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminEmail" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">密码 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminPassword" TextMode="Password" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-actions">
                            <asp:Button runat="server" CssClass="btn btn-primary" ID="Reset" Text="返回" OnClick="Submit_Click" />
                        </div>
                    </fieldset>
                </form>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->



    <!-- content ends -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

