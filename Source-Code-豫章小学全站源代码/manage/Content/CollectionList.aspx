<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.CollectionList, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>采集管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理 </span>&gt;&gt;<span> 系统设置 </span>&gt;&gt; <span><a href="ContentManage.aspx">内容管理 </a></span>&gt;&gt; 采集项目管理
</div>
    <div class="clearbox">
    </div>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="C_IID" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="选择">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
                <HeaderStyle Width="4%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="C_IID">
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="标  题">
                <ItemTemplate>
                    <%#GetTitle(DataBinder.Eval(Container.DataItem, "CollID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="30%" />
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="网站名称">
                <ItemTemplate>
                    <%#GetItemName(DataBinder.Eval(Container.DataItem, "ItemID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属栏目">
                <ItemTemplate>
                    <%#GetNode(DataBinder.Eval(Container.DataItem, "NodeID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属模型">
                <ItemTemplate>
                    <%#GetMode(DataBinder.Eval(Container.DataItem, "ModeID").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="8%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="采集页面">
                <ItemTemplate>
                    <a href='<%#DataBinder.Eval(Container.DataItem, "OldUrl")%>' target="_blank">浏览</a>
                </ItemTemplate>
                <HeaderStyle Width="4%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="结果">
                <ItemTemplate>
                    <%#DataBinder.Eval(Container.DataItem, "State").ToString()=="1"?"<font color=\"#00cc00\">成功</font>":"<font color=\"#cc0000\">失败</font>"%>
                </ItemTemplate>
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('您确定删除该数据吗？')" OnClick="LinkButton1_Click">删除</asp:LinkButton>
                </ItemTemplate>
                <HeaderStyle Width="5%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
        </Columns>
        <RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
        <PagerSettings FirstPageText="第一页" LastPageText="最后页" Mode="NextPreviousFirstLast" NextPageText="下一页" PreviousPageText="上一页" />
    </asp:GridView>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td>
                <asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" />
                <%--<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
         OnClick=""    Text="全选" />--%>
                &nbsp;
                <asp:Button ID="btnDeleteAll" class="C_input"  style="width:110px;"  runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}" Text="批量删除" OnClick="btnDeleteAll_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>