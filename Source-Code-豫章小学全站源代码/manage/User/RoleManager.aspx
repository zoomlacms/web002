<%@ page language="C#" title="管理员角色分配" autoeventwireup="true" inherits="User.RoleManager, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理员角色分配</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
  <div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border" align="center">
      <tr align="center">
        <td colspan="2" class="spacingtitle"><b>管理员角色设置</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="width: 100px;"><strong>角色名：</strong></td>
        <td><asp:Label ID="LblRoleName" runat="server" Text="" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="height: 79px; width: 100px;"><strong>角色描述：</strong></td>
        <td><asp:Label ID="LblDescription" runat="server" Text="" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft" style="width: 100px;"> 权限设置：</td>
        <td><asp:CheckBox ID="CheckBox1" runat="server" Text="选择所有" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" />
          <br />
          <br />
          <asp:CheckBox id="CheckBox2" runat="server" Text="内容管理" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
            <asp:ListItem Value="ContentSpec">专题内容管理</asp:ListItem>
            <asp:ListItem Value="ContentRecycle">回收站管理</asp:ListItem>
            <asp:ListItem Value="ComentManage">评论管理</asp:ListItem>
            <asp:ListItem Value="CreateHtmL">生成管理</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox3" runat="server" Text="模型节点管理" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList2" runat="server" RepeatDirection="Horizontal"  RepeatColumns="5">
            <asp:ListItem Value="ModelManage">内容模型管理</asp:ListItem>
            <asp:ListItem Value="ModelEdit">内容模型编辑</asp:ListItem>
            <asp:ListItem Value="ShopModelManage">商品模型管理</asp:ListItem>
            <asp:ListItem Value="ShopModelEdit">商品模型编辑</asp:ListItem>
            <asp:ListItem Value="PageModelManage">黄页模型管理</asp:ListItem>
            <asp:ListItem Value="AddPageModel">添加黄页模型</asp:ListItem>
            <asp:ListItem Value="NodeManage">节点管理</asp:ListItem>
            <asp:ListItem Value="NodeEdit">节点编辑</asp:ListItem>
            <asp:ListItem Value="SpecCateManage">专题类别管理</asp:ListItem>
            <asp:ListItem Value="SpecManage">专题管理</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox4" runat="server" Text="模板标签管理" AutoPostBack="True" OnCheckedChanged="CheckBox4_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList3" runat="server" RepeatDirection="Horizontal"
                            RepeatColumns="5">
            <asp:ListItem Value="TemplateManage">模板管理</asp:ListItem>
            <asp:ListItem Value="TemplateEdit">模板编辑</asp:ListItem>
            <asp:ListItem Value="CssManage">风格管理</asp:ListItem>
            <asp:ListItem Value="CssEdit">风格编辑</asp:ListItem>
            <asp:ListItem Value="LabelManage">标签管理</asp:ListItem>
            <asp:ListItem Value="LabelEdit">标签编辑</asp:ListItem>
            <asp:ListItem Value="LabelImport">标签导入</asp:ListItem>
            <asp:ListItem Value="LabelExport">标签导出</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox5" runat="server" Text="用户管理" AutoPostBack="True" OnCheckedChanged="CheckBox5_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList4" runat="server" RepeatDirection="Horizontal"
                            RepeatColumns="5">
            <asp:ListItem Value="AdminManage">管理员管理</asp:ListItem>
            <asp:ListItem Value="AdminEdit">管理员编辑</asp:ListItem>
            <asp:ListItem Value="RoleMange">角色管理</asp:ListItem>
            <asp:ListItem Value="RoleEdit">角色设置</asp:ListItem>
            <asp:ListItem Value="UserManage">会员管理</asp:ListItem>
            <asp:ListItem Value="UserGroup">会员组管理</asp:ListItem>
            <asp:ListItem Value="UserModel">会员模型管理</asp:ListItem>
            <asp:ListItem Value="UserModelField">会员模型字段管理</asp:ListItem>
            <asp:ListItem Value="UserRoleMange">会员角色管理</asp:ListItem>
            <asp:ListItem Value="UserRoleEdit">会员角色设置</asp:ListItem>
            <asp:ListItem Value="MessManage">短消息发送</asp:ListItem>
            <asp:ListItem Value="EmailManage">邮件列表</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox6" runat="server" Text="商城管理" AutoPostBack="True" OnCheckedChanged="CheckBox6_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList5" runat="server" RepeatDirection="Horizontal"  RepeatColumns="5">
            <asp:ListItem Value="ProductManage">商品管理</asp:ListItem>
            <asp:ListItem Value="StockManage">库存管理</asp:ListItem>
            <asp:ListItem Value="AddStock">添加库存记录</asp:ListItem>
            <asp:ListItem Value="CartManage">购物车</asp:ListItem>
            <asp:ListItem Value="OrderList">订单处理</asp:ListItem>
            <asp:ListItem Value="BankRollList">资金明细</asp:ListItem>
            <asp:ListItem Value="SaleList">销售明细</asp:ListItem>
            <asp:ListItem Value="PayList">支付明细</asp:ListItem>
            <asp:ListItem Value="InvoiceList">开发票明细</asp:ListItem>
            <asp:ListItem Value="TotalSale">总体销售统计</asp:ListItem>
            <asp:ListItem Value="ProductSale">商品销售排名</asp:ListItem>
            <asp:ListItem Value="CategotySale">商品类别销售排名</asp:ListItem>
            <asp:ListItem Value="UserOrders">会员订单排名</asp:ListItem>
            <asp:ListItem Value="UserExpenditure">会员购物排名</asp:ListItem>
            <asp:ListItem Value="DeliverType">商城配置</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox7" runat="server" Text="黄页管理" AutoPostBack="True" OnCheckedChanged="CheckBox7_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList6" runat="server" RepeatDirection="Horizontal"  RepeatColumns="5">
            <asp:ListItem Value="PageModelManage">申请样式管理</asp:ListItem>
            <asp:ListItem Value="PageModel">添加申请样式</asp:ListItem>
            <asp:ListItem Value="PageManage">黄页审核与管理</asp:ListItem>
            <asp:ListItem Value="PageAudit">黄页用户节点管理</asp:ListItem>
            <asp:ListItem Value="PageContent">黄页内容管理</asp:ListItem>
            <asp:ListItem Value="PageStyle">黄页样式管理</asp:ListItem>
            <asp:ListItem Value="AddPageStyle">添加黄页样式</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox8" runat="server" Text="店铺管理" AutoPostBack="True" OnCheckedChanged="CheckBox8_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList7" runat="server" RepeatDirection="Horizontal"  RepeatColumns="5">
            <asp:ListItem Value="ApplyStoreStyle">店铺申请设置</asp:ListItem>
            <asp:ListItem Value="ApplyStoreStyleAdd">添加申请模型</asp:ListItem>
            <asp:ListItem Value="StoreManage">商家店铺管理</asp:ListItem>
            <asp:ListItem Value="StoreExamine">商家店铺审核</asp:ListItem>
            <asp:ListItem Value="StoreStyleManage">商家店铺模板管理</asp:ListItem>
            <asp:ListItem Value="StoreStyleAdd">添加店铺模板</asp:ListItem>
            <asp:ListItem Value="StoreProductManage">商家商品管理</asp:ListItem>
            <asp:ListItem Value="StoreinfoManage">店铺配置</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox9" runat="server" Text="空间管理" AutoPostBack="True" OnCheckedChanged="CheckBox9_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList8" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
            <asp:ListItem Value="ZoneConfig">会员空间配置</asp:ListItem>
            <asp:ListItem Value="ZoneManage">会员空间管理</asp:ListItem>
            <asp:ListItem Value="ZoneApply">审核用户空间</asp:ListItem>
            <asp:ListItem Value="ZoneStyleManage">空间模板管理</asp:ListItem>
            <asp:ListItem Value="ZoneProductManage">虚拟商品管理</asp:ListItem>
            <asp:ListItem Value="ZoneParking">抢车位管理</asp:ListItem>
            <asp:ListItem Value="ZoneMoney">赠送游戏币</asp:ListItem>
            <asp:ListItem Value="ZoneGS">空间族群管理</asp:ListItem>
            <asp:ListItem Value="ZoneInfo">空间信息设置</asp:ListItem>
          </asp:CheckBoxList>
          <br />
          <asp:CheckBox id="CheckBox10" runat="server" Text="其他管理" AutoPostBack="True" OnCheckedChanged="CheckBox10_CheckedChanged"></asp:CheckBox>
          <br />
          <asp:CheckBoxList ID="CheckBoxList9" runat="server" RepeatDirection="Horizontal" RepeatColumns="5">
            <asp:ListItem Value="ADManage">广告管理</asp:ListItem>
            <asp:ListItem Value="StatInfoListReport">访问统计</asp:ListItem>
            <asp:ListItem Value="CorrectManage">纠错管理</asp:ListItem>
            <asp:ListItem Value="LogManage">日志管理</asp:ListItem>
            <asp:ListItem Value="SourceManage">其他管理</asp:ListItem>
            <asp:ListItem Value="SurveyManage">问卷调查和投票管理</asp:ListItem>
            <asp:ListItem Value="GuestCateMana">留言管理</asp:ListItem>
            <asp:ListItem Value="DownServerManage">文件管理</asp:ListItem>
            <asp:ListItem Value="NumManage">选号管理</asp:ListItem>
            <asp:ListItem Value="DictionaryManage">数据字典管理</asp:ListItem>
            <asp:ListItem Value="CustomerService">客服通（Beta）</asp:ListItem>
            <asp:ListItem Value="CustomerService">其他功能</asp:ListItem>
            <asp:ListItem Value="GameManage">游戏管理</asp:ListItem>
          </asp:CheckBoxList></td>
      </tr>
      <tr class="tdbg">
        <td align="center" class="tdbgleft" colspan="2" style="height: 79px">&nbsp;
          <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="保存权限设置" class="C_input"/>
          &nbsp; &nbsp;&nbsp;
          <asp:Button ID="btnBack" runat="server" Text="返回" OnClick="btnBack_Click" class="C_input"/></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>