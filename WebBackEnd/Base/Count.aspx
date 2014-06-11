<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Count.aspx.cs" Inherits="Base_Count" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!-- content starts -->

    <asp:HiddenField ID="HiddenClassNumber" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenClassPercent" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenOrderNumber" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="HiddenOrderPercent" runat="server" ClientIDMode="Static" />

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
        <div class="box span6">
            <div class="box-header well">
                <h2><i class="icon-list-alt"></i>最近10天外教访问量</h2>
            </div>
            <div class="box-content">
                <div id="stackchart-class" class="center" style="height: 300px"></div>

            </div>
        </div>
        <!--/span-->
        <div class="box span6">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-list-alt"></i>外教访问量百分比</h2>
            </div>
            <div class="box-content">
                <div id="piechart-class" style="height: 300px"></div>
            </div>
        </div>
        <!--/span-->


    </div>
    <!--/row-->

    <div class="row-fluid sortable">
        <!--/span-->

        <div class="box span6">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-list-alt"></i>最近10天外教购买量</h2>
            </div>
            <div class="box-content">
                <div id="stackchart-order" style="height: 300px"></div>
            </div>
        </div>
        <!--/span-->

        <div class="box span6">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-list-alt"></i>外教购买量百分比</h2>
            </div>
            <div class="box-content">
                <div id="piechart-order" style="height: 300px"></div>
            </div>
        </div>
        <!--/span-->
    </div>
    <!--/row-->

    <!-- content ends -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="Server">
    <script>
        $(document).ready(function () {
            var class_number = eval($("#HiddenClassNumber").val());
            alert(class_number);
            var order_number = eval($("#HiddenOrderNumber").val());
            alert(order_number);
            var class_percent = eval($("#HiddenClassPercent").val());
           
            var order_percent = eval($("#HiddenOrderPercent").val());

            stackchart_display($("#stackchart-class"), class_number);
            stackchart_display($("#stackchart-order"), order_number);
            piechart_display($("#piechart-class"), class_percent);
            piechart_display($("#piechart-order"), order_percent);
            function stackchart_display(stackchart, data) {
                if (stackchart.length) {
                    var stack = 0, bars = true, lines = false, steps = false;

                    function plotWithOptions() {
                        $.plot(stackchart, [data], {
                            series: {
                                stack: stack,
                                lines: { show: lines, fill: true, steps: steps },
                                bars: { show: bars, barWidth: 0.6 }
                            }
                        });
                    }

                    plotWithOptions();

                    $(".stackControls input").click(function (e) {
                        e.preventDefault();
                        stack = $(this).val() == "With stacking" ? true : null;
                        plotWithOptions();
                    });
                    $(".graphControls input").click(function (e) {
                        e.preventDefault();
                        bars = $(this).val().indexOf("Bars") != -1;
                        lines = $(this).val().indexOf("Lines") != -1;
                        steps = $(this).val().indexOf("steps") != -1;
                        plotWithOptions();
                    });
                }
            }
            function piechart_display(piechart, data) {
                if (piechart.length) {
                    $.plot(piechart, data,
                    {
                        series: {
                            pie: {
                                show: true
                            }
                        },
                        grid: {
                            hoverable: true,
                            clickable: true
                        },
                        legend: {
                            show: false
                        }
                    });

                    function pieHover(event, pos, obj) {
                        if (!obj)
                            return;
                        percent = parseFloat(obj.series.percent).toFixed(2);
                        $("#hover").html('<span style="font-weight: bold; color: ' + obj.series.color + '">' + obj.series.label + ' (' + percent + '%)</span>');
                    }
                    piechart.bind("plothover", pieHover);
                }
            }
        });



    </script>
</asp:Content>
