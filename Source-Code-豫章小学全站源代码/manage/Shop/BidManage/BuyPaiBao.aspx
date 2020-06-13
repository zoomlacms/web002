<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BidManage_BuyPaiBao, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>宝点套餐</title>
    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>竞拍管理</span> &gt;&gt;
        <span>宝点套餐</span>&nbsp;&nbsp;&nbsp;<a href="AddPaibao.aspx">[ 添加套餐 ]</a>
        </div>
        <div class="clearbox">
        </div>
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
            <tr align="center" class="title" style="height:26px">
                <td width="5%">套餐ID </td>
                <td width="15%">套餐名称</td>
                <td width="15%">显示图片</td>
                <td width="15%">兑换比例(金钱/宝点)</td>
                  <td width="10%">赠送玩点</td>
                <td width="30%"> 套餐说明</td>
                <td width="10%">操作</td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="22" align="center"> <%# Eval("id")%></td>
                        <td height="22" align="center"><%#Eval("Tname")%></td>
                        <td height="22" align="center"><img src="/<%#Eval("Timg") %>" width="32" /></td>
                        <td height="22" align="center"><%#Eval("Tform")%>/<%#Eval("Ito")%></td>
                        <td height="22" align="center"><%#Eval("point")%></td>
                        <td height="22" align="center"><%#Eval("Tinfo")%></td>
                        <td height="22" align="center">
                            <a href="AddPaibao.aspx?menu=edit&id=<%#Eval("id") %>">修改</a>&nbsp;<a
                                href="?menu=del&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
             <tr class="tdbg">
                <td class="tdbgleft" colspan="7" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>条信息/页  转到第<asp:DropDownList 
                        ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
