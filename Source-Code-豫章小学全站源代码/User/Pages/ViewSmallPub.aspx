<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_ViewSmallPub, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script>
function OpenLink(lefturl, righturl) {
	if (lefturl != "") {
		parent.frames["left"].location = lefturl;
	}
	parent.frames["main_right"].location = righturl;
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>用户管理</span> &gt;&gt; <span><a href="###" onclick="OpenLink('PubGuide.aspx','pubmanage.aspx')">互动模块管理</a></span> &gt;&gt; <span>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                <asp:HiddenField ID="HiddenTable" runat="server" />
            <asp:HiddenField ID="HiddenPubRole" runat="server" />
    <asp:HiddenField ID="HdnModelID" runat="server" />
    <asp:HiddenField ID="HiddenType" runat="server" />
        <asp:HiddenField ID="HiddenPubid" runat="server" />
        <asp:HiddenField ID="HdnID" runat="server" />
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
    <tr class="title">
        <td>
            <asp:LinkButton ID="LbtnAllPub" runat="server" OnClick="LbtnAllPub_Click">所有信息</asp:LinkButton>
            |
            <asp:LinkButton ID="LbtnUNAuditedPub" runat="server" OnClick="LbtnUNAuditedPub_Click">待审核信息</asp:LinkButton>
            |
            <asp:LinkButton ID="LbtnuditedPub" runat="server" OnClick="LbtnuditedPub_Click">已审核信息</asp:LinkButton>
        </td>
    </tr>
</table>
<div class="clearbox">
</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center">
    <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
    <td width="5%" class="title">ID</td>
    <td width="40%" class="title">
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>标题</td>
    <td width="10%" class="title">参与人数</td>
    <td width="18%" class="title">添加时间</td>
    <td width="32%" class="title"> 操作</td>
    </tr>
    <asp:Repeater ID="gvCard" runat="server">       
    <ItemTemplate>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("ID")%>'/></td>
    <td height="22" align="center"><%# Eval("ID")%></td>
        <td height="22" align="left">
        <a href="javascript:void();" onclick="javascript: window.open('ViewSmallPub.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>', 'newwindow', 'height=500, width=800, top=200, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no'); " >
        <%#returnlen(Eval("PubTitle"))%>
        </a>
        </td>
    <td height="22" align="center"><%#Eval("Pubnum")%>
    <td height="22" align="center" ><%#Eval("PubAddTime")%>
    <td height="22" align="center">  
        <a href="PubView.aspx?Pubid=<%#this.HiddenPubid.Value%>&ID=<%#Eval("ID") %>&topid=<%=Request.QueryString["ID"]%>&small=small" >查看</a>&nbsp;
    <%#showuse(DataBinder.Eval(Container.DataItem, "Pubstart").ToString(), Eval("ID").ToString())%>
    &nbsp;  <%#showedit( Eval("ID"),1)%>
        &nbsp;<%#showedit( Eval("ID"),2)%>
    </td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
    <td height="22" colspan="7" align="center" class="tdbgleft">
    共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    个商品
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
        Text="" />页
    <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
        runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    页
            </td>
    </tr>
</table>
    <asp:Button ID="Button3" runat="server"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" onclick="Button3_Click"  Visible="false" />
</form>
</body>
</html>

