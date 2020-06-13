<%@ page language="C#" autoeventwireup="true" inherits="User_ConstPassen, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>常用客户管理</title>
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link  rel="stylesheet" type="text/css" href="../App_Themes/UserThem/bidding.css" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="javascript" type="text/javascript">
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
    function Getinfo(id) {
        location.href = "AddConstPassen.aspx?menu=edit&id=" + id + "";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="us_topinfo" style="width: 98%">
    <div class="us_pynews">
      您现在的位置： <a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a> &gt;&gt; <a title="常用客户" href="/User/ConstPassen.aspx">常用客户管理</a>&nbsp;<a href="AddConstPassen.aspx">[添加客户]</a>
    </div>
  </div>

  <div class="us_seta"  style="margin-top:5px;">
    <h1 align="center">我的常用客户</h1>
  </div>
  <table width="100%" cellpadding="2" cellspacing="1">
    <tr>
      <td width="14%" height="24" align="center"><asp:CheckBox ID="CheckBox1" onclick="CheckAll(this)" runat="server" /></td>
      <td align="center" width="14%"> 姓名 </td>
      <td align="center" width="14%"> 手机号码/联系电话 </td>
      <td align="center" width="14%"> 证件类型 </td>
      <td align="center" width="14%"> 身份证号码 </td>
      <td align="center" width="14%"> 性别 </td>
      <td width="14%" align="center"> 操作 </td>
    </tr>
    <asp:Repeater ID="Manufacturerslist" runat="server">
      <ItemTemplate>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                id="<%#Eval("id") %>" ondblclick="Getinfo(this.id)">
          <td height="24" align="center"><input name="Item" type="checkbox" value="<%#Eval("id") %>"></td>
          <td height="24" align="center"><%#Eval("Name")%></td>
          <td height="24" align="center"><%#Eval("Mobile")%></td>
          <td height="24" align="center"><%#GetCardType(Eval("CreID","{0}"))%></td>
          <td height="24" align="center"><%#GetCardCode(Eval("CreID","{0}"))%></td>
          <td height="24" align="center"><%#Eval("Sex")%></td>
          <td height="24" align="center"><a href="AddConstPassen.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>
      </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
      <td height="24" colspan="7" align="center" class="tdbgleft"> 共
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
        页 <span style="text-align: center">
        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox>
        </span>条信息/页  转到第
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
        页 </td>
    </tr>
    <tr>
      <td height="24" colspan="7"><asp:Button ID="Button1" class="i_bottom"  Text="批量删除" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('不可恢复性删除数据,你确定将该数据删除吗？');}" onclick="Button1_Click" /></td>
    </tr>
  </table>
</form>
</body>
</html>