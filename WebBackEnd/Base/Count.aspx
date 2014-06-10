<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Count.aspx.cs" Inherits="Base_Count" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- content starts -->

    <asp:HiddenField ID="HiddenClassPercent" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenOrderNumber" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenField2" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenField3" runat="server" ClientIDMode="Static" />
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">首页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">统计信息</a>
            </li>
        </ul>
    </div>
    <div class="sortable row-fluid">
        <a data-rel="tooltip" title="6名新学员" class="well span3 top-block" href="user-list.html">
            <span class="icon32 icon-red icon-user"></span>
            <div>总学员数</div>
            <div>
                <asp:Label ID="StudentNum" runat="server"></asp:Label>
            </div>
            <span class="notification">
                <asp:Label ID="NewStudentNum" runat="server"></asp:Label></span>
        </a>

        <a data-rel="tooltip" title="4个新订单" class="well span3 top-block" href="#">
            <span class="icon32 icon-color icon-star-on"></span>
            <div>购买量</div>
            <div>
                <asp:Label ID="OrderNum" runat="server" />
            </div>
            <span class="notification green">
                <asp:Label ID="NewOrderNum" runat="server" /></span>
        </a>

        <a data-rel="tooltip" title="234新增机器人访问量" class="well span3 top-block" href="#">
            <span class="icon32 icon-color icon-web"></span>
            <div>机器人的总访问量</div>
            <div>
                <asp:Label ID="ClassNum" runat="server" />
            </div>
            <span class="notification yellow">
                <asp:Label ID="NewClassNum" runat="server" /></span>
        </a>

        <a data-rel="tooltip" title="12条新的反馈信息" class="well span3 top-block" href="celebrity-list.html">
            <span class="icon32 icon-color icon-envelope-closed"></span>
            <div>反馈信息</div>
            <div>
                <asp:Label ID="FeeNum" runat="server" />
            </div>
            <span class="notification red">
                <asp:Label ID="NewFeeNum" runat="server" /></span>
        </a>
    </div>

    <div class="row-fluid"></div>

    <div class="row-fluid sortable">
        <!--/span-->

        <div class="box span6">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-list-alt"></i>每个机器人访问量百分比</h2>
            </div>
            <div class="box-content">
                <div id="piechart" style="height: 300px"></div>
            </div>
        </div>
        <!--/span-->

        <div class="box span6">
            <div class="box-header well">
                <h2><i class="icon-list-alt"></i>访问量</h2>
            </div>
            <div class="box-content">
                <div id="realtimechart" class="center" style="height: 300px"></div>

            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->

    <div class="row-fluid sortable">
        <!--/span-->

        <div class="box span6">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-list-alt"></i>最近10天下单情况</h2>
            </div>
            <div class="box-content">
                <div id="stackchart" style="height: 300px"></div>
            </div>
        </div>
        <!--/span-->

        <div class="box span6">
            <div class="box-header well">
                <h2><i class="icon-list-alt"></i>机器人当前访问量</h2>
            </div>
            <div class="box-content">
                <div id="sincos" class="center" style="height: 300px"></div>

            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->

    <!-- content ends -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
    <script>

        var data_teacher = eval($("#HiddenClassPercent").val());

        var data_order = [];

    </script>
</asp:Content>

