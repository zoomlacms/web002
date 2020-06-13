<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ProductCashManage, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>

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
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>商城配置</span> &gt;&gt;
        <span>VIP卡管理</span>&nbsp;&nbsp;&nbsp;<a href="AddCard.aspx">[ 生成VIP卡 ]</a>&nbsp;&nbsp;&nbsp;<a href="CardTypeManage.aspx">[ 卡类型管理 ]</a>&nbsp;&nbsp;&nbsp;<a href="Addcardtype.aspx">[ 添加卡类型 ]</a>
    </div>
    <div class="clearbox">
    </div>
    
    <div class="r_navigation">
        状态选择：<a href="ProductCashManage.aspx">全部</a>　<a href="?CardState=2">已处理</a>　<a href="?CardState=1">未处理</a>
    </div>
    <div class="clearbox">
    </div>
    <div>
     
        
    </div>
    <div style="text-align:center">
      
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
      <tr align="center">
        <td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="10%" class="title">ID</td>
        <td width="10%" class="title">银行</td>
        <td width="30%" class="title">帐号</td>
       <td width="10%" class="title">申请金额</td>
       
         <td width="10%" class="title">状态</td>
        
        <td width="30%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Y_ID")%>'/></td>
        <td height="22" align="center"><%# Eval("Y_ID")%></td>
         <td height="22" align="center"><%# Eval("Bank")%></td>
       <td height="22" align="center"><%# Eval("Account")%></td>
         <td height="22" align="center"><%#showMoney(Eval("money").ToString())%></td>
        <td height="22" align="center"><%#shoyState(Eval("yState").ToString())%></td>
        <td height="22" align="center"><%#showuse(Eval("Y_ID").ToString()) %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="CashManage.aspx?menu=del&id=<%#Eval("Y_ID") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbgleft">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个商品
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个商品/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
              </td>
      </tr>
    </table>
    <div>
        </div>
    </form>
</body>
</html>
