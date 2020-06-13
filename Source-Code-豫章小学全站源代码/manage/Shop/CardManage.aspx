<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_CardManage, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>VIP卡管理</title>

    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .style1
        {
            line-height: 22px;
            color: #1e860b;
            font-weight: bold;
            width: 19%;
            background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
        }
        .style3
        {
            background: #e0f7e5;
            line-height: 120%;
        }
    </style>

    <script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>商城配置</span> &gt;&gt;
        <span>VIP卡管理</span>&nbsp;&nbsp;&nbsp;<a href="AddCard.aspx">[ 生成VIP卡 ]</a>&nbsp;&nbsp;&nbsp;<a
            href="CardTypeManage.aspx">[ 卡类型管理 ]</a>&nbsp;&nbsp;&nbsp;<a href="Addcardtype.aspx">[
                添加卡类型 ]</a>
    </div>
    <div class="clearbox">
    </div>
    <div class="r_navigation">
        状态选择：<a href="CardManage.aspx">全部</a> <a href="?CardState=2">已处理</a> <a href="?CardState=1">
            未处理</a>
    </div>
    <div class="clearbox">
    </div>
    <div>
    </div>
    <div style="text-align: center">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center">
            <td width="10%" class="title">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="15%" class="title">
                卡号
            </td>
            <td class="style1" width="15%">
                卡密码
            </td>
            <td width="20%" class="title">
                发放用户
            </td>
            <td width="10%" class="title">
                使用用户
            </td>
            <td width="10%" class="title">
                卡片状态
            </td>
            <td width="20%" class="title">
                操作
            </td>
        </tr>
        <asp:Repeater ID="gvCard" runat="server" >
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%# Eval("Card_ID")%>' /><%# Eval("Card_ID")%>
                    </td>
                    <td height="22" align="center">
                        <%# Eval("CardNum")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("CardPwd")%>
                    </td>
                    <td height="22" align="left">
                        <%#GetUserName(DataBinder.Eval(Container.DataItem ,"PutUserID").ToString()) %>
                    </td>
                    <td height="22" align="center">
                        <%#GetUserName(DataBinder.Eval(Container.DataItem ,"AssociateUserID").ToString()) %>
                    </td>
                    <td height="22" align="center">
                        <%#GetState(DataBinder.Eval(Container.DataItem, "CardState").ToString())%>
                        <td height="22" align="center">
                            <%#showuse(DataBinder.Eval(Container.DataItem, "Card_ID").ToString())%>&nbsp;&nbsp;&nbsp;<a
                                href="CardManage.aspx?menu=del&id=<%#Eval("Card_ID") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>
                        </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td colspan="7" align="center" class="style3">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个商品
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
    <div>
        <asp:Button ID="Button3" class="C_input" style="width:110px;"  runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
            Text="批量删除" OnClick="Button3_Click" />
        &nbsp; &nbsp; &nbsp;<asp:Button ID="Button4" class="C_input" style="width:110px;"  runat="server" Text="开启卡片" OnClick="Button4_Click" />
        &nbsp; &nbsp;
        <asp:Button ID="Button5" class="C_input" style="width:110px;"  runat="server" Text="关闭卡片" OnClick="Button5_Click" />
    </div>
    </form>
</body>
</html>
