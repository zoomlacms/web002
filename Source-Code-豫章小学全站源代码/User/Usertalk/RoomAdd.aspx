<%@ page language="C#" autoeventwireup="true" inherits="User_Usertalk_RoomAdd, App_Web_s5c5gzpd" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>用户群管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript">
function displayNone(obj) {
	if (obj.style.display == "none") {
		obj.style.display = "block";
	} else {
	obj.style.display = "none";
	}
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <div>
        <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
            <tr class="tdbg">
                <td class="tdbgleft" style="width: 20%" align="right">用户群名：
                </td>
                <td style="width:190px; text-align:center;">
                    <asp:TextBox runat="server" Text="" ID="RoomName" class="l_input" Width="160px"></asp:TextBox>
                </td>
                <td style="width:170px;">
                    <asp:Button ID="OKbn" class="C_input" runat="server" onclick="OKbn_Click" Text=""/>
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户群不能为空!" ControlToValidate="RoomName"></asp:RequiredFieldValidator>
                    <asp:HiddenField runat="server" ID="hfid" />
                </td>
            </tr>
        </table>
    </div>
    <div style="width: 100%; text-align: center;">
      <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center" class="title">
            <td width="2%">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>            
            <td width="10%">用户群ID</td>
            <td width="40%">用户群名称</td>          
            <td width="48%" class="title">操作</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr onclick='displayNone(tr<%#Eval("id") %>)'>
                        <td height="22" align="center">
                            <input name="Item" type="checkbox" value='<%#Eval("id") %>' />
                        </td>
                        <td align="center">
                             <%#Eval("id") %>
                        </td>  
                        <td align="center">
                            <%#Eval("names") %>
                        </td>
                        <td height="22" align="center">
                           <a href="RoomAdd.aspx?cid=<%#Eval("id")%>">修改</a> <a href="?menu=delete&cid=<%#Eval("ID")%>" OnClick="return confirm('确实要删除此群吗？');">删除</a>
                        </td>
                    </tr>                    
                </ItemTemplate>
            </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="4" align="center" class="tdbg">
                共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
             </td>
        </tr>
      </table>
    </div>
    <div>
	<asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" Text="批量删除" onclick="Button3_Click" />
    </div>    
    </form>
</body>
</html>