﻿<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_PageModify, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>信息配置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; <span>企业黄页</span> &gt;&gt; <a href="PageManage.aspx">黄页管理</a> &gt;&gt; 黄页信息配置
</div>
<div class="clearbox"></div>    

<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">

    <tr class="tdbg">
    <td align="center" colspan="2" class="title" width="10%">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    </tr>

     <tr class="tdbg">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">用 户 名：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
          <asp:Literal ID="UserName" runat="server"></asp:Literal>
      </td>
    </tr>
    <tr id="Tr1" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          黄页标题：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
          <asp:TextBox ID="PageTitle" runat="server" Width="314px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
    <tr id="Tr2" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          菜单高度：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="HeadHeight" runat="server" Width="47px" CssClass="l_input"></asp:TextBox>
          &nbsp;px</td>
    </tr>
    
    <tr id="Tr3" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          栏目背景图片：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
          <asp:TextBox ID="txtHeadBackGround" runat="server" Width="314px" class="l_input"></asp:TextBox>
                    <br />
                    <iframe id="Iframe1" src="../Common/ThumbnailUpload.aspx?CID=HeadBackGround&ftype=1" marginheight="0"
                        marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
    </tr>
    
    <tr id="Tr4" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          栏目背景颜色：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="HeadColor" runat="server" Width="47px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
    <tr id="Tr5" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          KeyWords关键：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="KeyWords" runat="server" TextMode="MultiLine" Height="40px" Width="552px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
    <tr id="Tr6" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          Description内容：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" Height="40px" Width="552px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
    <tr id="Tr7" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          顶部HTML内容：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="TopWords" runat="server" TextMode="MultiLine" Width="552px" 
              Height="60px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
    <tr id="Tr8" class="tdbg" runat="server">
      <td align="right" class="tdbgleft" style="height: 24px; width:30%">
          尾部HTML内容：</td>
      <td align="left" class="tdbgright" style="height: 24px; width:70%">
      <asp:TextBox ID="BottonWords" runat="server" TextMode="MultiLine" Width="552px" 
              Height="60px" CssClass="l_input"></asp:TextBox>
          </td>
    </tr>
    
 
     <tr class="tdbg">
      <td align="center"colspan="2" class="tdbgright" style="height: 24px; width:100%">
          <asp:Button ID="Button5"  class="C_input" runat="server" Text="修改" 
              onclick="Button5_Click" />
          <asp:Button ID="Button4"  class="C_input" runat="server" Text="返回" 
              onclick="Button4_Click"/>
      </td>
    </tr>
    
  </tbody>
</table>
</form>
</body>
</html>