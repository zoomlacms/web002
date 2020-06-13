<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.ProducerManage, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>厂商管理</title>
    
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
        function CheckAll(spanChk)//CheckBox全选
        {
            var oItem = spanChk.children;
            var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
            xState = theBox.checked;
            elm = theBox.form.elements;
            for (i = 0; i < elm.length; i++)
                if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
                if (elm[i].checked != xState)
                    elm[i].click();
            }
        }
        function Getinfo(id) {
            location.href = "Producer.aspx?menu=edit&id="+id+"";
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 商城设置 &gt;&gt; <span><a href="ProducerManage.aspx">
            厂商管理</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="105" height="24" align="center" class="title">
                    <span class="tdbgleft">
                        <asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" />
                    </span>
                </td>
                <td width="253" align="center" class="title">
                    厂商名称
                </td>
                <td width="81" align="center" class="title">
                    厂商缩写
                </td>
                <td width="88" align="center" class="title">
                    <span class="tdbgleft">厂商分类</span>
                </td>
                <td width="51" align="center" class="title">
                    已启用
                </td>
                <td width="75" align="center" class="title">
                    <span class="tdbgleft">属性</span>
                </td>
                <td width="304" align="center" class="title">
                    <span class="tdbgleft"></span><span class="tdbgleft">操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Manufacturerslist" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        id="<%#Eval("id") %>" ondblclick="Getinfo(this.id)">
                        <td height="24" align="center">
                            <input name="Item" type="checkbox" value="<%#Eval("id") %>">
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Producername") %>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("Smallname")%>
                        </td>
                        <td height="24" align="center">
                            <%#Eval("CoClass") %>
                        </td>
                        <td height="24" align="center">
                            <%#showstop2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            <%#showtop2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            <%#showjian2(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                        </td>
                        <td height="24" align="center">
                            &nbsp; <a href="?menu=edit&id=<%#Eval("id") %>">修改</a>
                            <%#showstop(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            <%#showtop(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            <%#showjian(DataBinder.Eval(Container, "DataItem.id", "{0}"))%>
                            <a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">
                                删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="7" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条数据
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：
                    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条数据/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
            <tr>
                <td height="24" colspan="7">
                    <asp:Button ID="Button1" class="C_input" Style="width: 110px;" Text="删除选中厂商" runat="server"
                        OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button1_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
