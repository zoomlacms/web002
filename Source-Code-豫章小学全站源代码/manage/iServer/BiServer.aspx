<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_BiServer, App_Web_isi4n0xy" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title><%=lang.Get("m_BiServer_qa")%></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>
    th
    {
        background: url(Images/title.gif) #E7F3FF repeat-x top; /*line-height: 120%;*/
        padding: 2px;
        color: #656766;
    }
    .style1
    {
        height: 2px;
    }
</style>
</head>
<body>
    <form id="Form1" runat="server">
    <div class="r_navigation">
        
        <span><%=lang.Get("m_BiServer_manage")%></span>&gt;&gt;<span><a href="BiServer.aspx"><%=lang.Get("m_BiServer_qa")%></a></span>&gt;&gt;<span><%=lang.Get("m_BiServer_list")%></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%">
        <div id="viewPanel">
            <!-- v3.0.2 -->
            <table width="100%">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                            <tr>
                                <td colspan="2" class="title" align="center"><%=lang.Get("m_BiServer_summary")%></td>
                            </tr>
                            <tr align="left" class="tdbg">
                                <td width="100"><a href="BselectiServer.aspx?num=-3&strTitle="><%=lang.Get("m_BiServer_total")%></a></td>
                                <td>
                                    <asp:Label ID="lblAllNum" runat="server" Text="0"></asp:Label>
                                </td>
                            </tr>
                            <asp:Panel ID="panel_w" runat="server" Visible="false">
                                <tr align="left" class="tdbg">
                                    <td class="TitleTD">
                                        <a href="BselectiServer.aspx?num=-1&strTitle="><font color="red"><%=lang.Get("m_BiServer_unsolve")%></font></a>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblnum_w" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </asp:Panel>
                            <asp:Panel ID="panel_ch" runat="server" Visible="false">
                                <tr align="left" class="tdbg">
                                    <td class="TitleTD">
                                        <a href="BselectiServer.aspx?num=-2&strTitle="><font color="brown"><%=lang.Get("m_BiServer_solve")%></font></a>
                                    </td>
                                    <td>
                                        <asp:Label ID="lblNum_ch" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </asp:Panel>
                            <asp:Panel ID="panel_y" runat="server" Visible="false">
                                <tr align="left" class="tdbg">
                                    <td class="TitleTD">
                                        <a href="BselectiServer.aspx?num=-4&strTitle="><font color="green"><%=lang.Get("m_BiServer_solved")%></font></a>
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
                                <td>
                                    <%=lang.Get("m_BiServer_find")%>：<asp:TextBox ID="TextBox1" CssClass="l_input" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" CssClass="C_input" Text="搜索" OnClick="Button1_Click" />
                                    <span style="float: right">
                                        <input type="button" onclick="javascript:location.href='BselectiServer.aspx?num=-1&OrderID=<%=Request.QueryString["OrderID"] %>&menu=<%=Request.QueryString["menu"] %>&strTitle='"
                                            value="更多" class="C_input" /></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Repeater ID="resultsRepeater_w" runat="server">
                                        <HeaderTemplate>
                                            <table width="100%" cellpadding="4" class="border" cellspacing="0" style="font-weight: normal">
                                                <thead>
                                                    <tr class="tdbg" align="center">
                                                        <th class="title"><%=lang.Get("m_BiServer_num")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_title")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_priority")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_type")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_read")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_submit")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_status")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_operate")%></th>
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
                                                <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>" >
                                                      <%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%></a>
                                                </td>
                                                <td><%# Eval("Priority")%></td>
                                                <td><%# Eval("Type")%></td>
                                                <td><%# Eval("ReadCount")%></td>
                                                <td> <%# Eval("SubTime")%></td>
                                                <td>
                                                    <asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label>
                                                </td>
                                                <td>
                                                     <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>" ><%=lang.Get("m_BiServer_edit")%></a> &nbsp;&nbsp;
                                                    <a href="BIServerDel.aspx?QuestionId=<%#Eval("QuestionId")%>" onclick="return confirm('确认删除此项?')">
                                                        <%=lang.Get("m_BiServer_del")%></a>
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
                        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                            <tr class="tdbg">
                                <td>
                                     <%=lang.Get("m_BiServer_find")%>：<asp:TextBox ID="TextBox2" CssClass="l_input" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" CssClass="C_input" Text="搜索" OnClick="Button2_Click" />
                                    <span style="float: right">
                                        <input type="button" onclick="javascript:location.href='BselectiServer.aspx?num=-2&menu=<%=Request.QueryString["menu"] %>&OrderID=<%=Request.QueryString["OrderID"] %>&strTitle='"
                                            value="更多" class="C_input" /></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Repeater ID="resultsRepeater_ch" runat="server">
                                        <HeaderTemplate>
                                            <table width="100%" cellpadding="4" class="border" cellspacing="0" style="font-weight: normal">
                                                <thead>
                                                    <tr align="center">
                                                        <th class="title"><%=lang.Get("m_BiServer_num")%>：</th>
                                                        <th class="title"><%=lang.Get("m_BiServer_title")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_priority")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_type")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_read")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_submit")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_status")%></th>
                                                        <th class="title"><%=lang.Get("m_BiServer_operate")%></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                                                <td>
                                                    <%# Eval("QuestionId")%>
                                                </td>
                                                <td>
                                                    <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>" >
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
                                                    <a href="BiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>"><%=lang.Get("m_BiServer_edit")%></a>&nbsp;&nbsp;<a
                                                        href="javascript:void(0)" onclick="return alert('处理中的问题不允许删除!')"><%=lang.Get("m_BiServer_del")%></a>
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
                        <p>
                            <input type="button" onclick="javascript:location.href='AddQuestionRecord.aspx?OrderID=<%=Request.QueryString["OrderID"] %>'" value="添加问题记录" class="C_input" /></p>
                    </td>
                </tr>
            </table>
        </div>
    </table>
    </form>
</body>
</html>
