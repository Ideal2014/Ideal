<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TestAdd.aspx.cs" Inherits="Test_TestADD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">首页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">添加试题</a>
            </li>
        </ul>
    </div>



    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-plus-sign"></i>添加试题</h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                    <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                </div>
            </div>
            <div class="box-content">
                <div class="form-horizontal">
                    <fieldset>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">题型 </label>
                            <div class="controls">
                                <asp:DropDownList ID="TestType" runat="server">
                                    <asp:ListItem Text="基础知识"></asp:ListItem>
                                    <asp:ListItem Text="进阶知识"></asp:ListItem>
                                    <asp:ListItem Text="扩展知识"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="textarea2">内容</label>
                            <div class="controls">
                                <asp:TextBox ID="TextDetail" runat="server"></asp:TextBox>
                            </div>
                        </div>


                        <div class="control-group">
                            <label class="control-label" for="focusedInput">选项A</label>
                            <div class="controls">
                                <asp:TextBox ID="AnswerA" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">选项B</label>
                            <div class="controls">
                                <asp:TextBox ID="AnswerB" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">选项C</label>
                            <div class="controls">
                                <asp:TextBox ID="AnswerC" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label" for="focusedInput">选项D</label>
                            <div class="controls">
                                <asp:TextBox ID="AnswerD" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="control-group">
                            <label class="control-label">答案 </label>
                            <div class="controls">
                                <asp:DropDownList ID="TestAnswer" runat="server">
                                    <asp:ListItem Text="A" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="B" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="C" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="D" Value="4"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-actions">
                            <asp:Button ID="Add" runat="server" type="submit" class="btn btn-primary" OnClick="Add_Click" Text="确认添加" />
                            <asp:Button ID="Cancle" runat="server" Text="取消" />
                        </div>
                    </fieldset>
                </div>

            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>
