<%@ page language="C#" autoeventwireup="true" inherits="User_UserZone_Cut_PortalList, App_Web_efmtsymw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html >
<head>
<title>网友主页</title>
<link href="../../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css">
<link href="../../../App_Themes/UserThem/cut.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<form id="form1" runat="server">
<div class="divMain"  style="border:#67C3DA 1px solid;width:973px; margin-top:20px;">
<div class="textAlign"><%=message%></div>
 <ul class="mainul">
    <asp:Repeater ID="repUserPortal" runat="server">
    <ItemTemplate>
      <li class="mainli" ><span><a class="lia" href='Portal.aspx?Uid=<%# Eval("UserID") %>'><%# Eval("UserName") %></a> </span> <%# GetTime(Eval("UserName"))%></li>
    </ItemTemplate>
    </asp:Repeater>
    </ul>
  <div style="clear:both; width:100%; height:10px;"></div>
  <div class="textAlign"> 
     <span style="text-align: center">
        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" 
            class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_OnSelectedIndexChanged"></asp:DropDownList>
                页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </span>
  </div>   
<span style="padding-left:20px; line-height:28px;"><a href="javascript:history.back(-1)"><<返回主页</a></span>
</div>

</form>
</body>
</html>
