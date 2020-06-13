<%@ page language="C#" autoeventwireup="true" inherits="manage_User_UrlReWr, App_Web_tskucmgh" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>栏目变子站管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
   <script language="javascript">
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
<div class="r_navigation">后台管理 &gt;&gt; 系统配置 &gt;&gt; <a href="UrlReWr.aspx">栏目变子站管理</a> &nbsp;&nbsp;&nbsp;<a href="addUrlReWr.aspx">[ 添加栏目变子站  ]</a>
</div>
<div style="text-align:center"></div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="15%" class="title">转换记录标题名称</td>
        <td width="30%" class="title">请求来源地址</td>
        <td width="30%" class="title">转换目地址标(<u>真实地址</u>)</td>       
        <td width="15%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Urid")%>'/></td>
        <td height="22" align="center"><%# Eval("Urid")%></td>
        <td height="22" align="center"><%# Eval("KeyName")%></td>
        <td height="22" align="left"><a href="<%#Eval("LookFor")%>" target="_blank"><%#Eval("LookFor")%></a></td>
        <td height="22" align="left"><%# Eval("Sendto")%></td>
        <td height="22" align="center"><a href="EditUrlReWr.aspx?menu=edit&id=<%#Eval("Urid") %>" >修改</a>&nbsp;&nbsp;<a href="UrlReWr.aspx?menu=del&id=<%#Eval("Urid") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="6" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        条记录
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
         </td>
      </tr>
    </table>
    <br />
    <div>
   <asp:Button ID="Button1" runat="server" Text="批量删除" class="C_input"   OnClick="Button3_Click"/>
  </div>
  </form>
</body>
</html>