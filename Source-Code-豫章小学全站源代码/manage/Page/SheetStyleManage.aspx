<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_SheetStyleManage, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>标签管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    function getinfo(id) {
        location.href = "AddSheetStyle.aspx?menu=edit&sid=" + id + "";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	
	<span>后台管理</span> &gt;&gt; 企业黄页 &gt;&gt; <span><a href="SheetStyleManage.aspx">标签管理</a></span></div>
<div class="clearbox"></div>    


    <div class="divline" style="padding-left: 10px; width:100%; height:32px;">
        <div style="height:32px; width:65%; float:left;">
                            <ul style="cursor:hand; ">
        <li><a href="SheetStyleManage.aspx?classes=1">所有商品</a></li>
        <li><a href="SheetStyleManage.aspx?classes=2">付费标签</a></li>
        <li><a href="SheetStyleManage.aspx?classes=3">免费标签</a></li>
   <li style="margin-left:50px;">快速查找：
                    <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="quicksouch_SelectedIndexChanged">
                        <asp:ListItem Value="1">所有商品</asp:ListItem>
                        <asp:ListItem Value="2">付费标签</asp:ListItem>
                        <asp:ListItem Value="3">免费标签</asp:ListItem>
                    </asp:DropDownList></li>
    </ul> 
     

        </div>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tabs">
            <tr class="tdbg">
                <td width="34%" height="24" class="tdbgleft" style="padding-left: 10px;">
                    <b>商品操作：</b><asp:Label ID="lblAddContent" runat="server" Text=""></asp:Label>
                </td>
                <td width="66%" align="center" class="tdbgleft">
                    <asp:DropDownList ID="souchtable" runat="server">
                        <asp:ListItem Value="0">请选择</asp:ListItem>
                        <asp:ListItem Value="1" Selected="True">商品名称</asp:ListItem>
                        <asp:ListItem Value="2">标签名字</asp:ListItem>
                        <asp:ListItem Value="3">标签价格</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="souchkey" runat="server" class="l_input"/>
                    <asp:Button ID="souchok" runat="server" Text=" 搜索 " class="C_input" 
                        onclick="souchok_Click" />
                </td>
            </tr>
        </tbody>
    </table>
    <br />



<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
  <tbody id="Tbody1">

    <tr class="tdbg">
      <td align="center" class="title" width="10%" align="center" class="title"><span class="tdbgleft">样式ID</span></td>
      <td width="20%" align="center" class="title"><span class="tdbgleft">标签标题(别名)</span></td>
      <td width="30%" align="center" class="title"><span class="tdbgleft">标签名</span></td>
      <td width="15%" align="center" class="title"><span class="tdbgleft">价格</span></td>
      <td width="15%" align="center" class="title"><span class="tdbgleft">缩略图</span></td>
      <td width="20%" align="center" class="title"><span style="background-color: #e0f7e5">相关操作</span></td>
    </tr>
    <asp:Repeater ID="Styleable" runat="server">
    <ItemTemplate>
    <tr class="tdbg" id="<%#Eval("ID")%>" ondblclick="getinfo(this.id)" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    <td height="24" align="center"><%#Eval("ID")%></td>
      <td height="24" align="center"><%#Eval("Alias")%></td>
      <td height="24" align="center"><%#Eval("Lname")%></td>
      <td height="24" align="center"><%#Eval("Price")%>元</td>
      <td height="24" align="center"><img src="../../<%#Eval("Img")%>" width="60" height="60" /></td>
      <td height="24" align="center"><a href="AddSheetStyle.aspx?menu=edit&sid=<%#Eval("id") %>">修改</a>　<a href="?menu=del&id=<%#Eval("id") %>" OnClick="return confirm('确实要删除此样式吗？');">删除</a></td>
    </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="24" colspan="6" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" OnTextChanged="txtPage_TextChanged"
            Width="30px"></asp:TextBox>条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
          </asp:DropDownList>页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
          </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>

