<%@ page language="C#" autoeventwireup="true" inherits="manage_SiteServer_FManageContent, App_Web_f2u3gj3u" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

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
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>站群管理 </span>  &gt;&gt; <span>共享池方案管理</span>  &gt;&gt; <span><a href='FManage.aspx'>方案管理</a></span> &gt;&gt; <span><%=HiddenFName.Value%></span> </div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="5%" class="title">ID</td>
        <td width="45%" class="title">信息名</td>
        <td width="25%" class="title">方案名</td>
        
        <td width="20%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("GeneralID")%>'/></td>
        <td height="22" align="center"><%# Eval("GeneralID")%></td>
        <td height="22" align="left"><%# Eval("Title")%></td>
        <td height="22" align="center"><%=HiddenFName.Value%></td>
       
        <td height="22" align="center"><a href="?menu=del&GID=<%#Eval("GeneralID") %>&fid=<%=Request.QueryString["fid"] %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
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
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    <div>
        <asp:Button ID="Button3" runat="server" class="C_input"  OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
                        Text="批量删除" onclick="Button3_Click1"  />
        <asp:HiddenField ID="HiddenFName" runat="server" />  <asp:HiddenField ID="HiddenFID" runat="server" />
    </div>
    </form>
</body>
</html>

