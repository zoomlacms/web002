<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_ShopRecycler, App_Web_5abfvvyw" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>商品回收站</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 商城管理&gt;&gt; <a href="ProductManage.aspx">商品管理</a> &gt;&gt; <a href="ProductManage.aspx">商品列表</a>
      </div>
  <asp:Label ID="Label1" runat="server"></asp:Label>
        <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
          <tbody id="Tabss">
            <tr class="tdbg">
              <td width="3%" height="24" align="center" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
              <td width="3%" align="center" class="title"><span class="tdbgleft">ID</span></td>
              <td width="12%" align="center" class="title"><span class="tdbgleft">商品图片</span></td>
              <td width="22%" align="center" class="title"><span class="tdbgleft">商品名称</span></td>
              <td width="7%" align="center" class="title"><span class="tdbgleft">单位</span></td>
              <td width="7%" align="center" class="title"><span class="tdbgleft">库存</span></td>
              <td width="6%" align="center" class="title"><span class="tdbgleft">价格</span></td>
              <td width="6%" align="center" class="title"><span class="tdbgleft">类型</span></td>
              <td width="5%" align="center" class="title"><span class="tdbgleft">推荐</span></td>
              <td width="8%" align="center" class="title"><span class="tdbgleft">商品属性</span></td>
              <td width="6%" align="center" class="title"><span class="tdbgleft">销售中</span></td>
              <td width="7%" align="center" class="title"><span class="tdbgleft">操作</span></td>
            </tr>
            <asp:Repeater ID="Productlist" runat="server">
              <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                  <td height="24" align="center"><input name="Item" type="checkbox" value='<%# Eval("id")%>' /></td>
                  <td height="24" align="center"><%# Eval("id")%></td>
                  <td height="24" align="center"><a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"> <%#getproimg(DataBinder.Eval(Container,"DataItem.Thumbnails","{0}"))%></a></td>
                  <td height="24" align="left"><a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"> <%#(Eval("Priority", "{0}") == "1") && (Convert.ToInt32(Eval("Propeid","{0}")) > 0) ? "<font color=maroon>[绑]</font>  " : ""%><%#Eval("proname")%></a></td>
                  <td height="24" align="center"><%#Eval("ProUnit")%></td>
                  <td height="24" align="center"><%#Stockshow(DataBinder.Eval(Container,"DataItem.id","{0}"))%></td>
                  <td height="24" align="center"><%#formatcs(DataBinder.Eval(Container,"DataItem.LinPrice","{0}"))%></td>
                  <td height="24" align="center"><%#formatnewstype(DataBinder.Eval(Container,"DataItem.ProClass","{0}"))%></td>
                  <td height="24" align="center"><%#Eval("Dengji")%></td>
                  <td height="24" align="center"><%#forisbest(DataBinder.Eval(Container,"DataItem.isbest","{0}"))%> <%#forishot(DataBinder.Eval(Container,"DataItem.ishot","{0}"))%> <%#forisnew(DataBinder.Eval(Container,"DataItem.isnew","{0}"))%></td>
                  <td height="24" align="center"><%#formattype(DataBinder.Eval(Container,"DataItem.Sales","{0}"))%></td>
                  <td height="24" align="center"><a href="ShopRecycler.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"> 还原</a> <a href="ShopRecycler.aspx?menu=delete&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>"
                                        onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');">删除</a></td>
                </tr>
              </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
              <td height="24" colspan="12" align="center" class="tdbgleft"> 共
                <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                个商品
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" />
                页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />
                /
                <asp:Label ID="PageSize" runat="server" Text="" />
                页
                <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" Text="10" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
个商品/页 转到第
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"> </asp:DropDownList>
                页 </td>
            </tr>
          </tbody>
        </table>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td style="height: 21px">&nbsp;
              <asp:Button ID="Button1" class="C_input" Style="width: 110px;" runat="server" Text="批量还原" OnClick="Button1_Click" />
              <asp:Button ID="Button2" class="C_input" Style="width: 110px;" runat="server" Text="批量删除" OnClick="Button2_Click" />
              <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" Text="全部还原" onclick="Button3_Click"/>
              <asp:Button ID="Button4" class="C_input" Style="width: 110px;" runat="server" Text="清空回收站" onclick="Button4_Click"/>
          </tr>
        </table>
    </form>
</body>
</html>