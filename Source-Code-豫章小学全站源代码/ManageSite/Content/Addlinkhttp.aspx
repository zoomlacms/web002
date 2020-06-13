<%@ page language="C#" autoeventwireup="true" inherits="manage_File_Addlinkhttp, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>站内链接</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
  <form id="form1" runat="server">
   <div class="column">
        <div class="columntitle">当前位置：功能导航 &gt;&gt;<a href="Addlinkhttp.aspx">站内链接管理</a></div>   
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr></tr>
      <tr align="center" style="background-color:#F0F6FC">
        <td width="2%" ><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="7%">ID</td>    
        <td width="10%">关键字</td>
        <td width="15%">链接网址</td>
        <td width="15%">链接状态</td>
        <td width="10%">目标框架</td>   
        <td width="11%">操作</td>
      </tr>
        <asp:Repeater ID="Addlinkbind" runat="server" >       
        <ItemTemplate>
      <tr class="tdbg">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%#Eval("ID")%>'/></td>
        <td height="22" align="center"><%#Eval("ID")%></td>      
        <td height="22" align="center"><%#Eval("Linkname")%></td>
        <td height="22" align="center"><%#Eval("Lkeyword")%></td>
        <td height="22" align="center"><%#GetState(Eval("Lstate").ToString())%></td>
        <td height="22" align="center"><%#Getwin(Eval("Lwindows").ToString())%></td>
        <td height="22" align="center"><a href="ReviseLink.aspx?menu=edit&ID=<%#Eval("ID")%>" >修改</a>
       &nbsp;&nbsp;&nbsp;&nbsp;<a href="Addlinkhttp.aspx?menu=del&ID=<%#Eval("ID") %>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbg">共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"  Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页        
      </td >       
      </tr>
    </table>
    <div>
        <asp:Button ID="Button3" runat="server" CssClass="button"   OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" onclick="Button3_Click1"  /></div>                        
       </div>
    </form>
</body>
</html>
