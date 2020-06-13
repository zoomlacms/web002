<%@ page language="C#" autoeventwireup="true" inherits="User_UserFriend_FriendSearch_Friend_quickSY, App_Web_jebimlzp" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>好友快速搜索结果</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
var dragapproved = false
var minrestore = 0 //该变量表示窗口目前的状态，0表示初始化状态，1表示最大化状态
var initialwidth, initialheight
//若Client浏览器为IE5.0以上版本的
var ie5 = document.all && document.getElementById
//若Client浏览器为NetsCape6。0版本以上的
var ns6 = document.getElementById && !document.all
function iecompattest() {
	return (!window.opera && document.compatMode && document.compatMode != "BackCompat") ? document.documentElement : document.body
}
function loadwindow(width, height) {
	if (!ie5 && !ns6) //若不为IE或Netscpae浏览器，则使用一般的Window.open进行弹出窗口处理
	{ }
	else {
		document.getElementById("dwindow").style.display = '';
		document.getElementById("dwindow").style.top = ns6 ? window.pageYOffset * 1 + "px" : iecompattest().scrollTop * 1 + "px";
	}
}
function closeit() {
	document.getElementById("dwindow").style.display = "none";
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div style="position: relative;">
    <ul class="lieb">
        <asp:Repeater ID="gvCard" runat="server">
            <ItemTemplate>
                <li class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <a href="../../../ShowList.aspx?id=<%#Eval("UserID") %>">
                        <img src="<%#GetUserFace(Eval("UserFace").ToString()) %>" alt="" /></a><br />
                    <br />
                    <a href="../../../ShowList.aspx?id=<%#Eval("UserID") %>">
                        <%#Eval("honeyName")%></a><br />
                    <br />
                    <a href="../../../ShowList.aspx?id=<%#Eval("UserID") %>">
                        <%#htmlStr(Eval("BirthDay","{0:yyyy-MM-dd}").ToString(), Eval("workProvince").ToString(), Eval("workCity").ToString())%></a>
                    <br />
                    <br />
                    <a href="../../../ShowList.aspx?id=<%#Eval("UserID") %>">详细了解</a></li>
            </ItemTemplate>
        </asp:Repeater>
    </ul>
    <div class="clearbox">
    </div>
    <table width="100%">
        <tr class="tdbg">
            <td height="22" colspan="9" align="center" class="tdbgleft">
                共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个信息
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页
            </td>
        </tr>
    </table>
</div>
<div class="s_bright" id="dwindow" style="position: absolute; top: 0px; left: 0px; width: 60%; height: 400px; display: none; filter: alpha(opacity=70); background-color: Gray;  padding-top: 10px; margin-top: 50px; margin-left: 100px;" runat="server">
    <div class="i_r_ftitle">
        登录会员</div>
    <div class="i_r_fbody">
        <h1>
            请输入正确的用户名与密码 <font color='red'>
                <label id="LbAlert" runat="server" />
            </font>
        </h1>
        <div class="cleardiv" style="height: 30px;">
        </div>
        <ul>
            <li style="width: 150px; text-align: right;"><b>用户名：</b></li>
            <li>
                <asp:TextBox ID="TxtUserName" class="input1" MaxLength="20" runat="server"></asp:TextBox></li>
        </ul>
        <div class="cleardiv">
        </div>
        <ul>
            <li style="width: 150px; text-align: right;"><b>密码：</b></li>
            <li>
                <asp:TextBox ID="TxtPassword" runat="server" class="input1" TextMode="Password"></asp:TextBox></li>
        </ul>
        <asp:PlaceHolder ID="PhValCode" runat="server">
            <ul>
                <li style="width: 150px; text-align: right;"><b>验证码：</b></li>
                <li>
                    <asp:TextBox ID="TxtValidateCode" class="input1" MaxLength="6" runat="server"></asp:TextBox>
                    <asp:Image ID="VcodeLogin" runat="server" ImageUrl="~/Common/ValidateCode.aspx" Height="20px" /></li>
            </ul>
        </asp:PlaceHolder>
        <ul>
            <li style="width: 150px; text-align: right;"><b>Cookie：</b></li>
            <li>
                <asp:DropDownList ID="DropExpiration" runat="server">
                    <asp:ListItem Value="Day" Text="保存一天"></asp:ListItem>
                    <asp:ListItem Value="Month" Text="保存一月"></asp:ListItem>
                    <asp:ListItem Value="Year" Text="保存一年"></asp:ListItem>
                </asp:DropDownList>
            </li>
        </ul>
        <div class="clear"></div>
        <ul>
            <li style="width: 150px; text-align: right;">&nbsp;</li>
            <li>
                <asp:ImageButton ID="IbtnEnter" ImageUrl="../../images/login.gif" runat="server"
                    OnClick="IbtnEnter_Click" />
                <a href="../../Register.aspx">
                    <img src="../../images/reg1.gif" alt="" /></a>
            </li>
        </ul>
        <div class="cleardiv">
        </div>
        <ul>
            <li style="width: 150px; text-align: right;">&nbsp;</li>
            <li><a href="/User/GetPassword.aspx">忘记密码了？ </a></li>
            <li>如果您尚未在本站注册为用户，请先<a href="../../Register.aspx">点此注册</a> 。</li>
        </ul>
    </div>
</div>
</form>
</body>
</html>