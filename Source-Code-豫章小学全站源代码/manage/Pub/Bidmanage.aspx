<%@ page language="C#" autoeventwireup="true" inherits="manage_Pub_Bidmanage, App_Web_ob5b33bz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>等级管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
	function getinfo(id) {
		location.href = 'PageTemplate.aspx?id=' + id;
	}
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
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
	function openurls(url) {
		Dialog.open({ URL: url });
	}
	function open_title(GeneralID) {
		var diag = new Dialog();
		diag.Width = 800;
		diag.Height = 600;
		diag.Title = "修改竞标";
		diag.URL = "../Content/EditContent.aspx?GeneralID=" + GeneralID;
		diag.show();
	}

	function open_title2(userid) {
		var diag = new Dialog();
		diag.Width = 800;
		diag.Height = 600;
		diag.Title = "用户资料";
		diag.URL = "../user/Userinfo.aspx?id=" + userid;
		diag.show();
	}

	function open_title3(Gid, Modelid) {
		var diag = new Dialog();
		diag.Width = 800;
		diag.Height = 600;
		diag.Title = "查看内容";
		diag.URL = "../content/ShowContent.aspx?GID=" + Gid + "&modeid=" + Modelid;
		diag.show();
	}


	function open_title4(Gid) {
		var diag = new Dialog();
		diag.Width = 500;
		diag.Height = 300;
		diag.Title = "结算竞标";
		diag.URL = "AddSettlement.aspx?GID=" + Gid;
		diag.show();
	}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">        
        后台管理 &gt;&gt; 互动管理 &gt;&gt; 竞标管理 &gt;&gt;<a href="Settlement.aspx">竞标结算</a>
    </div>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="8" style="height: 30px;">
               查询条件：             
                <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="30">本月</asp:ListItem>
                    <asp:ListItem Value="7">本星期</asp:ListItem>
                    <asp:ListItem Selected="True" Value="0">今天</asp:ListItem>
                    <asp:ListItem Value="-1">昨天</asp:ListItem>
                    <asp:ListItem Value="-2">前天</asp:ListItem>
                    <asp:ListItem Value="-7">上个星期</asp:ListItem>
                    <asp:ListItem Value="-30">上个月</asp:ListItem>
                    <asp:ListItem Value="-365">去年</asp:ListItem>
                </asp:DropDownList>
                　用户名：<asp:TextBox ID="keyword" runat="server" Width="168px" class="l_input"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="查询" onclick="Button1_Click" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="spacingtitle">
            <td align="center" colspan="9" style="height: 30px;">
                <asp:Label ID="lblText" runat="server"></asp:Label>
            </td>
        </tr>
        <tbody>
            <tr class="gridtitle" align="center" style="height: 25px;">
                <td width="5%" height="20">
                    <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
                </td>
                <td width="5%" height="20">
                    <strong>ID</strong>
                </td>
                <td width="25%">
                    <strong>标题</strong>
                </td>
                <td width="10%">
                    <strong>竞标价格</strong>
                </td>
                <td width="15%">
                    <strong>中标会员</strong>
                </td>
                <td width="10%">
                    <strong>达标会员列表</strong>
                </td>
                <td width="10%">
                    <strong>发起人</strong>
                </td>
                <td width="10%">
                    <strong>状态</strong>
                </td>
                <td width="10%">
                    <strong>操作</strong>
                </td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        style="height: 25px;">
                        <td>
                            <input name="Item" <%#(Eval("IsBid","{0}")=="1" || Eval("IsBid","{0}")=="3")?"disabled":"" %>
                                type="checkbox" value="<%#Eval("GeneralID")%>" />
                        </td>
                        <td>
                            <strong>
                                <%# Eval("GeneralID")%></strong>
                        </td>
                        <td align="left">
                            <a href="###" onclick="open_title3(<%# Eval("GeneralID")%>,<%# Eval("ModelID")%>)">
                                <%# Eval("title") %></a>
                        </td>
                        <td align="center">
                            <%#Eval("BidMoney","{0:F2}")%>
                        </td>
                        <td>
                            <a href="###" onclick="open_title2(<%#Eval("SuccessfulUserID", "{0}") %>)">
                                <%#GetUsername(Eval("SuccessfulUserID", "{0}"))%></a>
                        </td>
                        <td align="center">
                            <%#Getlist(Eval("ComplianceUserList", "{0}"), Eval("GeneralID", "{0}"))%>
                        </td>
                        <td>
                            <a href="###" onclick="open_title2(<%#GetUserID(Eval("Inputer", "{0}")) %>)">
                                <%#Eval("Inputer")%></a>
                        </td>
                        <td>
                            <%#GetBidStart(Eval("IsBid","{0}"))%>
                        </td>
                        <td>
                            <%#GetButton(Eval("GeneralID","{0}")) %>
                            <a href="###" onclick="open_title(<%#Eval("GeneralID")%>)">修改</a> <a href="?menu=gonull&id=<%#Eval("GeneralID") %>"
                                onclick="return confirm('确实要取消竞标吗?');">取消竞标</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td align="center" class="tdbg" style="height: 24px;" colspan="9">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
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
        </tbody>
        <tr>
            <td align="left" colspan="9">
                <asp:Button ID="EBtnSubmit" runat="server" Text="结 算" class="C_input" OnClick="EBtnSubmit_Click" />
                <asp:Button ID="Button1" runat="server" Text="返 回" class="C_input" />
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="9" style="height: 30px;">
                <b>竞标信息表：</b>ZL_CommonModel
            </td>
        </tr>
    </table>
    <br />
    <table width="100%" cellspacing="1" cellpadding="0" class="border">
        <tr class="tdbg">
            <td align="left" colspan="9" style="height: 30px;">
                <b>前台调用控制接口：</b><br />
                pay.aspx?live=add&id=内容ID&num=900&name=交易费，即代表：交易费加900元<br />
                pay.aspx?live= minus&id=内容ID&num=900&name=交易费，即代表：交易费扣除900元

            </td>
        </tr>
    </table>
    <br />
    </form>
</body>
</html>
