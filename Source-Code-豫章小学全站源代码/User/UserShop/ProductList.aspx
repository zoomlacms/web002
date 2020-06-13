<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ProductList, App_Web_er0gytxg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商品列表</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
var tID =0;
var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
var arrTabs = new Array("1", "14", "15");
function ShowTabs(ID) {
    var ddlgradelevel = document.getElementById("quicksouch");
    var cc = 0;
    for (var i = 0; i < ddlgradelevel.options.length; i++)
    {
        if(ddlgradelevel.options[i].value==arrTabs[ID])
        {
            ddlgradelevel.options[i].selected = true;
            if (ID == 0) {
                cc = 4;
            }
            else {
                cc = ddlgradelevel.options[i].value;
            }
            location.href = 'ProductList.aspx?type=<%=Request.QueryString["type"] %>&id=' + ID + '&quicksouch=' + cc;
        }
    }
}
function pload() 
{
    var ID = '<%=Request.QueryString["id"]%>';
    if (ID != tID) {
        document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
        document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
        tID = ID;
    }
} 
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
<body onload="pload()">
<form id="form1" runat="server">
<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
<div class="us_topinfo" style="margin-top:10px; width:98%"><a href="ProductList.aspx?type=0">商品管理</a> |<a href="ProductList.aspx?menu=model&type=0"> 标准商品</a> | <a href="ProductAdd.aspx">添加商品</a> 
<asp:Label ID="lblAddContent" runat="server" Text=""></asp:Label>|
<a href="AriteAdd.aspx">添加文章</a>
</div>
    <div class="us_topinfo" style="margin-top:10px; width:98%">
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tabs" >
        <tr class="tdbg">
          <td width="34%" height="24" align="center" class="title">快速查找：
          <asp:DropDownList ID="quicksouch" runat="server" AutoPostBack="True">
            <asp:ListItem value="1">所有商品</asp:ListItem>
            <asp:ListItem value="2">正在销售的商品</asp:ListItem>
            <asp:ListItem value="3">未销售的商品</asp:ListItem>
            <asp:ListItem value="4">正常销售的商品</asp:ListItem>
            <asp:ListItem value="5">特价处理的商品</asp:ListItem>
            <asp:ListItem value="6">所有热销的商品</asp:ListItem>
            <asp:ListItem value="7">所有新品</asp:ListItem>
            <asp:ListItem value="8">所有精品商品</asp:ListItem>
            <asp:ListItem value="9">有促销活动的商品</asp:ListItem>
            <asp:ListItem value="10">实际库存报警的商品</asp:ListItem>
            <asp:ListItem value="11">预定库存报警的商品</asp:ListItem>
            <asp:ListItem value="12">已售完的商品</asp:ListItem>
            <asp:ListItem value="13">所有批发商品</asp:ListItem>
            <asp:ListItem value="14">团购商品</asp:ListItem>
            <asp:ListItem value="15">竞拍商品</asp:ListItem>
          </asp:DropDownList></td>
          <td width="66%" align="center" class="title">高级查询：
          <asp:DropDownList ID="souchtable" runat="server">
            <asp:ListItem value="0" Selected="True">请选择</asp:ListItem>
            <asp:ListItem value="1">商品名称</asp:ListItem>
            <asp:ListItem value="2">商品简介</asp:ListItem>
            <asp:ListItem value="3">商品介绍</asp:ListItem>
            <asp:ListItem value="4">厂商</asp:ListItem>
            <asp:ListItem value="5">品牌/商标</asp:ListItem>
            <asp:ListItem value="6">条形码</asp:ListItem>
          </asp:DropDownList>
          <asp:TextBox ID="souchkey" runat="server" />
          <asp:Button ID="souchok" runat="server" Text=" 搜索 " OnClick="souchok_Click" /></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table  border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
    <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">正常销售</td>
    <td id="TabTitle1" class="tabtitle" runat="server"  onclick="ShowTabs(1)">
        团  购</td>
    <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">竞  拍</td>
    </tr>
    </table>
    <table width="100%" cellpadding="0" cellspacing="0" class="border" style="background-color: white;">
      <tbody id="Tabss">
               <tr class="us_seta" style="background:#FFBD59">
          <td width="3%" height="24" align="center" class="title"  ><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">ID</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">商品图片</span></td>
          <td width="20%" align="center" class="title"><span class="tdbgleft">商品名称</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">单位</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">库存</span></td>
          <td width="7%" align="center" class="title"><span class="tdbgleft">价格</span></td>
          <td width="6%" align="center" class="title"><span class="tdbgleft">购买方式</span></td>
          <td width="8%" align="center" class="title"><span class="tdbgleft">推荐级别</span></td>
          <td width="8%" align="center" class="title"><span class="tdbgleft">结束时间</span></td>
          <td width="8%" align="center" class="title"><span class="tdbgleft">人数</span></td>
          <td align="center" class="title"><span class="tdbgleft">销售中</span></td>
          <td width="10%" align="center" class="title"><span class="tdbgleft">操作</span></td>
        </tr>
        <asp:Repeater ID="Productlist" runat="server" onitemcommand="Productlist_ItemCommand" 
                   onitemdatabound="Productlist_ItemDataBound">
        <ItemTemplate>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center">
              <input name="Item" type="checkbox" value='<%# Eval("id")%>'/>
              </td>
              <td height="24" align="center"><%# Eval("id")%></td>
          <td height="24" align="center"><%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%></td>
          <td height="24" align="center"><%#Eval("proname")%></td>
          <td height="24" align="center"><%#Eval("ProUnit")%></td>
          <td height="24" align="center"><%#Stockshow(DataBinder.Eval(Container,"DataItem.id","{0}"))%></td>
          <td height="24" align="center"><%#formatcs(DataBinder.Eval(Container,"DataItem.LinPrice","{0}"))%></td>
          <td height="24" align="center"><%#formatnewstype(DataBinder.Eval(Container,"DataItem.Colonel").ToString ())%></td>
          <td height="24" align="center"><%#Eval("Dengji")%></td>
          <td height="24" align="center"><%#Getttypetime(Eval("id", "{0}"))%></td>
          <td height="24" align="center"><%#DataBinder.Eval(Container,"DataItem.ColonelNowNum")%>/<%#DataBinder.Eval(Container,"DataItem.ColonelNum")%></td>
          <td height="24" align="center"><%#formattype(DataBinder.Eval(Container,"DataItem.Sales","{0}"))%></td>
          <td height="24" align="center">
          <asp:HiddenField ID="hfuserid" runat="server" Value='<%#Eval("UserID") %>'/>
          <asp:HiddenField ID="hfPrid" runat="server" Value='<%#Eval("ID") %>' />
          <asp:LinkButton id="up" runat="server" CommandName="upd" CommandArgument='<%#Eval("ID") %>'  >修改</asp:LinkButton>
          <asp:LinkButton ID="del" runat="server" CommandName="del" CommandArgument='<%#Eval("ID") %>'>删除</asp:LinkButton>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                 <tr class="tdbg">
          <td height="24" colspan="13" align="center" class="tdbgleft">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 个商品  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />个商品/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页</td>
        </tr>
     </tbody>
    </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td style="height: 21px">&nbsp;<asp:Button ID="Button1" runat="server" Text="开始销售" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="设为热卖" OnClick="Button2_Click" />
            <asp:Button ID="Button6" runat="server" Text="设为精品" OnClick="Button6_Click" />
            <asp:Button ID="Button5" runat="server" Text="设为新品" OnClick="Button5_Click" />
            <asp:Button ID="Button3" runat="server" Text="批量删除" OnClick="Button3_Click" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" />
            <asp:Button ID="Button4" runat="server" Text="停止销售" OnClick="Button4_Click" />
            <asp:Button ID="Button7" runat="server" Text="取消热卖" OnClick="Button7_Click" />
            <asp:Button ID="Button8" runat="server" Text="取消精品" OnClick="Button8_Click" />
            <asp:Button ID="Button9" runat="server" Text="取消新品" OnClick="Button9_Click" /></td>
      </tr>
            <tr>
        <td><strong>商品属性中的各项含义：</strong><br />
          <Font color="blue">精</Font>----推荐精品，<Font color="red">热</Font>----热门商品，<Font color="green">新</Font>----推荐新品，<font color="blue">图</font>----有商品缩略图 <br /></td>
      </tr>
    </table>
</div>
</form>
</body>
</html>