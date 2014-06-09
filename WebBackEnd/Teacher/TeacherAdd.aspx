<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TeacherAdd.aspx.cs" Inherits="Teacher_TeacherAdd" %>

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
                <a href="#">教师信息</a>
            </li>
        </ul>
    </div>



    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-plus-sign"></i>增加教师</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                </div>
            </div>
            <div class="box-content">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">昵称 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherName" CssClass="input-xlarge focused"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherName" ValidationExpression="^\S{1,5}$" ErrorMessage="昵称长度应为1~5位"></asp:RegularExpressionValidator>                      
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">称号 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherNickName" CssClass="input-xlarge focused"></asp:TextBox>
                                 <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherNickName" ValidationExpression="^\S{1,}$" ErrorMessage="称号不能为空或含有空格"></asp:RegularExpressionValidator>                      
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="focusedInput">头像 </label>
                            <div class="controls">
                                <asp:FileUpload runat="server" ID="TeacherImage" ToolTip="传~" />
                                <asp:Image runat="server" ID="ShowImage" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">性别</label>
                            <div class="controls">
                                <asp:DropDownList ID="TeacherSex" runat="server" CssClass="input-xlarge focused">
                                    <asp:ListItem Text="男" Value="m"></asp:ListItem>
                                    <asp:ListItem Text="女" Value="f"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">年龄 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherAge" CssClass="input-xlarge focused"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TeacherAge" ValidationExpression="^\d{1,2}$" ErrorMessage="年龄应在1~100之间"></asp:RegularExpressionValidator>                      
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
                            <label class="control-label" for="focusedInput">适用人群 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherSuitable" CssClass="input-xlarge focused"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherSuitable" ValidationExpression="^\S{1,}$" ErrorMessage="不能为空或含有空格"></asp:RegularExpressionValidator>                      
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="focusedInput">购买相关 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherAbout" CssClass="input-xlarge focused"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherAbout" ValidationExpression="^\S{1,}$" ErrorMessage="不能为空或含有空格"></asp:RegularExpressionValidator>                      
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">简介 </label>
                            <div class="controls">
                                <asp:TextBox runat="server" ID="TeacherDescribe" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                <asp:RegularExpressionValidator runat="server" ControlToValidate="TeacherDescribe" ValidationExpression="^\S{1,}$" ErrorMessage="不能为空或含有空格"></asp:RegularExpressionValidator>                      

                            </div>
                        </div>
                        <div class="form-actions">
                            <asp:Button ID="Submit" runat="server" CssClass="btn btn-primary" Text="确认" OnClick="Submit_Click" />
                            <button class="btn btn-primary" type="reset">取消</button>
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

