<%@ page language="C#" autoeventwireup="true" inherits="manage_User_RuleList, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择角色</title>
<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
	{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
	}
</script>
<body>
<form id="form1" runat="server">
  <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
    <tr class="title">
      <td align="left"><b>角色列表：</b></td>
      <td align="right"><asp:TextBox ID="TxtKeyWord" runat="server" class="l_input"></asp:TextBox>
        &nbsp;&nbsp;
        <asp:Button ID="BtnSearch" runat="server" Text="查找" OnClick="BtnSearch_Click" class="C_input" /></td>
    </tr>
    <tr>
      <td valign="top" colspan="2"><table width="100%" border="0" cellspacing="1" cellpadding="1">
          <tr class="tdbgleft">
            <td width="5%" height="24" align="center"><strong>ID</strong></td>
            <td width="5%" height="24" align="center"><asp:CheckBox ID="CheckBox1" runat="server" onclick="CheckAll(this);" /></td>
            <td width="15%" height="24" align="center"><strong>角色名称</strong></td>
            <td width="35%" height="24" align="center"><strong>角色说明</strong></td>
            <td width="10%" height="24" align="center"><strong>优先级别</strong></td>
            <td width="10%" height="24" align="center"><strong>是否启用</strong></td>
          </tr>
          <asp:Repeater ID="Pagetable" runat="server">
            <ItemTemplate>
              <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="24" align="center"><%#Eval("ID") %></td>
                <td height="24" align="center"><input name="Item" type="checkbox" value=<%#Eval("ID") %>></td>
                <td height="24" align="center"><a target="_blank" href="Permissionadd.aspx?menu=edit&id=<%#Eval("ID") %>"><%#Eval("RoleName") %></a></td>
                <td height="24" align="center"><%#Eval("info")%></td>
                <td height="24" align="center"><%#Eval("Precedence")%></td>
                <td height="24" align="center"><%#Eval("IsTrue","{0}")=="True"?"<font color=green>启用</font>":"<font color=red>停用</font>"%></td>
              </tr>
            </ItemTemplate>
          </asp:Repeater>
          <tr class="tdbg">
            <td class="tdbgleft" colspan="6" align="center">共
              <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
              条信息
              <asp:Label ID="Toppage" runat="server" Text="" />
              <asp:Label ID="Nextpage" runat="server" Text="" />
              <asp:Label ID="Downpage" runat="server" Text="" />
              <asp:Label ID="Endpage" runat="server" Text="" />
              页次：
              <asp:Label ID="Nowpage" runat="server" Text="" />
              /
              <asp:Label ID="PageSize" runat="server" Text="" />
              页
              <asp:Label ID="pagess" runat="server" Text="" />
              条信息/页  转到第
              <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
              页 </td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="添加角色" OnClick="Button1_Click" class="C_input" />
        <asp:Button ID="Button2" runat="server" Text="取消添加" OnClick="Button2_Click" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>