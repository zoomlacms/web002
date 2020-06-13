<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_SendMailList, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
        当前位置：功能导航 >> <a href="SendMailList.aspx">发送邮件列表</a></div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="ID">
                            <Columns>
                                <asp:TemplateField HeaderText="标题" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemTemplate>
                                    <a href='MailShow.aspx?id=<%#DataBinder.Eval(Container.DataItem,"ID")%>'><%#DataBinder.Eval(Container.DataItem, "MailTitle")%></a>

                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="发送时间" DataField="MailSendTime"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  />
                                <asp:TemplateField HeaderText="邮件状态" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemTemplate>
                                    <%#GetState(DataBinder.Eval(Container.DataItem, "MailState").ToString())%>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" HeaderStyle-Width="30px" ItemStyle-HorizontalAlign="center" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                <td align="center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                    <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                    <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                    页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                        runat="server" Text=""></asp:Label>页
                    <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
                        ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>页</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
