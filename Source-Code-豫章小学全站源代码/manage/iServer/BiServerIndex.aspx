<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_BiServerIndex, App_Web_isi4n0xy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>有问必答</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">后台管理&gt;&gt;<a href="BiServer.aspx">有问必答 </a></div>
    <table width="100%">
        <tr>
            <td style="text-align: center">
                <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                    <tr>
                        <td colspan="2" class="title" align="center">
                            问题摘要
                        </td>
                    </tr>
                    <tr align="left" class="tdbg">
                        <td width="100">
                            <a href="BselectiServer.aspx?num=-3&strTitle=">总数</a>
                        </td>
                        <td>
                            <asp:Label ID="lblAllNum" runat="server" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <asp:Panel ID="panel_w" runat="server" Visible="false">
                        <tr align="left" class="tdbg">
                            <td class="TitleTD">
                                <a href="BselectiServer.aspx?num=-1&strTitle="><font color="red">未解决</font></a>
                            </td>
                            <td>
                                <asp:Label ID="lblnum_w" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </asp:Panel>
                    <asp:Panel ID="panel_ch" runat="server" Visible="false">
                        <tr align="left" class="tdbg">
                            <td class="TitleTD">
                                <a href="BselectiServer.aspx?num=-2&strTitle="><font color="brown">处理中</font></a>
                            </td>
                            <td>
                                <asp:Label ID="lblNum_ch" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </asp:Panel>
                    <asp:Panel ID="panel_y" runat="server" Visible="false">
                        <tr align="left" class="tdbg">
                            <td class="TitleTD">
                                <a href="BselectiServer.aspx?num=-4&strTitle="><font color="green">已解决</font></a>
                            </td>
                            <td>
                                <asp:Label ID="lblnum_y" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </asp:Panel>
                </table>
                <br />
                <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                    <tr class="tdbg">
                        <td align="left">
                            查找：<asp:TextBox ID="TextBox1" CssClass="l_input" runat="server"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" CssClass="C_input" Text="搜索" OnClick="Button1_Click" />
                            <span style="float: right">
                                <input type="button" onclick="javascript:location.href='BselectiServer.aspx?num=-1&OrderID=<%=Request.QueryString["OrderID"] %>&menu=<%=Request.QueryString["menu"] %>&strTitle='" value="更多" class="C_input" /></span>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Repeater ID="resultsRepeater_w" runat="server">
                                <HeaderTemplate>
                                    <table width="100%" cellpadding="4" class="border" cellspacing="0" style="font-weight: normal">
                                        <thead>
                                            <tr class="tdbg" align="center">
                                                <th class="title">
                                                    编号
                                                </th>
                                                <th class="title">
                                                    标题
                                                </th>
                                                <th class="title">
                                                    优先级
                                                </th>
                                                <th class="title">
                                                    问题类型
                                                </th>
                                                <th class="title">
                                                    已读次数
                                                </th>
                                                <th class="title">
                                                    提交时间
                                                </th>
                                                <th class="title">
                                                    状态
                                                </th>
                                                <th class="title">
                                                    操作
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                                        class="tdbg" align="center">
                                        <td>
                                            <%# Eval("QuestionId")%>
                                        </td>
                                        <td>
                                            <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>">
                                                <%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%></a>
                                        </td>
                                        <td>
                                            <%# Eval("Priority")%>
                                        </td>
                                        <td>
                                            <%# Eval("Type")%>
                                        </td>
                                        <td>
                                            <%# Eval("ReadCount")%>
                                        </td>
                                        <td>
                                            <%# Eval("SubTime")%>
                                        </td>
                                        <td>
                                            <asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label>
                                        </td>
                                        <td>
                                            <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>">编辑</a> &nbsp;&nbsp; <a href="BIServerDel.aspx?QuestionId=<%#Eval("QuestionId")%>" onclick="return confirm('确认删除此项?')">删除</a>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody> </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
                <br />
                <p>
               <input type="button" onclick="javascript:location.href='AddQuestionRecord.aspx?OrderID=<%=Request.QueryString["OrderID"] %>'" value="添加问题记录" class="C_input" /></p>
            </td>
        </tr>
    </table>
    <div class="divbox" id="nocontent" runat="server" style="display: none">暂无问题</div>
    </table>
    </form>
</body>
</html>