<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminAdd.aspx.cs" Inherits="Teacher_TeacherAdd" %>

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
                <h2><i class="icon-plus-sign"></i>增加管理员</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form class="form-horizontal">
                    <fieldset>

                        <asp:HiddenField runat="server" ID="AdminNo"></asp:HiddenField>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">昵称 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminPetname"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AdminName" ErrorMessage="昵称不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AdminrName" ValidationExpression="^.{1,5}$" ErrorMessage="昵称长度应为1~5位"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="AdminName" ValidationExpression="^\S*$" ErrorMessage="不能含有空格"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="AdminName" ValidationExpression="^[^\^]+$" ErrorMessage="不能含有非法字符^"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">邮箱 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminEmail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AdminEmail" ErrorMessage="邮箱不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="AdminEmail" ValidationExpression="^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$" ErrorMessage="请输入正确的邮箱格式"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">密码 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="AdminPassword" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AdminPassword" ErrorMessage="密码不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TeacherAge" ValidationExpression="^\S{1,10}$" ErrorMessage="密码应为1~10位" Display="Dynamic"></asp:RegularExpressionValidator>

                            </div>
                        </div>

                        <div class="form-actions">
                            <asp:Button runat="server" CssClass="btn btn-primary" ID="Submit" Text="确认添加" OnClick="Submit_Click" />
                            <asp:Button runat="server" CssClass="btn btn-primary" ID="Reset" Text="取消" OnClick="Reset_Click" />
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

