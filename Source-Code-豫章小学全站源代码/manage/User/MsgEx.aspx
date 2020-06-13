<%@ page language="C#" autoeventwireup="true" inherits="manage_User_MsgEx, App_Web_tskucmgh" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>聊天记录</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script language="C#" runat="server">
    protected string intlefts(string i_name, int intlength)
    {
        if (i_name == "")
        {
            return null;
        }
        else
        {
            if (i_name.Length > intlength)
            {
                return i_name.Substring(0, intlength)+"......";
            }
            else
            {
                return i_name;
            }
        }
    } 
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;企业办公&gt;&gt;聊天记录</div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center" class="title">
        <td width="2%"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="10%">ID</td>
        <td width="10%">发送者</td>
        <td width="10%">接收者</td>
        <td width="40%">内容</td>
        <td width="15%">发送时间</td>
        <td width="48%" class="title">操作</td>
      </tr>
      <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="<%#Eval("ID") %>" ondblclick="ShowTabs(this.id)">
            <td height="22" align="center"><input name="Item" type="checkbox" value='<%#Eval("ID") %>' /></td>
            <td align="center"><%#Eval("ID")%></td>
            <td align="center"><%#GetUserName(Eval("SendUserID","{0}"))%></td>
            <td align="center"><%#GetUserName(Eval("AdmitUserId","{0}"))%></td>
            <td align="center"><%#intlefts(DataBinder.Eval(Container.DataItem, "Content").ToString(), 25)%></td>
            <td align="center"><%#Eval("SendDatetime")%></td>
            <td height="22" align="center"><a href="ShowMinute.aspx?cid=<%#Eval("ID")%>">详细</a> <a href="?menu=delete&cid=<%#Eval("ID")%>" onclick="return confirm('确实要删除此学员吗？');">删除</a></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
      <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbg"> 共
          <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
          条数据
          <asp:Label ID="Toppage" runat="server" Text="" />
          <asp:Label ID="Nextpage" runat="server" Text="" />
          <asp:Label ID="Downpage" runat="server" Text="" />
          <asp:Label ID="Endpage" runat="server" Text="" />
          页次：
          <asp:Label ID="Nowpage" runat="server" Text="" />
          /
          <asp:Label ID="PageSize" runat="server" Text="" />
          页
          <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                        Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
          条数据/页 转到第
          <asp:DropDownList ID="DropDownList1" runat="server" 
            AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged"> </asp:DropDownList>
          页
          <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                        ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator></td>
      </tr>
    </table>
    <div>
      <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"  Text="批量删除" onclick="Button3_Click" />
      <asp:Button ID="Button4" class="C_input" runat="server" Text="删除上周数据" onclick="Button4_Click" />
    </div>
  </div>
</form>
</body>
</html>
