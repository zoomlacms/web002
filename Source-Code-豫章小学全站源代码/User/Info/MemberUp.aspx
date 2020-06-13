<%@ page language="C#" autoeventwireup="true" inherits="User_Info_MemberUp, App_Web_ef5jt0rl" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>兑换金额</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="us_topinfo">
         </span>您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_parent"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; <a title="会员中心" href='<%=ResolveUrl("~/User/Default.aspx" )%>' target="_parent">会员中心</a></span> &gt;&gt; <a href="UserInfo.aspx">账户管理</a> &gt;&gt; 会员升级</span> 
    </div>
    <div class="us_seta" style="margin-top:10px;" id="manageinfo" runat ="server">
        <h1 style="text-align:center">会员升级</h1>
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
                    当前会员等级：
                </td>
                <td style="width:80%;line-height:30px">
           		    &nbsp;<asp:Label ID="LblUserGrade" runat="server" Text=""></asp:Label>
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
                    选择升级规则：
                </td>
                <td style="width:80%;line-height:30px">
           		    <%--<asp:DropDownList ID="MemberUpRule" runat="server">
                    </asp:DropDownList>--%>
                    <asp:RadioButtonList ID="MemberUpRule" runat="server">
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbgbottom">
                <td colspan="2" align="center">
                    <asp:Button ID="EBtnSubmit" Text="立即升级" runat="server" onclick="EBtnSubmit_Click" /> &nbsp;&nbsp;
                    <input id="Button1" type="button" value="返回" onclick="javascript:location.href='UserInfo.aspx'" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>