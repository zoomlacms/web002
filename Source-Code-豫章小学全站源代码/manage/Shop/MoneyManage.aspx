<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.MoneyManage, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>货币管理</title>

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
        function getinfo(id) {
            location.href = "AddMoney.aspx?menu=edit&id="+id+""; 
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; 商城设置 &gt;&gt; <span><a href="MoneyManage.aspx"
            target="_self">货币管理</a></span> &gt;&gt; 货币列表 [<span><a href="AddMoney.aspx">添加货币</a></span>]
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td width="5%" height="24" align="center" class="title">
                    <span class="tdbgleft">
                        <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></span>
                </td>
                <td width="15%" align="center" class="title">
                    货币代码
                </td>
                <td width="15%" align="center" class="title">
                    货币名称
                </td>
                <td width="15%" align="center" class="title">
                    <span class="tdbgleft">货币符号</span>
                </td>
                <td width="15%" align="center" class="title">
                    当前汇率
                </td>
                <td width="15%" align="center" class="title">
                    <span class="tdbgleft">默认货币</span>
                </td>
                <td align="center" class="title">
                    操作
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%# Eval("Flow")%>" ondblclick="getinfo(this.id)">
                        <td width="5%" height="24" align="center">
                            <span class="tdbgleft">
                                <input name="Item" type="checkbox" value='<%# Eval("Flow")%>' /></span>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("Money_code")%>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("Money_descp")%>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("Money_sign")%>
                        </td>
                        <td width="15%" align="center">
                            <%#Eval("Money_rate","{0:0.0000}")%>
                        </td>
                        <td width="15%" align="center">
                            <%#(Eval("Is_flag").ToString()=="1")?"是":"否"%>
                        </td>
                        <td align="center">
                            <a href="AddMoney.aspx?menu=edit&id=<%#Eval("Flow") %>">修改</a> <a href="?menu=del&id=<%#Eval("Flow") %>"
                                onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td height="24" colspan="7" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    个信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                        Text="" />页
                    <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                        runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                    页
                </td>
            </tr>
            <tr>
                <td height="24" colspan="7">
                    <asp:Button ID="Button1" class="C_input" Style="width: 110px;" Text="删除选中货币" runat="server"
                        OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button1_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
