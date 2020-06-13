<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_CollectionManage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>Web页面信息采集</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>

<script src="/JS/Common.js" type="text/javascript"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
          当前位置：功能导航 >><a href="CollectionManage.aspx"> Web页面信息采集 [<a href="CollectionStep1.aspx?nid=<%=Request.QueryString["nid"] %>"  style="color:Red">添加采集项目</a>]</a></div>
    <asp:GridView ID="Egv" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CItem_ID" PageSize="20" Width="100%" OnPageIndexChanging="Egv_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="选择" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <asp:CheckBox ID="chkSel" runat="server" Enabled='<%#(Eval("Switch")+"")=="1"?false:true %>' />
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
                    <a href='CollectionStep1.aspx?nid=<%=Request.QueryString["nid"] %>&Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>
                        <%#DataBinder.Eval(Container.DataItem, "ItemName")%></a>
                </ItemTemplate>
                <HeaderStyle Width="30%" />
                <ItemStyle CssClass="tdbg" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="网站名称" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <a href='<%#DataBinder.Eval(Container.DataItem,"CollUrl") %>' target="_blank">
                        <%#DataBinder.Eval(Container.DataItem, "SiteName")%></a>
                </ItemTemplate>
                <HeaderStyle Width="10%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="入库节点" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
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
            <asp:TemplateField HeaderText="采集状态" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    <%#GetState(DataBinder.Eval(Container.DataItem, "Switch").ToString())%>
                </ItemTemplate>
                <HeaderStyle Width="7%" />
                <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="操作" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White" >
                <ItemTemplate>
                    &nbsp;<a href='CollectionStep1.aspx?nid=<%=Request.QueryString["nid"] %>&Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改项目</a> | <a href='CollectionStep2.aspx?nid=<%=Request.QueryString["nid"] %>&Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改列表</a>&nbsp;
                    <br />
                    &nbsp;<a href='CollectionStep3.aspx?nid=<%=Request.QueryString["nid"] %>&Action=Modify&ItemID=<%#DataBinder.Eval (Container.DataItem,"CItem_ID")%>'>修改字段</a> |
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Del" CommandArgument='<%# Eval("CItem_ID") %>' OnClientClick="return confirm('你确定将该数据删除吗？')" OnClick="LinkButton4_Click">删除项目</asp:LinkButton>&nbsp;
                </ItemTemplate>
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
            <td align="left">
                &nbsp;&nbsp;<asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" />
                <%--<asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" Font-Size="9pt" OnCheckedChanged="CheckBox2_CheckedChanged"
         OnClick=""    Text="全选" />--%>
                &nbsp;
                <asp:Button ID="btnDeleteAll" runat="server" CssClass="button"  OnClientClick="if(!IsSelectedId()){alert('请选择删除项');return false;}else{return confirm('你确定要将所有选择项放入回收站吗？')}" Text="批量删除" OnClick="btnDeleteAll_Click" />
                &nbsp;
                <asp:Button ID="btnCollection" runat="server"  CssClass="button" Text="开始采集" 
                    onclick="btnCollection_Click" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
