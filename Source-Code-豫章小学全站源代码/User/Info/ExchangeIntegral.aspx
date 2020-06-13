<%@ page language="C#" autoeventwireup="true" inherits="User_Info_ExchangeIntegral, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>兑换金额</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="us_topinfo">
                <div class="us_showinfo">
         </span>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_blank">
                                会员中心</a></span> &gt;&gt; <span><a href="UserInfo.aspx">账户管理</a></span><span> &gt;&gt; </span><span>兑换金额</span></span> 
    </div></div>
    <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
        <h1 style="text-align:center">兑换金额</h1>
        <table style="width: 100%; margin: 0 auto;" cellpadding="0" cellspacing="0" class="border">
            <tr class="tdbg">
                <td style="width:20%; float:left;line-height:30px; text-align:right">
                    用户名：
                </td>
                <td style="width:80%;line-height:30px">
           		    &nbsp;<asp:Label ID="LblUser" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="width:20%; float:left;line-height:30px; text-align:right">
                    资金余额：
                </td>
                <td style="width:80%;line-height:30px">
           		    &nbsp;<asp:Label ID="LblBalance" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="width:20%; float:left;line-height:30px; text-align:right">
                    积分余额：
                </td>
                <td style="width:80%;line-height:30px">
           		    &nbsp;<asp:Label ID="LblUserExp" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbg">
                <td style="width:20%; float:left;line-height:30px; text-align:right">
                    兑换金额：
                </td>
                <td style="width:80%;line-height:30px">
           		    &nbsp; &nbsp;&nbsp;将积分余额：
                    <asp:TextBox ID="TxtExp" runat="server" Width="20"></asp:TextBox>分兑换成金额&nbsp;&nbsp;
                    兑换比率：<asp:Label ID="LblExpRate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr class="tdbgbottom">
                <td colspan="2" align="center">
                    <asp:Button ID="EBtnSubmit" Text="兑换" OnClick="EBtnSubmit_Click" runat="server" /> &nbsp;&nbsp;
                    <input id="Button1" type="button" value="返回" onclick="javascript:location.href='UserInfo.aspx'" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
