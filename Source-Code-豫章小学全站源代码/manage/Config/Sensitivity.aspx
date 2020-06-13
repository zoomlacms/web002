<%@ page language="C#" autoeventwireup="true" inherits="manage.Config.Sensitivity, App_Web_ahh1qfsx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>过滤敏感词汇</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
  <div class="r_navigation">后台管理&gt;&gt; 网站配置 &gt;&gt; 过滤敏感词汇 </div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
      <td class="spacingtitle" colspan="2" align="center">导入敏感词汇</td>
    <tr class="tdbg">
      <td class="tdbgleft" style="width: 200px"><strong>选择库文件：(txt文件)</strong></td>
      <td height="50px">&nbsp;
        <asp:FileUpload ID="InputTxt" CssClass="l_input" runat="server" Width="379px" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td  style="width: 200px"></td>
      <td class="tdbg">&nbsp;
        <asp:Button ID="Button2" runat="server" Text=" 添 加" CssClass="C_input" onclick="Button2_Click" />
        <asp:Button ID="Button1" runat="server" Text=" 导 入 " CssClass="C_input" OnClick="Button1_Click" />
        <asp:Button ID="Button6" runat="server" Text=" 导 出 全 部 " CssClass="C_input"  onclick="Button6_Click" /></td>
    </tr>
  </table>
  <br />
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tr class="title">
      <td align="center" height="26px"><input id="Checkall" type="checkbox" name="Checkall" onclick="javascript:CheckAll(this);" />
        ID </td>
      <td align="center"> 词汇 </td>
      <td align="center"> 状态 </td>
      <td align="center"> 操作 </td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="26px" width="10%" align="center"><input name="Item" type="checkbox" value='<%#Eval("id") %>' />
            <%#Eval("id") %></td>
          <td width="60%" align="center"><%#Eval("keyname")%></td>
          <td width="20%" align="center"><%#Eval("istrue","{0}")=="0"?"<font color=red>停用</font>":"<font color=green>启用</font>"%></td>
          <td width="10%" align="center"><a href="AddSensitivity.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a onclick="return confirm('你确定将该数据删除到回收站吗？')" href="?menu=delete&id=<%#Eval("id") %>">删除</a></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbg" colspan="4" align="center"> 共
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
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>
        条信息/页  转到第
        <asp:DropDownList   ID="DropDownList1" runat="server" AutoPostBack="True"   onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
        页 </td>
    </tr>
  </table>
  <asp:Button ID="Button3" runat="server" Text="批量删除" CssClass="C_input"  onclick="Button3_Click" OnClientClick="return confirm('你确定将该数据删除到回收站吗？')" />
  <asp:Button ID="Button5" runat="server" Text="批量启用" CssClass="C_input"  onclick="Button5_Click" />
  <asp:Button ID="Button4" runat="server" Text="批量停用" CssClass="C_input"   onclick="Button4_Click" />
</form>
</body>
</html>