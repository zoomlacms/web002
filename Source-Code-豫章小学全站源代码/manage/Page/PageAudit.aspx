<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_PageAudit, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理企业黄页</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
function getinfo(id)
    {
    location.href='PageTemplate.aspx?id='+id;
    }
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

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; <span>企业黄页</span> &gt;&gt; 黄页管理 &gt;&gt; <a href="PageAudit.aspx">黄页用户列表</a>&nbsp;
    <asp:Label ID="usertype" runat="server"></asp:Label></div>
<div class="clearbox"></div>    
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">

  <tbody id="Tabs" >

    <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td width="50%" height="24" align="center" class="title">快速查找：
    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
          <asp:ListItem Value="1">所有企业黄页</asp:ListItem>
          <asp:ListItem Value="2">待审核企业黄页</asp:ListItem>
        <asp:ListItem Value="3">已审核企业黄页</asp:ListItem>
      </asp:DropDownList></td>
    <td width="50%" align="center" class="title">
        黄页查询：<asp:DropDownList ID="modefileds" runat="server">
        </asp:DropDownList>
        <asp:TextBox ID="keyword" class="l_input" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" class="C_input"  PostBackUrl="PageAudit.aspx" runat="server" Text="搜索" /></td>
    </tr>
  </tbody>
</table>
<br />
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">

    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td align="center" class="title" width="5%"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td align="center" class="title" width="10%">
            <span class="tdbgleft">黄页ID</span></td>
      <td align="center" class="title" width="25%"><span class="tdbgleft">用户名</span></td>
      <td align="center" class="title"><span class="tdbgleft"></span></td>
        <td align="center" class="title" width="30%">
            <span style="background-color: #e0f7e5; width:30%">操作</span></td>
    </tr>
    <asp:Repeater ID="Pagetable" runat="server">
    <ItemTemplate>
    
    <tr class="tdbg" id="<%#Eval("GeneralID") %>" ondblclick="getinfo(this.id)" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" align="center"><input name="Item" type="checkbox" value="<%#Eval("GeneralID")%>"/></td>
      <td height="24" align="center"><%#Eval("GeneralID")%></td>
      <td height="24" align="center"><a href="PageTemplate.aspx?id=<%#Eval("GeneralID")%>"><%#Eval("Inputer")%></a></td>
      <td height="24" align="center"></td>
      <td height="24" align="center"><a href="AuditUser.aspx?menu=view&id=<%#Eval("GeneralID") %>">查看资料</a>　<a href="?menu=del&id=<%#Eval("GeneralID") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a>　<a href="PageTemplate.aspx?id=<%#Eval("GeneralID")%>">用户栏目管理</a></td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg" >
      <td colspan="12" align="center" class="tdbgleft" style="height: 24px">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
            Width="30px"></asp:TextBox>条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
          </asp:DropDownList>页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
          </td>
    </tr>
  </tbody>
</table>
<table width="100%">
 <tr>
    <td align="left" width="100%">
        <asp:DropDownList ID="act" runat="server">
            <asp:ListItem Selected="True" Value="0">选择操作</asp:ListItem>
            <asp:ListItem Value="1">批量审核</asp:ListItem>
            <asp:ListItem Value="2">取消审核</asp:ListItem>
            <asp:ListItem Value="3">批量删除</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button2" class="C_input" runat="server" OnClick="Button2_Click" Text="执行操作" />&nbsp;
        <asp:HiddenField ID="modelids" runat="server" />
    </td>
    </tr>
</table>
</form>
</body>
</html>