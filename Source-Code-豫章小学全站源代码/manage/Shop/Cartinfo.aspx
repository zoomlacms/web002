<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Cartinfo, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>商品列表</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">		
		<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <a href="CartManage.aspx">购物车</a> &gt;&gt; <span>购物车信息</span>	</div>
    <div class="clearbox"></div>    
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody1">

        <tr class="tdbg">
            <td colspan="2" align="center" class="title">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;</td>
        </tr>
        <tr class="tdbg">
          <td width="50%" height="24" align="center"><table width="100%" border="0" cellpadding="0" cellspacing="1" style="background-color: white;">
            <tr>
              <td height="22" align="right" class="tdbgleft" style="width: 131px">用户名：</td>
              <td width="72%" height="22" align="left" class="tdbg">
                  &nbsp;<asp:Label ID="username" runat="server"></asp:Label>&nbsp;</td>
            </tr>
            <tr>
              <td height="22" align="right" class="tdbgleft" style="width: 131px">
                  收货人姓名：</td>
              <td height="22" align="left" class="tdbg">&nbsp;<asp:Label ID="truename" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
              <td align="right" class="tdbgleft" style="width: 131px; height: 22px;">收货人地址：</td>
              <td align="left" class="tdbg" style="height: 22px">&nbsp;<asp:Label ID="add" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
              <td height="22" align="right" class="tdbgleft" style="width: 131px">收货人邮箱：</td>
              <td height="22" align="left" class="tdbg">&nbsp;<asp:Label ID="email" runat="server" Text=""></asp:Label></td>
            </tr>
          </table></td>
          <td width="50%" align="center"><table width="100%" border="0" cellspacing="1" cellpadding="0" style="background-color: white;">
            <tr>
              <td width="28%" height="22" align="right" class="tdbgleft">购物车时间：</td>
              <td width="72%" height="22" align="left" class="tdbg">&nbsp;<asp:Label ID="addtime" runat="server"></asp:Label></td>
            </tr>
            <tr>
              <td align="right" class="tdbgleft" style="height: 22px">联系电话：</td>
              <td align="left" class="tdbg" style="height: 22px">&nbsp;<asp:Label ID="pho" runat="server"></asp:Label></td>
            </tr>
            <tr>
              <td height="22" align="right" class="tdbgleft">邮政编码：</td>
              <td height="22" align="left" class="tdbg">&nbsp;<asp:Label ID="code" runat="server" Text=""></asp:Label></td>
            </tr>
            <tr>
              <td height="22" align="right" class="tdbgleft">收货人手机：</td>
              <td height="22" align="left" class="tdbg">&nbsp;<asp:Label ID="mob" runat="server" Text=""></asp:Label></td>
            </tr>
          </table></td>
        </tr>
      </tbody>
    </table>
    <br />
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
      <tbody id="Tbody2">
        <tr class="tdbg">
          <td align="center" class="title">图片</td>
          <td align="center" class="title">商品名称</td>
          <td align="center" class="title">单位</td>
          <td align="center" class="title">数量</td>
          <td align="center" class="title">销售类型</td>
          <td align="center" class="title">市场价</td>
          <td align="center" class="title">实价</td>
          <td align="center" class="title">金额</td>
        </tr>
        <asp:Repeater ID="procart" runat="server">
        <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td height="24" align="center"><%#getproimg(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></td>
          <td align="center"><%#Eval("proname")%></td>
          <td align="center"><%#getProUnit(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></td>
          <td align="center"><%#Eval("pronum") %></td>
          <td align="center"><%#formatnewstype(DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></td>
          <td align="center"><%#getjiage("1",DataBinder.Eval(Container, "DataItem.proid", "{0}"))%></td>
          <td align="center"><%#shijia(DataBinder.Eval(Container, "DataItem.Shijia", "{0}"))%></td>
          <td align="center"><%#getprojia(DataBinder.Eval(Container, "DataItem.id", "{0}"))%></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
                <tr class="tdbg">
          <td height="24" colspan="9" align="right">合计：<asp:Label ID="alljiage" runat="server" Text=""></asp:Label></td>
        </tr>
      </tbody>
      <tr align="center">
        <td colspan="8">
                            <input type="button" class="C_input"  name="Button2" value="返回列表"
                    onclick="location.href='CartManage.aspx'"
                    id="Button2" />
        </td>
      </tr>
    </table>

</form>
</body>
</html>