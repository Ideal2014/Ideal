<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UiManager.aspx.cs" Inherits="Base_UiManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <div>
        <ul class="breadcrumb">
            <li><a href="#">首页</a> <span class="divider">/</span></li>
            <li><a href="#">界面管理</a></li>
        </ul>
    </div>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well">
                <h2>
                    <i class="icon-plus"></i>界面管理
                </h2>
                <div class="box-icon">
                    <a href="#" class="btn btn-setting btn-round"><i
                        class="icon-cog"></i></a><a href="#"
                            class="btn btn-minimize btn-round"><i
                                class="icon-chevron-up"></i></a><a href="#"
                                    class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-bordered">
                    <tr>
                        <td>
                            <h3>首页图片1</h3>
                        </td>
                        <td>
                            <asp:FileUpload ID="ImageFile1" runat="server" data-no-uniform="true" />
                        </td>
                        <td>
                            <asp:Image ID="Image1" runat="server" Width="200px" Height="100px" />
                        </td>
                        <td>
                            <asp:Button ID="Modify1" runat="server" CssClass="button" OnClick="Modify_Click" Text="修改" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>首页图片2</h3>
                        </td>
                        <td>
                            <asp:FileUpload ID="ImageFile2" runat="server" data-no-uniform="true" />
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" Width="200px" Height="100px" />
                        </td>
                        <td>
                            <asp:Button ID="Modify2" runat="server" CssClass="button" OnClick="Modify_Click" Text="修改" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <h3>首页图片3</h3>
                        </td>
                        <td>
                            <asp:FileUpload ID="ImageFile3" runat="server" data-no-uniform="true" />
                        </td>
                        <td>
                            <asp:Image ID="Image3" runat="server" Width="200px" Height="100px" />
                        </td>
                        <td>
                            <asp:Button ID="Modify3" runat="server" CssClass="button" OnClick="Modify_Click" Text="修改" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <h3>首页图片4</h3>
                        </td>
                        <td>
                            <asp:FileUpload ID="ImageFile4" runat="server" data-no-uniform="true" />
                        </td>
                        <td>
                            <asp:Image ID="Image4" runat="server" Width="200px" Height="100px" />
                        </td>
                        <td>
                            <asp:Button ID="Modify4" runat="server" CssClass="button" OnClick="Modify_Click" Text="修改" />
                        </td>
                    </tr>
                   
               

                </table>
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->
    <!-- content ends -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

