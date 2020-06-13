<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_UserFloPack, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户包装管理</title>
<link rel="stylesheet" type="text/css" href="../../App_Themes/AdminDefaultTheme/main.css" />
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
<div class="us_topinfo" style="width: 98%">
您现在的位置：<span id="Span1"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="我的店铺" href="Default.aspx">我的店铺</a>&gt;&gt;<a title="用户包装管理" href="UserFloPack.aspx">用户包装管理</a>[<a title="添加包装" href="AddFlowerPack.aspx">添加包装</a>]
</div>
<div style="width:100%">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border" style="margin: 0 auto;background-color: white;">
      <tr align="center">
        <td class="title" width="10%"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td class="title" width="10%">包装名</td>
        <td class="title" width="10%">包装费用</td>
        <td class="title" width="15%">用户名</td>
        <td class="title" width="40%">备注</td>
        <td class="title" width="15%">操作</td>
      </tr>
    <asp:Repeater ID="Repeater1" runat="server">       
     <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("id")%>'/></td>
        <td height="22" align="center"><%#Eval("PackName")%></td>
        <td height="22" align="center"><%#DataBinder.Eval(Container, "DataItem.PackPrice", "{0:N2}")%></td>
        <td height="22" align="center"><%#GetUserName(Eval("UserId","{0}")) %></td>
        <td height="22" align="center"><%#Eval("Remark") %></td>
        <td height="22" align="center">
         <a href="AddFlowerPack.aspx?id=<%#Eval("id") %>">修改</a>
         <a href="UserFloPack.aspx?menu=del&id=<%#Eval("id") %>" OnClick="return confirm('确定删除？');">删除</a></td>
      </tr>
     </ItemTemplate>
    </asp:Repeater>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="height: 21px">
              <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" OnClientClick="return confirm('确定删除？');" Text="批量删除"  />&nbsp;</td>
        </tr>
    </table>
</div>
</div>
</form>
</body>
</html>