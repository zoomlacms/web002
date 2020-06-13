<%@ page language="C#" autoeventwireup="true" inherits="manage_CallStat_StatVisitorReport, App_Web_sblwzw2t" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>无标题页</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            当前位置：功能导航 >> <a href="StatVisitorReport.aspx">访问记录</a>
        </div>
        <table width="100%">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="IP" HeaderText="IP" HeaderStyle-BackColor="#F0F6FC">
                                <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Height="24px" Width="90px" />
                                <HeaderStyle Height="26px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="登陆地区" HeaderStyle-BackColor="#F0F6FC">
                                <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Height="24px" />
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%#GetIP(DataBinder.Eval(Container.DataItem,"IP").ToString())%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="CallTime" HeaderText="登陆时间" HeaderStyle-BackColor="#F0F6FC">
                                <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px" Height="24px"
                                    HorizontalAlign="Center" />
                                <HeaderStyle Height="26px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CallSystem" HeaderText="登陆系统" HeaderStyle-BackColor="#F0F6FC">
                                <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px" HorizontalAlign="Center"
                                    Height="24px" />
                                <HeaderStyle Height="26px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="CallBrowser" HeaderText="登陆浏览器" HeaderStyle-BackColor="#F0F6FC">
                                <ItemStyle CssClass="tdbg" Font-Bold="False" ForeColor="Black" Width="130px" Height="24px"
                                    HorizontalAlign="Center" />
                                <HeaderStyle Height="26px" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr class="tdbg" style="background-color: #F0F6FC">
                <td height="24" colspan="6" align="center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
