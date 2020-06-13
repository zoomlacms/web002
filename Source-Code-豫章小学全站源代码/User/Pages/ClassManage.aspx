<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_ClassManage, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>栏目管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: none">
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text=""></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="配置黄页" href="/User/Pages/ClassManage.aspx">栏目管理</a><a href="Addnode.aspx" style="color:Black">[添加栏目]</a></div>
  <div style="margin-top: 10px;">
    <div class="us_seta" style="margin-top: 5px; ">
      <h1 style="text-align: center"> 黄页栏目管理 </h1>
      <table width="100%">
        <tr height="23px">
          <td align="center" width="10%"><b>栏目ID</b></td>
          <td align="center" width="30%"><b>栏目名称</b></td>
          <td align="center" width="30%"><b>显示状态</b></td>
          <td align="center" width="30%"><b>相关操作</b></td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
          <ItemTemplate>
            <tr height="23px">
              <td align="center" width="10%"><%#Eval("TemplateID") %></td>
              <td align="center" width="30%"><%#Eval("TemplateName") %></td>
              <td align="center" width="30%"><%#Eval("IsTrue","{0}")=="1"?"显示":"隐藏" %></td>
              <td align="center" width="30%"><%#(Eval("userid","{0}")!="0")?"<a href=\"addnode.aspx?menu=edit&id="+Eval("TemplateID")+"\">修改</a> <a href=\"?menu=delete&id="+Eval("TemplateID")+"\" onclick=\"return confirm('确实要删除吗？');\">删除</a>":"<font color=#999999>修改 删除</font>"%></td>
            </tr>
          </ItemTemplate>
        </asp:Repeater>
        <tr height="23px" width="100%">
          <td style="text-align: left" colspan="4"><asp:Button ID="BtnSubmit" runat="server" Text="批量隐藏" class="i_bottom" />
            &nbsp;&nbsp;
            <asp:Button ID="BtnCancle" runat="server" Text="批量删除" class="i_bottom" /></td>
        </tr>
      </table>
    </div>
  </div>
</form>
</body>
</html>