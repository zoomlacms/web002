<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Position_AddPosition, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server"><title>添加职位</title>
<link href="../CSS/main.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript" src="../../../JS/calendar.js"></script>
<style type="text/css">
	.style1
	{
		background: #e0f7e5; padding: 2px;
		width: 18%;
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="us_topinfo">
        <div class="us_showinfo">
                <span class="us_showinfo1">您好<asp:Label ID="LblUserName" runat="server" Text="" />！</span>
                您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label
                    ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt;
                    </span><span><a title="会员中心" href="/User/Default.aspx" target="_blank">会员中心</a></span><span>
                        &gt;&gt; </span><span><a href="PositionManage.aspx">职位管理</a></span> &gt;&gt; <span><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span></span>
        </div>
        <div class="cleardiv">
        </div>
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
        <tr align="center">
            <td colspan="2" class="spacingtitle">
                <span>
                    <asp:Label ID="txtTitle" runat="server" Text="Label"></asp:Label></span>
            </td>
        </tr>
        <tr class="WebPart">
            <td height="22" class="tdbgleft" align="right" valign="top">
                <strong>职位名称：</strong>
            </td>
            <td height="22" valign="middle" >
                <asp:TextBox ID="Jname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RFPosition" runat="server" 
                    ErrorMessage="职位名称必填" ControlToValidate="Jname"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr class="WebPart">
            <td class="tdbgleft" height="22"  align="right" valign="top">
                <strong>职位所需人数：</strong>
            </td>
            <td valign="middle">
                <asp:TextBox ID="Jnum" runat="server" onKeyUp="value=value.replace(/[^\d\.]/g,'')"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="Jnum" ErrorMessage="必须为数字" ValidationExpression="\d+"></asp:RegularExpressionValidator>
            </td>       
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" height="22"  align="right" valign="top">
                <strong>工作地点：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:TextBox ID="Jadd" runat="server" Height="53px" TextMode="MultiLine" 
                    Width="430px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Jaddcheck" runat="server" 
                    ControlToValidate="Jadd" ErrorMessage="工作地点必填"></asp:RequiredFieldValidator>
            </td>    
        </tr>
        <tr class="WebPart">
            <td class="tdbgleft" align="right">
                <strong>职位描述：</strong>
            </td>
            <td valign="middle">
                <asp:TextBox ID="Jinfo" runat="server" TextMode="MultiLine" Width="87%" 
                    Height="288px"></asp:TextBox>
            </td>           
        </tr>
        <tr class="WebPart" runat="server" id="Tr1">
            <td height="22" class="tdbgleft" align="right" valign="top">
                <strong>职位截止时间：</strong>
            </td>
            <td valign="middle">
                <asp:TextBox ID="Jendtime" runat="server" onclick="calendar();"></asp:TextBox>
                <asp:RequiredFieldValidator ID="txtEndTime" runat="server" 
                    ControlToValidate="Jendtime" ErrorMessage="截止日期必填"></asp:RequiredFieldValidator>
            </td> 
        </tr>
        <tr class="tdbgbottom">
            <td colspan="2">               
                <asp:Button ID="EBtnSubmit" Text="添加" runat="server" 
                    onclick="EBtnSubmit_Click" />
                &nbsp;
                <input name="Cancel" type="button" id="Cancel" value="取消" onclick="javascript:history.back(-1);" />
                &nbsp;                
            </td>
        </tr>      
    </table>
    </div>
    </form>
</body>
</html>
