<%@ control language="C#" autoeventwireup="true" inherits="WebUserControlComment, App_Web_pe4eotmu" %>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="ID" Width="100%">
                <ItemTemplate>
                    <table border="1" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                            <td align="center" style="width: 15%" valign="top">
                                <%# getusername(DataBinder.Eval(Container.DataItem, "UserID").ToString())%>
                            </td>
                            <td valign="top" width="85%">
                                <table width="100%">
                                    <tr>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 90%">
                                            <%# DataBinder.Eval(Container.DataItem, "Ctitle")%>
                                        </td>
                                        <td>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" OnClientClick="return  confirm('你确定要删除这个评论吗？')" CausesValidation="false">删除</asp:LinkButton></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <%# DataBinder.Eval(Container.DataItem, "Ccontent")%>
                                        </td>
                                    </tr>
                                </table>
                                
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
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
            <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页
        </td>
    </tr>
    <tr>
        <td>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td height="30" colspan="2" valign="top">
                        标题:&nbsp;<asp:TextBox ID="titletxt" runat="server" Width="260px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td height="120" colspan="2" valign="top">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <textarea id="TextArea1" style="width: 360px; height: 112px" runat="server"></textarea>
                    </td>
                </tr>
                <tr>
                    <td width="40%" align="center">
                        <asp:Button ID="commentBtn" runat="server" OnClick="commentBtn_Click" Text="发表评论" /></td>
                    <td width="60%">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
