<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderList.aspx.cs" Inherits="Base_OrderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">


    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">首页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">订单信息</a>
            </li>
        </ul>
    </div>


    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>用户列表</h2>
                <div class="pull-right">
                    <a class="btn btn-warning" href="#">
                        <i class="icon-plus-sign icon-white"></i>
                        添加学生                                         
                    </a>
                </div>
            </div>
            <div class="box-content">

                <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable">
                    <AlternatingRowStyle BackColor="White" />

                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>订单号</th>
                            <th>购买时间</th>
                            <th>购买用户</th>
                            <th>套餐</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>sjfhjf1</td>
                            <td class="center">2012/01/01</td>
                            <td class="center">David R</td>
                            <td class="center">
                                <span class="label label-success">普通</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf2</td>
                            <td class="center">2012/01/01</td>
                            <td class="center">Chris Jack</td>
                            <td class="center">
                                <span class="label label-success">普通</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf3</td>
                            <td class="center">2012/01/01</td>
                            <td class="center">Jack Chris</td>
                            <td class="center">
                                <span class="label label-success">普通</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf4</td>
                            <td class="center">2012/01/01</td>
                            <td class="center">Muhammad Usman</td>
                            <td class="center">
                                <span class="label label-success">普通</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf5</td>
                            <td class="center">2012/02/01</td>
                            <td class="center">Sheikh Heera</td>
                            <td class="center">
                                <span class="label label-important">高级</span>
                            </td>
                        </tr>
                        <tr>
                            <td>sjfhjf6</td>
                            <td class="center">2012/02/01</td>
                            <td class="center">Helen Garner</td>
                            <td class="center">
                                <span class="label label-important">高级</span>
                            </td>
                        </tr>
                        <tr>
                            <td>sjfhjf7</td>
                            <td class="center">2012/03/01</td>
                            <td class="center">Saruar Ahmed</td>
                            <td class="center">
                                <span class="label label-warning">专业</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf8</td>
                            <td class="center">2012/03/01</td>
                            <td class="center">Ahemd Saruar</td>
                            <td class="center">
                                <span class="label label-warning">专业</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf9</td>
                            <td class="center">2012/01/21</td>
                            <td class="center">Habib Rizwan</td>
                            <td class="center">
                                <span class="label label-info">旗舰</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf10</td>
                            <td class="center">2012/01/21</td>
                            <td class="center">Rizwan Habib</td>
                            <td class="center">
                                <span class="label label-success">普通</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf11</td>
                            <td class="center">2012/08/23</td>
                            <td class="center">Amrin Sana</td>
                            <td class="center">
                                <span class="label label-important">高级</span>
                            </td>

                        </tr>
                        <tr>
                            <td>sjfhjf12</td>
                            <td class="center">2012/08/23</td>
                            <td class="center">Sana Amrin</td>
                            <td class="center">
                                <span class="label label-important">高级</span>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <!--/span-->

    </div>
    <!--/row-->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
</asp:Content>

