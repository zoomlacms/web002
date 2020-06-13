<%@ page language="C#" autoeventwireup="true" inherits="Zoomla.Website.manage.Shop.StockManage, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>库存管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

    <script language="javascript">
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
            location.href = "Stock.aspx?menu=edit&id=" + id + "";
        }    
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="StockManage.aspx">
            库存管理</a></span> &gt;&gt; <span><a href="StockManage.aspx">库存管理</a></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td width="5%" class="title">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="8%" class="title">
                单据类型
            </td>
            <td width="17%" class="title">
                商品名称
            </td>
            <td width="25%" class="title">
                单据编号
            </td>
            <td width="15%" class="title">
                录入时间
            </td>
            <td width="12%" class="title">
                录入者
            </td>
            <td width="8%" class="title">
                数量
            </td>
            <td width="10%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="StockRepeater" runat="server">
            <ItemTemplate>
                <tr class="tdbg" id="<%#Eval("id")%>" onmouseover="this.className='tdbgmouseover' onmouseout="this.className='tdbg'" ondblclick="getinfo(this.id )">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%# Eval("id")%>' />
                    </td>
                    <td height="22" align="center">
                        <%#stocktype(DataBinder.Eval(Container,"DataItem.stocktype","{0}"))%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("proname")%>
                    </td>
                    <td height="22" align="left">
                        <%#Eval("danju") %>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("addtime") %>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("adduser") %>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Pronum")%>
                    </td>
                    <td height="22" align="center">
                        <a href="Stock.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="StockManage.aspx?menu=del&id=<%#Eval("id") %>"
                            onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="10" align="center" class="tdbgleft">
                <span style="text-align: center">
                    共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                 </span>
            </td>
        </tr>
    </table>
    <br />
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="height: 21px">
                <asp:Button ID="Button3" Style="width: 100px" class="C_input" runat="server" OnClick="Button3_Click"
                    OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" />&nbsp;
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
