<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">主页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">反馈列表</a>
            </li>
        </ul>
    </div>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>反馈管理</h2>

            </div>
            <div class="box-content">

                <asp:GridView ID="FeedbackGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Stu_UserName" HeaderText="姓名" ItemStyle-CssClass="center"  ItemStyle-Width="50px"/>
                        <asp:BoundField DataField="Fee_Topic" HeaderText="主题" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Fee_Detail" HeaderText="内容" ItemStyle-CssClass="center" />
                        <asp:BoundField DataField="Fee_Time" HeaderText="时间" ItemStyle-CssClass="center" ItemStyle-Width="70px"/>
                        <asp:BoundField DataField="Fee_Level" HeaderText="评级" ItemStyle-CssClass="center" ItemStyle-Width="30px"/>
                        <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center" ItemStyle-Width="240px">
                            <ItemTemplate>
                               
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th width="50">姓名</th>
                            <th width="120">主题</th>
                            <th>内容</th>
                            <th width="70">时间</th>
                            <th width="30">评级</th>
                            <th width="240">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>刘菲</td>
                            <td class="center">学习成果</td>
                            <td class="center">雅思成绩：总分8分，听力9分，阅读8分，口语7.5分</td>
                            <td class="center">2014-03-24
                            </td>
                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>
                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>杜衡</td>
                            <td class="center">学习体会</td>
                            <td class="center">听力和口语对我来说是难点，通过Viki，我和外教在线交流，锻炼了我的听力和口语。听力练习是个长期的过程，大家一定要...</td>
                            <td class="center">2014-03-07
                            </td>

                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>

                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>张晓牧</td>
                            <td class="center">学习心得</td>
                            <td class="center">听力必须重点练习，因为听力在口语中还都会涉及，我就是听力特别好占了很大的便宜，如果时间多最好能每天都...</td>
                            <td class="center">2014-04-03
                            </td>
                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>
                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>何雪音</td>
                            <td class="center">学习硕果</td>
                            <td class="center">在2012年第二次的雅思考试中，我取得了总分7的成绩，单项分别为：听力8.5、阅读7、写作6、口语6。这是...</td>
                            <td class="center">2014-04-24
                            </td>
                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>
                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>成都</td>
                            <td class="center">学习心得</td>
                            <td class="center">我个人的心得就是，在备考过程中多读书，多背单词，不要只顾着埋头做题，还应该通过广泛的...</td>
                            <td class="center">2014-03-07
                            </td>
                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>
                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>刘祖泽</td>
                            <td class="center">学习感悟</td>
                            <td class="center">听力是我几门中发挥最好的。要想尽办法将自己置身于英语的语言环境中，和Viki里的外教交流就是...</td>
                            <td class="center">2014-03-03
                            </td>
                            <td class="center">
                                <span class="label label-important">S</span>
                            </td>
                            <td class="center">
                                <div class="btn-group">
                                    <a class="btn dropdown-toggle" data-toggle="dropdown">
                                        <i class="icon-user"></i><span class="hidden-phone">更改评级</span>
                                        <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">S</a></li>
                                        <li><a href="#">A</a></li>
                                        <li><a href="#">B</a></li>
                                        <li><a href="#">C</a></li>
                                        <li><a href="#">D</a></li>
                                        <li><a href="#">E</a></li>
                                    </ul>

                                    <a class="btn btn-danger" href="#">
                                        <i class="icon-trash icon-white"></i>
                                        删除
                                    </a>
                                </div>
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

