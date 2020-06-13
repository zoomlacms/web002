<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_CollectionStart, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>

<script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
   当前位置：功能导航 >><a href="CollectionStart.aspx"> 开始采集项目</a>
    </div>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CItem_ID" PageSize="20" Width="100%">
        <Columns>
            <asp:TemplateField HeaderText="选择" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="4%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="CItem_ID" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="项目名称" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <a href='CollectionStep1.aspx?Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>
                        <%#DataBinder.Eval(Container.DataItem, "ItemName")%></a>
                </ItemTemplate>
                <HeaderStyle Width="30%" />
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="采集网站名称" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <a href='<%#DataBinder.Eval(Container.DataItem,"CollUrl") %>' target="_blank">
                        <%#DataBinder.Eval(Container.DataItem, "SiteName")%></a>
                </ItemTemplate>
                <HeaderStyle Width="12%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属栏目" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <%#GetNode(DataBinder.Eval(Container.DataItem, "NodeID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="20%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属模型" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <%#GetMode(DataBinder.Eval(Container.DataItem, "ModeID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField DataField="LastTime" ItemStyle-CssClass="tdbg" HeaderText="最后采集时间" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemStyle CssClass="tdbg"></ItemStyle>
            </asp:BoundField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="height: 30px" valign="bottom">
                <asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" />
                &nbsp;
                <asp:Button ID="btnCollAll" runat="server"  CssClass="button" OnClientClick="if(!IsSelectedId()){alert('请选择要采集的项目');return false;}" Text="开始采集" OnClick="btnCollAll_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
