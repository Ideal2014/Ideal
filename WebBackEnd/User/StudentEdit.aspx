<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentEdit.aspx.cs" Inherits="User_StudentEdit" %>

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
                <h2><i class="icon-edit"></i>修改用户</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                    <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form class="form-horizontal">
                    <fieldset>

                        <asp:HiddenField runat="server" ID="StuNo"></asp:HiddenField>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">学生号 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="StuNoShow" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">昵称 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="StuNickName"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="StuNickName" ErrorMessage="昵称不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="StuNickName" ValidationExpression="^.{1,5}$" ErrorMessage="昵称长度应为1~5位"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="StuNickName" ValidationExpression="^\S*$" ErrorMessage="不能含有空格"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="StuNickName" ValidationExpression="^[^\^]+$" ErrorMessage="不能含有非法字符^"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">邮箱 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="StuEmail"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="StuEmail" ErrorMessage="邮箱不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="StuEmail" ValidationExpression="^([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$" ErrorMessage="请输入正确的邮箱格式"></asp:RegularExpressionValidator>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">密码 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="StuPassword" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">头像 </label>
                            <div class="controls">
                                <asp:FileUpload runat="server" ID="ImageFile" ToolTip="传~" />
                                <asp:Image runat="server" ID="ShowImage" />
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="date01">上课余额</label>
                            <div class="controls">
                                <asp:TextBox runat="server" CssClass="input-xlarge focused" SkinID="focusedInput" ID="StuDuration"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="StuDuration" ValidationExpression="^\d+$" ErrorMessage="余额应为数字" Display="Dynamic"></asp:RegularExpressionValidator>
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

