<%@ page language="C#" autoeventwireup="true" inherits="manage_User_CertificateAuditInfo, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>审核证书</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; <a href="UserManage.aspx">用户管理</a> &gt;&gt; <a href="CertificateAudit.aspx">认证列表</a> &gt;&gt; 企业用户证书认证</div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="4" class="spacingtitle"><strong>
        <asp:Label ID="LblUserName" runat="server" Text=""></asp:Label>的证书认证</strong></td>
    </tr>
  </table>
  <table>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 公司名称：
        <asp:Label ID="lblUserID" runat="server" Text="" Visible="false"></asp:Label></td>
      <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:TextBox ID="txtCompany" runat="server" Text="" CssClass="l_input"></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 当前状态：
        <asp:Label ID="lblState" runat="server" Text="" Visible="false"></asp:Label></td>
      <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:Label ID="lblstrState" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 认证类型： </td>
      <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:Label ID="lblApproveType" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 公司介绍： </td>
      <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:TextBox ID="txtCompanyDescribe"  runat="server" TextMode="MultiLine" Height="60px" class="l_input" Width="473px"  ></asp:TextBox></td>
    </tr>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 15%; height: 25px;" align="right">证书图片：</td>
      <td style="width: 85%; height: 25px;" colspan="3" align="left"><img  onerror="this.onerror=null;this.ImageUrl='~/UploadFiles/nopic.gif'" alt="" style="width:66px; height:66px;"  ID="imgCommpanyLogo"  runat="server" src=""/></td>
    </tr>
    <tr class="tdbgbottom">
        <td colspan="2" style="width: 85%; height: 25px;" colspan="3" align="left">
      <asp:Button ID="btnPass" runat="server" Text="认证通过" class="C_input"  onclick="btnPass_Click" />
      <asp:Button ID="btnFailure" runat="server" Text="认证未通过" class="C_input"   onclick="btnFailure_Click" />
      <asp:Button ID="Button1" runat="server" Text="返回列表"  class="C_input"  onclick="Button1_Click"/>
        </td>
    </tr>
  </table>
</form>
</body>
</html>