<%@ page language="C#" autoeventwireup="true" inherits="User_siteManage_codetext, App_Web_q15q5nco" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>文字广告</title>
<link href="/user/css/layout.css" rel="stylesheet" type="text/css" />
<link href="/user/css/header.css" rel="stylesheet" type="text/css" />
<link href="/user/css/base.css" rel="stylesheet" type="text/css" />
<script>
function Cope_code(obj) {
    var text = document.getElementById(obj);
    if (text.value == "") { alert("没有内容"); text.focus(); return; }
    text.select(); //选择对象
    document.execCommand("Copy"); //执行浏览器复制命令
    alert("已复制好，可贴粘。");
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="main_user_bg"></div>
<div class="user_con">
 <h2>文字广告</h2>
 <asp:Repeater ID="rep" runat="server">
 <ItemTemplate>
 <table width="100%" border="0" cellspacing="0" cellpadding="0" class="user_table">
 <tr>
  <td style="width:100%;" class="code_textdiv">
  <div style="width:100%" class="code_text1 "><%#Container.ItemIndex+1 %>、广告标题:&nbsp;<a href='<%#GetUrl(Eval("id", "{0}")) %>' target="_blank"><%#Eval("Title") %></a>&nbsp;&nbsp;
  <img src="../css/Images/copy_code.gif" alt="复制广告代码" onclick="Cope_code('code<%#Container.ItemIndex %>')" /></div>
  <textarea name="code2" rows="3" id="code<%#Container.ItemIndex %>" style="width:100%;" class="code_text3 "><%#GetContent(Eval("id", "{0}"))%></textarea>
</td>
 </tr>
 </table>
 </ItemTemplate>
 </asp:Repeater>
 <div align="center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />页次：
    <asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页 
    <span style="text-align: center">
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged" ></asp:TextBox>
    </span>条信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>页</div>
</div>
</form>
</body>
</html>
