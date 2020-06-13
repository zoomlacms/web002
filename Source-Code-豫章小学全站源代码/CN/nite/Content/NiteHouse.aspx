<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_NiteHouse, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>视频房间管理</title>
    <link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
   <div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
    <td width="10%" class="title">房间编号</td>
    <td width="20%" class="title">房间名称</td>
    <td width="20%" class="title">职位名称</td>   
    <td width="10%" class="title">房间人数</td> 
    <td width="20%" class="title">企业编号</td>     
    <td width="20%" class="title"> 操作</td>
  </tr>
    <asp:Repeater ID="gvCard" runat="server" > 
    <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">   
    <td height="22" align="center"><%#Eval("Rid")%></td>    
    <td height="22" align="center"><%#Eval("Rname")%></td>
    <td height="22" align="center"><%#Getjobname(Eval("RJob","{0}"))%></td>
    <td height="22" align="center"><%#Eval("RMinSize")%>-<%#Eval("RMaxSize")%></td>
    <td height="22" align="center"><%#Eval("ComapnyID")%></td>
    <td height="22" align="center">
    <a href="NiteHouse.aspx?menu=reok&id=<%#Eval("Rid")%>" onclick="return confirm('确定要取消审核该房间吗?');">取消审核</a>
    <%#Getbotton(Eval("Rid","{0}")) %>
    <a href="NiteHouse.aspx?menu=del&id=<%#Eval("Rid")%>" onclick="return confirm('确定删除该信息吗？删除后该信息不可恢复!');">删除</a>
    </td>
  </tr>
    </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
    <td height="22" colspan="7" align="center" class="tdbgleft">
    共
    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
    个信息
    <asp:Label ID="Toppage" runat="server" Text="" />
    <asp:Label ID="Nextpage" runat="server" Text="" />
    <asp:Label ID="Downpage" runat="server" Text="" />
    <asp:Label ID="Endpage" runat="server" Text="" />
    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
        Text="" />页
    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" 
                OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>个信息/页 转到第<asp:DropDownList ID="DropDownList1"
        runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    页
          </td>
  </tr>
</table>
    </form>
</body>
</html>
