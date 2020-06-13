<%@ page language="C#" autoeventwireup="true" inherits="manage.Page.PageStyle, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>黄页模板</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
function getinfo(id)
{
location.href='PageTemplate.aspx?styleid='+id;
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; 企业黄页 &gt;&gt; <span><a href="PageStyle.aspx">黄页样式管理</a></span></div>
<div class="clearbox"></div>    
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">

    <tr class="tdbg">
        <td align="center" class="title" width="10%">
            <span class="tdbgleft">样式ID</span></td>
      <td width="30%" align="center" class="title"><span class="tdbgleft">样式名称</span></td>
      <td width="10%" align="center" class="title"><span class="tdbgleft">启用状态</span></td>
      <td width="15%" align="center" class="title"><span class="tdbgleft">默认状态</span></td>
      <td width="10%" align="center" class="title"><span class="tdbgleft">排列顺序</span></td>
        <td width="25%" align="center" class="title">
            <span style="background-color: #e0f7e5">相关操作</span></td>
    </tr>
    <asp:Repeater ID="Styleable" runat="server">
    <ItemTemplate>
    <tr class="tdbg" id="<%#Eval("PageNodeid")%>" ondblclick="getinfo(this.id)" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" align="center"><%#Eval("PageNodeid")%></td>
      <td height="24" align="left"><%#Eval("PageNodeName")%></td>
      <td height="24" align="center"><%#getistrue(Eval("isTrue","{0}"))%></td>
      <td height="24" align="center"><%#getIsDefault(Eval("IsDefault", "{0}"))%></td>
      <td height="24" align="center"><%#Eval("Orderid", "{0}")%></td>
      <td height="24" align="center"><a href="AddPageStyle.aspx?menu=edit&sid=<%#Eval("PageNodeid") %>">修改</a>　<a href="?menu=del&id=<%#Eval("PageNodeid") %>" OnClick="return confirm('确实要删除此黄页样式吗？删除该样式后前台黄页将无法使用该样式!');">删除</a>　<a href="PageTemplate.aspx?styleid=<%#Eval("PageNodeid") %>">项目管理</a></td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="24" colspan="7" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个样式  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
            Width="30px"></asp:TextBox>个样式/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
          </asp:DropDownList>页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
          </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>