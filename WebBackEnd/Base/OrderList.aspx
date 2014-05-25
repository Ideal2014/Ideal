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
                <h2><i class="icon-user"></i>订单列表</h2>
            </div>
            <div class="box-content">

                <asp:GridView ID="OrderGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Ord_ID" HeaderText="订单号" ItemStyle-CssClass="center" />
                        <asp:BoundField DataField="Ord_Time" HeaderText="购买时间" ItemStyle-CssClass="center" />
                        <asp:BoundField DataField="Stu_UserName" HeaderText="购买用户" ItemStyle-CssClass="center" />
                        <asp:TemplateField HeaderText="购买套餐" ItemStyle-CssClass="center">
                            <ItemTemplate>
                                <span class="label label-success">
                                    <asp:Label ID="OrdPlan" runat="server" Text='<%# Bind("Ord_Plan") %>'></asp:Label>
                                </span>
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

