<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendMyAttend, App_Web_p5eazu2w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../UserZone/WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlMessage.ascx" TagName="WebUserControlMessage" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc3" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的好友</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的好友" href="/User/UserFriend/Default.aspx">我的好友</a>&gt;&gt;我关注的人
</div>
        <uc2:WebUserControlTop ID="WebUserControlTop2" runat="server" />
        <uc3:WebUserControlTop ID="WebUserControlTop1" runat="server" />
        <uc1:WebUserControlMessage ID="WebUserControlMessage1" runat="server" />
        <div class="us_topinfo" style="margin-top: 10px; font-size: 12px;">
        <ul>
            <li style="width: 120px; float: left; text-align: center;">
                <asp:GridView ID="gvGroup" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                    CellPadding="4" Width="95%" GridLines="Horizontal">
                    <Columns>
                        <asp:TemplateField HeaderText="好友分组">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnGroup" runat="server" Text='<%# Bind("GroupName") %>' OnClick="lbtnGroup_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle HorizontalAlign="Center" />
                </asp:GridView>
            </li>
            <asp:HiddenField ID="HiddenUserID" runat="server" />
            <li style="width: 70%; height: 30px; text-align: right; margin-right: 10px">好友搜索：
                <asp:TextBox ID="FriendName" runat="server"></asp:TextBox>
                <asp:Button ID="search" runat="server" Text="搜  索" /></li>
            <li style="width: 70%;">
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal"
                    Width="100%" DataKeyField="ID">
                    <ItemTemplate>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td align="center">
                                    <font color="#000066"><strong>
                                        <%#Eval("UserName").ToString() %></strong></font>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:Image ID="Image1" runat="server" Height="68px" Width="72px" ImageUrl='<%#GetPic(Eval("FriendID").ToString())%>' />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    [<asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删 除</asp:LinkButton>]
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </li>
            <li style="height: 30px; text-align: center;">共<asp:Label ID="Allnum" runat="server"
                Text=""></asp:Label>&nbsp;
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                    Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个/页 转到第<asp:DropDownList ID="DropDownList1"
                    runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页</li>
        </ul>
        </div>
</form>
</body>
</html>