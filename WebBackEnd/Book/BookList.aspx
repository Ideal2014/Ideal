<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookList.aspx.cs" Inherits="Book_BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="css" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div>
        <ul class="breadcrumb">
            <li>
                <a href="#">主页</a> <span class="divider">/</span>
            </li>
            <li>
                <a href="#">教材列表</a>
            </li>
        </ul>
    </div>

    <div class="row-fluid sortable">
        <div class="box span12">
            <div class="box-header well" data-original-title>
                <h2><i class="icon-user"></i>教材列表</h2>
               
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th width="100">书名</th>
                            <th width="100">图片</th>
                            <th>简介</th>
                            <th width="70">上架时间</th>
                            <th width="70">预览版</th>
                            <th width="70">完整版</th>
                            <th width="190">操作</th>
                        </tr>
                    </thead>
                    <tbody>

                        <tr>
                            <td>高考必考1000词</td>
                            <td class="center">
                                <img src="img/books/cover-purple.png"></td>
                            <td class="center">高考英语要求学生掌握3000-4000的词汇量以及一些中高级词汇，熟悉常见单词和词组的正确用法，掌握书面使用技巧和一定会话能力，涉及听、说、读、写多个方面。在一对一的情景对话交流中，熟悉并掌握高考英语中可能会出现的单词、词组和句法，轻松战胜高考英语。</td>
                            <td class="center">2013-12-13
                            </td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton11" runat="server">点此查看预览资源</asp:LinkButton>
                            </td>
                            <td class="center">
                                <asp:LinkButton ID="LinkButton12" runat="server">点此查看完整资源</asp:LinkButton>
                            </td>
                            <td class="center">
                                <a class="btn btn-success" href="book-edit.html">
                                    <i class="icon-zoom-in icon-white"></i>
                                    查看编辑                                            
                                </a>
                                <a class="btn btn-danger" href="#">
                                    <i class="icon-trash icon-white"></i>
                                    删除
                                </a>
                            </td>
                        </tr>

                    </tbody>
                </table>

                <asp:GridView ID="BookGrid" runat="server" CssClass="table table-striped table-bordered bootstrap-datatable datatable" AutoGenerateColumns="false">
                    <Columns>

                        <asp:BoundField DataField="Boo_Name" HeaderText="书名" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                        <asp:BoundField DataField="Boo_Image" HeaderText="封面" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_Desribe" HeaderText="简介" ItemStyle-CssClass="center" ItemStyle-Width="70px" />
                        <asp:BoundField DataField="Boo_RegisterDate" HeaderText="上架时间" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_Preview" HeaderText="预览版" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Boo_View" HeaderText="完整版" ItemStyle-CssClass="center" ItemStyle-Width="120px" />
                        <asp:BoundField DataField="Tea_Name" HeaderText="所属老师" ItemStyle-CssClass="center" ItemStyle-Width="50px" />
                          <asp:TemplateField HeaderText="操作" ItemStyle-CssClass="center" ItemStyle-Width="240px">
                              <ItemTemplate>
                                <div class="btn-group">
                                 
                                   <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" CssClass="btn-danger" Text="删除" />
                    
                                     </div>
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

