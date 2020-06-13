<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_StockList, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>会员中心 >> 我的店铺</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
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
    <uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
    <uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
    <div class="us_topinfo" style="margin-top:10px; width:98%"><a href="StockList.aspx">库存管理</a> <a href="StockAdd.aspx">库存添加</a> </div>
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="border" style="margin: 0 auto;background-color: white;">
      <tr align="center" style="background:#FFBD59">
        <td width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="13%" class="title">单据类型</td>
        <td width="20%" class="title">单据编号</td>
        <td width="15%" class="title">
            录入时间</td>
        <td width="12%" class="title"> 录入者</td>
        <td width="20%" class="title"> 备注</td>
        <td width="15%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="StockRepeater" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("id")%>'/></td>
        <td height="22" align="center"><%#stocktype(DataBinder.Eval(Container,"DataItem.stocktype","{0}"))%></td>
        <td height="22" align="center"><%#Eval("danju") %></td>
        <td height="22" align="center"><%#Eval("addtime") %></td>
        <td height="22" align="center"><%#Eval("adduser") %></td>
        <td height="22" align="center"><%#Eval("content")%></td>
        <td height="22" align="center"><a href="StockAdd.aspx?menu=edit&id=<%#Eval("id") %>">修改</a> <a href="Stocklist.aspx?menu=del&id=<%#Eval("id") %>" OnClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
      </tr>
        </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
        <td height="22" colspan="10" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条记录  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条记录/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
      </tr>
    </table>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td style="height: 21px">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"  Text="批量删除" />&nbsp;</td>
            </tr>
        </table>
</div>
</form>
</body>
</html>