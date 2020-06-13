<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_UserShopManage_Shoplabelsclass, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>标签管理</title>

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
    <form id="form2" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; <a href="Shoplabelsclass.aspx">店铺标签管理</a> 
        <asp:Label ID="Label2" runat="server"></asp:Label>[<asp:Label ID="Label1"
            runat="server"></asp:Label>]</div>
      
     <div class="clearbox"></div>
         <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">
        <tr class="tdbg">
          <td width="100%" height="24" align="left" class="tdbgleft" colspan="2">
              <asp:Label ID="lablelistname" runat="server" Text=""></asp:Label>
          </td>
        </tr>
        </tbody>
    </table>
    <div class="clearbox"></div>
    
    
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="tdbg">
          <td width="3%" height="24" align="center" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="20%" align="center" class="title"><span class="tdbgleft">标签名称</span></td>
          <td width="22%" align="center" class="title"><span class="tdbgleft">标签说明</span></td>
          <td width="5%" align="center" class="title"><span class="tdbgleft">标签分类</span></td>
          <td width="5%" align="center" class="title"><span class="tdbgleft">标签状态</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="Lablelist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#Getinput(Eval("ID","{0}"))%></td>
          <td height="24" align="left"><span style="cursor:hand" onclick="location.href='addshoplabels.aspx?menu=edit&id=<%#Eval("ID") %>'"><%#GetName(Eval("ID","{0}"))%></span></td>
          <td height="24" align="left"><%#Eval("LableInfo") %></td>
          <td height="24" align="center"><%#Eval("LableClass", "{0}")%></td>
          <td height="24" align="center"><%#Getture(Eval("IsTrue","{0}"))%></td>
          <td height="24" align="center"><%#Getbottom(Eval("ID","{0}")) %></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 <tr class="tdbg">
          <td height="24" colspan="6" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个标签&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
        <br />[帮助:]什么是派生标签？派生标签就是继承所派生的标签所有的功能可以另外取名的一种功能<br /><br />[提示:]<font color="blue">蓝颜色显示的标签</font>为<font color="green">派生标签</font>，黑色为正常标签<b> [注意:]标签名不能重复!</b><br /><br /><br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button1" runat="server" Text="设为启用" CommandName="1" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="设为停用" CommandName="0" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="批量删除" CommandName="5" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button3_Click" />
            </td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
