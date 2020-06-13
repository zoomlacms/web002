<%@ page language="C#" autoeventwireup="true" inherits="manage_Boss_BossInfo, App_Web_akeaiuth" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
 <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<html>
<head id="Head1" runat="server">
    <title></title>

    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
            line-height: 120%;
            width: 21%;
        }
        .style2
        {
            background: #e0f7e5;
            line-height: 120%;
            height: 24px;
            width: 21%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="HiddenNode" runat="server" />
         <asp:HiddenField ID="HiddenPnode" runat="server" />
&nbsp;<table width="100%" border="0" cellspacing="1" cellpadding="0" class="r_navigation">
  <tr>
                  <td height="24" align="center" class="style1" colspan="2"> 你的上级代理商信息  </td>
                 
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">代理商名称:</td>
                  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">联系电话：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Label8" runat="server" Text=""></asp:Label></td>
                </tr>
          <tr>
                  <td height="24" align="center" class="style1" colspan="2"> 代理商基本信息  </td>
                 
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">代理商名称:</td>
                  <td width="72%" height="24" align="left">&nbsp;<asp:Label ID="tx_cname" runat="server" Text=""></asp:Label></td>
                </tr>
            
                <tr>
                  <td height="24" align="center" class="style1" colspan="2">总 业 绩  ：</td>
                </tr>
                <tr>
                  <td align="right" class="style1">收益金额：</td>
                  <td align="left">&nbsp;<asp:Label ID="tx_money" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">定单金额：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="tx_zong" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">定单数量：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="tx_num" runat="server" Text=""></asp:Label></td>
                </tr>
                 <tr>
                  <td align="center" class="style1" colspan="2">招  商  费 ：</td>
                </tr>
                <tr>
                  <td align="right" class="style2">收益金额：</td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">直接招商金额：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td height="24" align="right" class="style1">间接招商金额：</td>
                  <td height="24" align="left">&nbsp;<asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
                </tr>
                 
                    <tr>
                  <td height="24" align="center" class="style1" colspan="2">下 级 数 量 </td>
                </tr>

   <tr>
                  <td align="right" class="style2">服务中心：</td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="fhwunum" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                  <td align="right" class="style2">E店: </td>
                  <td align="left" style="height: 24px">&nbsp;<asp:Label ID="Enum" runat="server" Text=""></asp:Label></td>
                </tr>
              
              </table>
                <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto; margin-top:8px;">
      <tr align="center">
        <td width="10%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></td>
        <td width="15%" class="title">卡号</td>
        <td width="20%" class="title">发放用户</td>
        <td width="10%" class="title">使用用户</td>     
        <td width="20%" class="title"> 卡片状态</td>  
        <td width="10%" class="title"> 操作</td>
      </tr>
        <asp:Repeater ID="gvCard" runat="server">       
        <ItemTemplate>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td height="22" align="center"><input name="Item" type="checkbox" value='<%# Eval("Card_ID")%>'/></td>
        <td height="22" align="center"><%# Eval("CardNum")%></td>
    
        <td height="22" align="left"> <%#GetUserName(DataBinder.Eval(Container.DataItem ,"PutUserID").ToString()) %> </td>
        <td height="22" align="center"><%#GetUserName(DataBinder.Eval(Container.DataItem ,"AssociateUserID").ToString()) %></td>
        <td height="22" align="center"><%#GetState(DataBinder.Eval(Container.DataItem, "CardState").ToString())%>
        <td height="22" align="center"><a href="CardView.aspx?id=<%#Eval("Card_ID") %>" >查看</a></td>
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
    </div>
    </form>
</body>
</html>
