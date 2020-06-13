<%@ page language="C#" autoeventwireup="true" inherits="manage_UserShopManage_ShopRemark, App_Web_fg5jwqsj" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head2" runat="server">
    <title>评论管理</title>

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
		
		<span>后台管理</span> &gt;&gt; <span>店铺管理</span> &gt;&gt; 评论管理
        <asp:Label ID="Label1" runat="server"></asp:Label></div>
      
     <div class="clearbox"></div>
     
     <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody>
      <tr>
          <td width="33%" height="24" align="center" class="tdbgleft"><a href="?actions=userremark">用户评论</a><asp:Label ID="Label2" runat="server"></asp:Label></td>
          <td width="33%" align="center" class="tdbgleft"><a href="?actions=proremark">商品评论</a><asp:Label ID="Label3" runat="server"></asp:Label></td>    
          <td width="33%" align="center" class="tdbgleft"><a href="?actions=orderremark">交易评论</a><asp:Label ID="Label4" runat="server"></asp:Label></td>
        </tr>
        </tbody>
        </table>
        <div class="clearbox"></div>
        
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody3">
     <asp:Panel ID="proremark" runat="server" Width="100%">
 
               <tr class="tdbg">
          <td width="4%" height="24" align="center" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="4%" align="center" class="title"><span class="tdbgleft">ID</span></td> 
          <td width="34%" align="center" class="title"><span class="tdbgleft">评论标题</span></td>    
          <td width="6%" align="center" class="title"><span class="tdbgleft">商品ID</span></td>
          <td width="17%" align="center" class="title"><span class="tdbgleft">商品名称</span></td>
          <td width="13%" align="center" class="title"><span class="tdbgleft">作者</span></td>
          <td width="16%" align="center" class="title"><span class="tdbgleft">提交时间</span></td>
          <td width="6%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="proremarklist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><input name="Item" type="checkbox" value="<%#Eval("ID") %>"></td>
          <td height="24" align="center"><%#Eval("ID") %></td>
          <td height="24" align="left"><a href="ShopremarkItem.aspx?id=<%#Eval("ID") %>"><%#Eval("Comtitle") %></a></td>
          <td height="24" align="center"><%#Eval("Proid") %></td>
          <td height="24" align="center"><%#Eval("ProName") %></td>
          <td height="24" align="center"><%#Eval("ComUser").ToString()==""? "<font color=green>(匿名)</font>" : Eval("ComUser")%></td>
          <td height="24" align="center"><%#Eval("Addtime") %></td>
          <td height="24" align="center"><a href="?menu=del&actions=<%#Getaction()%>&id=<%#Eval("ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>         
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 
   </asp:Panel>

    <asp:Panel ID="userremark" runat="server" Width="100%">
               <tr class="tdbg">
          <td width="4%" height="24" align="center" class="title"><asp:CheckBox ID="CheckBox1" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="4%" align="center" class="title"><span class="tdbgleft">ID</span></td> 
          <td width="30%" align="center" class="title"><span class="tdbgleft">评论标题</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">受论用户ID</span></td>
          <td width="17%" align="center" class="title"><span class="tdbgleft">受论用户</span></td>    
          <td width="13%" align="center" class="title"><span class="tdbgleft">作者</span></td>
          <td width="16%" align="center" class="title"><span class="tdbgleft">提交时间</span></td>
          <td width="6%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="userremarklist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><input name="Item" type="checkbox" value="<%#Eval("ID") %>"></td>
          <td height="24" align="center"><%#Eval("ID") %></td>
          <td height="24" align="left"><a href="ShopremarkItem.aspx?id=<%#Eval("ID") %>"><%#Eval("Comtitle") %></a></td>
          <td height="24" align="center"><%#Eval("CUserid") %></td>
          <td height="24" align="center"><%#Getusername(Eval("CUserid","{0}")) %></td>
          <td height="24" align="center"><%#Eval("ComUser").ToString()==""? "<font color=green>(匿名)</font>" : Eval("ComUser")%></td>
          <td height="24" align="center"><%#Eval("Addtime")%></td>
          <td height="24" align="center"><a href="?menu=del&actions=<%#Getaction()%>&id=<%#Eval("ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
   </asp:Panel>
   
   <asp:Panel ID="orderremark" runat="server" Width="100%">
               <tr class="tdbg">
          <td width="4%" height="24" align="center" class="title"><asp:CheckBox ID="CheckBox2" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="4%" align="center" class="title"><span class="tdbgleft">ID</span></td> 
          <td width="22%" align="center" class="title"><span class="tdbgleft">评论标题</span></td> 
          <td width="18%" align="center" class="title"><span class="tdbgleft">交易ID</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">店铺店主</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">作者</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">评论类型</span></td>
          <td width="15%" align="center" class="title"><span class="tdbgleft">提交时间</span></td>
          <td width="6%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="orderremarklist" runat="server">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center">
              <input name="Item" type="checkbox" value="<%#Eval("ID") %>">
              </td>
          <td height="24" align="center"><%#Eval("ID") %></td>
          <td height="24" align="left"><a href="ShopremarkItem.aspx?id=<%#Eval("ID") %>"><%#Eval("Comtitle") %></a></td>
          <td height="24" align="center"><%#Eval("COrderid") %></td>
          <td height="24" align="center"><%#Getstorename(Eval("Storeid","{0}")) %></td>
          <td height="24" align="center"><%#Eval("ComUser").ToString()==""? "<font color=green>(匿名)</font>" : Eval("ComUser")%></td>
          <td height="24" align="center"><%#Getoption(Eval("ComOption","{0}"))%></td>
          <td height="24" align="center"><%#Eval("Addtime")%></td>
          <td height="24" align="center"><a href="?menu=del&actions=<%#Getaction()%>&id=<%#Eval("ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
   </asp:Panel>
   <tr class="tdbg">
          <td height="24" colspan="9" align="center" class="tdbgleft">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>个&nbsp;
              <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个/页
              转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
    <br />
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button3"  class="C_input"  style="width:110px;"  runat="server" Text="批量删除" CommandName="5" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" OnClick="Button3_Click" />
            </td>
      </tr>
            <tr>
        <td></td>
      </tr>
    </table>
</form>
</body>
</html>
