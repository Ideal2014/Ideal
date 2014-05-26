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
                            <input data-no-uniform="true" type="file"
                                name="file_upload" /></td>
                        <td>
                            <img width="200px" height="100px" src="img/index1.jpg" /></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>首页图片2</h3>
                        </td>
                        <td>
                            <input data-no-uniform="true" type="file"
                                name="file_upload" /></td>
                        <td>
                            <img width="200px" height="100px"
                                src="img/index2.jpg" /></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>首页图片3</h3>
                        </td>
                        <td>
                            <input data-no-uniform="true" type="file"
                                name="file_upload" /></td>
                        <td>
                            <img width="200px" height="100px" src="img/index3.jpg" /></td>
                    </tr>
                    <tr>
                        <td>
                            <h3>关于我们图片1</h3>
                        </td>
                        <td>
                            <input data-no-uniform="true" type="file"
                                name="file_upload" /></td>
                        <td>
                            <img width="150px" height="100px" src="img/team.jpg" /></td>
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

