<%@ page language="C#" autoeventwireup="true" inherits="CN_nite_Content_VideoVerify, App_Web_bcc1hubn" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>视频审核</title>
<link href="/App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="/App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理 </span>&gt;&gt; <span>系统设置 </span>&gt;&gt;<span> 扩展功能 </span>&gt;&gt; <span>Nite视频面试管理</span> &gt;&gt; <span>
             <span>视频申请列表</span></span>
    </div>
    <div class="clearbox">
    </div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
  <tr align="center">
    <td width="10%" class="title">视频编号</td>
    <td width="30%" class="title">视频名称</td>
    <td width="20%" class="title">视频状态</td>   
    <td width="40%" class="title"> 操作</td>
  </tr>
    <asp:Repeater ID="gvCard" runat="server" > 
    <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">   
    <td height="22" align="center"><%#Eval("Vid")%></td>    
    <td height="22" align="center"><%#Eval("VidTitle")%></td>
    <td height="22" align="center"><%#GetStatus(Eval("State").ToString())%></td>
    <td height="22" align="center"> 
    <a href="../video/ViewVideo.aspx?videoid=<%#Eval("Vid")%>" >查看</a>&nbsp;&nbsp;  
    <a href="VideoVerify.aspx?ok=<%#Eval("Vid")%>" >审核通过</a>&nbsp;&nbsp;
    <a href="VideoVerify.aspx?del=<%#Eval("Vid")%>" >删除</a>
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
    <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
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
