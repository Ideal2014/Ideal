﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherAdd.aspx.cs" Inherits="Teacher_TeacherAdd" %>

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
                <a href="#">添加教师</a>
            </li>
        </ul>
    </div>



    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-plus-sign"></i>添加教师</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                </div>
            </div>
            <div class="box-content">

                <fieldset>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">姓名 </label>
                        <div class="controls">
                            <asp:TextBox runat="server" ID="TeacherName" CssClass="input-xlarge focused"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TeacherName" ErrorMessage="姓名不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherName" ValidationExpression="^.{2,10}" ErrorMessage="昵称长度应为2~10位"></asp:RegularExpressionValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherName" ValidationExpression="^\S*$" ErrorMessage="不能含有空格"></asp:RegularExpressionValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherName" ValidationExpression="^[^\^]+$" ErrorMessage="不能含有非法字符^"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">称号 </label>
                        <div class="controls">
                            <asp:TextBox runat="server" ID="TeacherNickName" CssClass="input-xlarge focused"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TeacherNickName" ErrorMessage="称号不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherNickName" ValidationExpression="^\S*$" ErrorMessage="不能含有空格"></asp:RegularExpressionValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherNickName" ValidationExpression="^[^\^]+$" ErrorMessage="不能含有非法字符^"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">大图</label>
                        <div class="controls">
                            <asp:FileUpload runat="server" ID="FileUpload" ToolTip="上传大图" />
                            <asp:Image runat="server" ID="ShowImage" />
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">小图</label>
                        <div class="controls">
                            <asp:FileUpload runat="server" ID="FileSUpload" ToolTip="上传小图" />
                            <asp:Image runat="server" ID="ShowSImage" />
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">性别</label>
                        <div class="controls">
                            <asp:DropDownList ID="TeacherSex" runat="server" CssClass="input-xlarge focused">
                                <asp:ListItem Text="男" Value="男"></asp:ListItem>
                                <asp:ListItem Text="女" Value="女"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">年龄 </label>
                        <div class="controls">
                            <asp:TextBox runat="server" ID="TeacherAge" CssClass="input-xlarge focused"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="TeacherAge" ErrorMessage="年龄不可为空" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherAge" ValidationExpression="^\d+$" ErrorMessage="年龄应为数字" Display="Dynamic"></asp:RegularExpressionValidator>
                            <asp:RangeValidator runat="server" MinimumValue="1" MaximumValue="100" Type="Integer" ControlToValidate="TeacherAge" ErrorMessage="年龄应在1~100之间" Display="Dynamic"></asp:RangeValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">国籍 </label>
                        <div class="controls">
                            <asp:DropDownList ID="TeacherNation" runat="server" CssClass="input-xlarge focused">
                                <asp:ListItem Text="America"></asp:ListItem>
                                <asp:ListItem Text="England"></asp:ListItem>
                                <asp:ListItem Text="Australia"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="focusedInput">专长 </label>
                        <div class="controls">
                            <asp:DropDownList ID="TeacherSkill" runat="server" CssClass="input-xlarge focused">
                                <asp:ListItem Text="日常英语"></asp:ListItem>
                                <asp:ListItem Text="商务英语"></asp:ListItem>
                                <asp:ListItem Text="高考英语"></asp:ListItem>
                                <asp:ListItem Text="托福考试"></asp:ListItem>
                                <asp:ListItem Text="雅思考试"></asp:ListItem>
                                <asp:ListItem Text="大学英语四六级"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>



                    <div class="control-group">
                        <label class="control-label" for="focusedInput">简介 </label>
                        <div class="controls">
                            <asp:TextBox runat="server" ID="TeacherDescribe" TextMode="MultiLine" Rows="5"></asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherDescribe" ValidationExpression="^[^\^]+$" ErrorMessage="不能含有非法字符^"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-actions">
                        <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="确认" OnClick="Submit_Click" />
                        <button class="btn btn-primary" type="reset">取消</button>
                    </div>
                </fieldset>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->



    <!-- content ends -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

