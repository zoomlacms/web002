<%@ page language="C#" autoeventwireup="true" inherits="manage_Config_Permissionadd, App_Web_own0w3ym" enableviewstate="False" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加角色</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt;<a href="PermissionInfo.aspx">角色管理</a>&gt;&gt;<%=type %></div>
  <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
    <tr class="gridtitle" align="center" style="height: 25px;">
      <td height="26" colspan="2"><strong> <%=type %></strong></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>角色名称：</strong></td>
      <td width="75%" height="24"><asp:TextBox class="l_input" ID="txtRoleName" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRoleName" ErrorMessage="角色名不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="height: 24px; width: 237px;"><strong>角色说明：</strong></td>
      <td style="height: 24px"><asp:TextBox class="l_input" ID="txtInfo" runat="server" Width="432px" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft"><strong>优先级别：</strong></td>
      <td><asp:TextBox class="l_input" ID="txtPrecedence" runat="server" Width="84px">0</asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrecedence" Display="Dynamic" ErrorMessage="格式不正确!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrecedence" Display="Dynamic" ErrorMessage="不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>是否启用：</strong></td>
      <td height="24"><asp:RadioButtonList ID="txtIsTrue" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">启用</asp:ListItem>
          <asp:ListItem Value="0">停用</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="gridtitle">
      <td height="26" colspan="2" align="center"><strong>权限设置</strong><strong></strong></td>
    </tr>
    <tr class="tdbgleft">
      <td colspan="2" ><table width="100%"   cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td align="center" class="tdbgleft"  style="height: 24px" id="tdtext" runat="server"><strong>选择子站</strong></td>
            <td align="center"  class="tdbgleft" style="height: 24px"><strong>选择节点</strong></td>
            <td align="center"  class="tdbgleft" style="height: 24px"><strong>选择模型表</strong></td>
            <td align="center"  class="tdbgleft" style="height: 24px"><strong>选择模型字段</strong></td>
          </tr>
          <tr>
            <td  align="center" class="tdbg" id="tdlist" runat="server"><asp:ListBox CssClass="tdbg" Height="284px" ID="SiteList" runat="server" Width="216px" SelectionMode="Multiple"></asp:ListBox></td>
            <td  align="center" class="tdbg"><asp:ListBox CssClass="tdbg" Height="284px" ID="Nodelist" runat="server" Width="216px" SelectionMode="Multiple"></asp:ListBox></td>
            <td  align="center" class="tdbg"><asp:ListBox CssClass="tdbg" Height="284px" ID="DataList" runat="server" Width="216px" SelectionMode="Multiple"></asp:ListBox></td>
            <td align="center" class="tdbg"><asp:Label ID="Label2" runat="server"></asp:Label></td>
          </tr>
        </table></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>使用时段浏览：</strong></td>
      <td width="75%" height="24"><asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblTime_SelectedIndexChanged">
          <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
          <asp:ListItem Value="0">否</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" id="trTime" runat="server">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>浏览时间：</strong></td>
      <td width="75%" height="24" ><table cellspacing="1" cellpadding="0" width="100%" border="0">
          <tr class="clearbox">
            <td colspan="2"  class="tdbgleft" ></td>
          </tr>
          <tr>
            <td style="width:60px" align="center"><strong> 月份：</strong></td>
            <td><asp:CheckBoxList ID="cblMonth" runat="server" Width="100%" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">一月</asp:ListItem>
                <asp:ListItem Value="2">二月</asp:ListItem>
                <asp:ListItem Value="3">三月</asp:ListItem>
                <asp:ListItem Value="4">四月</asp:ListItem>
                <asp:ListItem Value="5">五月</asp:ListItem>
                <asp:ListItem Value="6">六月</asp:ListItem>
                <asp:ListItem Value="7">七月</asp:ListItem>
                <asp:ListItem Value="8">八月</asp:ListItem>
                <asp:ListItem Value="9">九月</asp:ListItem>
                <asp:ListItem Value="10">十月</asp:ListItem>
                <asp:ListItem Value="11">十一月</asp:ListItem>
                <asp:ListItem Value="12">十二月</asp:ListItem>
              </asp:CheckBoxList></td>
          </tr>
          <tr class="clearbox">
            <td colspan="2"  class="tdbgleft" ></td>
          </tr>
          <tr>
            <td style="width:60px" align="center"><strong> 日期：</strong></td>
            <td><asp:CheckBoxList ID="cblDay" runat="server" Width="100%" RepeatDirection="Horizontal" RepeatColumns="12">
                <asp:ListItem Value="1">1</asp:ListItem>
                <asp:ListItem Value="2">2</asp:ListItem>
                <asp:ListItem Value="3">3</asp:ListItem>
                <asp:ListItem Value="4">4</asp:ListItem>
                <asp:ListItem Value="5">5</asp:ListItem>
                <asp:ListItem Value="6">6</asp:ListItem>
                <asp:ListItem Value="7">7</asp:ListItem>
                <asp:ListItem Value="8">8</asp:ListItem>
                <asp:ListItem Value="9">9</asp:ListItem>
                <asp:ListItem Value="10">10</asp:ListItem>
                <asp:ListItem Value="11">11</asp:ListItem>
                <asp:ListItem Value="12">12</asp:ListItem>
                <asp:ListItem Value="13">13</asp:ListItem>
                <asp:ListItem Value="14">14</asp:ListItem>
                <asp:ListItem Value="15">15</asp:ListItem>
                <asp:ListItem Value="16">16</asp:ListItem>
                <asp:ListItem Value="17">17</asp:ListItem>
                <asp:ListItem Value="18">18</asp:ListItem>
                <asp:ListItem Value="19">19</asp:ListItem>
                <asp:ListItem Value="20">20</asp:ListItem>
                <asp:ListItem Value="21">21</asp:ListItem>
                <asp:ListItem Value="22">22</asp:ListItem>
                <asp:ListItem Value="23">23</asp:ListItem>
                <asp:ListItem Value="24">24</asp:ListItem>
                <asp:ListItem Value="25">25</asp:ListItem>
                <asp:ListItem Value="26">26</asp:ListItem>
                <asp:ListItem Value="27">27</asp:ListItem>
                <asp:ListItem Value="28">28</asp:ListItem>
                <asp:ListItem Value="29">29</asp:ListItem>
                <asp:ListItem Value="30">30</asp:ListItem>
                <asp:ListItem Value="31">31</asp:ListItem>
              </asp:CheckBoxList></td>
          </tr>
          <tr class="clearbox">
            <td colspan="2"  class="tdbgleft" ></td>
          </tr>
          <tr>
            <td style="width:60px" align="center"><strong> 小时：</strong></td>
            <td><asp:CheckBoxList ID="cblHour" runat="server" Width="100%" RepeatDirection="Horizontal" RepeatColumns="12">
                <asp:ListItem Value="1">1 AM</asp:ListItem>
                <asp:ListItem Value="2">2 AM</asp:ListItem>
                <asp:ListItem Value="3">3 AM</asp:ListItem>
                <asp:ListItem Value="4">4 AM</asp:ListItem>
                <asp:ListItem Value="5">5 AM</asp:ListItem>
                <asp:ListItem Value="6">6 AM</asp:ListItem>
                <asp:ListItem Value="7">7 AM</asp:ListItem>
                <asp:ListItem Value="8">8 AM</asp:ListItem>
                <asp:ListItem Value="9">9 AM</asp:ListItem>
                <asp:ListItem Value="10">10 AM</asp:ListItem>
                <asp:ListItem Value="11">11 AM</asp:ListItem>
                <asp:ListItem Value="12">12 AM</asp:ListItem>
                <asp:ListItem Value="13">13 PM</asp:ListItem>
                <asp:ListItem Value="14">14 PM</asp:ListItem>
                <asp:ListItem Value="15">15 PM</asp:ListItem>
                <asp:ListItem Value="16">16 PM</asp:ListItem>
                <asp:ListItem Value="17">17 PM</asp:ListItem>
                <asp:ListItem Value="18">18 PM</asp:ListItem>
                <asp:ListItem Value="19">19 PM</asp:ListItem>
                <asp:ListItem Value="20">20 PM</asp:ListItem>
                <asp:ListItem Value="21">21 PM</asp:ListItem>
                <asp:ListItem Value="22">22 PM</asp:ListItem>
                <asp:ListItem Value="23">23 PM</asp:ListItem>
                <asp:ListItem Value="24">24 PM</asp:ListItem>
              </asp:CheckBoxList></td>
          </tr>
          <tr class="clearbox">
            <td colspan="2"  class="tdbgleft" ></td>
          </tr>
          <tr>
            <td style="width:60px" align="center"><strong> 星期：</strong></td>
            <td><asp:CheckBoxList ID="cblWeeks" runat="server" Width="100%" RepeatDirection="Horizontal">
                <asp:ListItem Value="1">星期一</asp:ListItem>
                <asp:ListItem Value="2">星期二</asp:ListItem>
                <asp:ListItem Value="3">星期三</asp:ListItem>
                <asp:ListItem Value="4">星期四</asp:ListItem>
                <asp:ListItem Value="5">星期五</asp:ListItem>
                <asp:ListItem Value="6">星期六</asp:ListItem>
                <asp:ListItem Value="7">星期日</asp:ListItem>
              </asp:CheckBoxList></td>
          </tr>
          <tr class="clearbox">
            <td colspan="2"  class="tdbgleft" ></td>
          </tr>
        </table></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>允许内容浏览：</strong></td>
      <td width="75%" height="24"><asp:RadioButtonList ID="ViewContent" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td class="tdbgleft" style="height: 24px; width: 237px;"><strong>允许列表浏览：</strong></td>
      <td style="height: 24px"><asp:RadioButtonList ID="ListContent" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>允许新增发布：</strong></td>
      <td height="24"><asp:RadioButtonList ID="AddContent" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>允许编辑修改：</strong></td>
      <td height="24"><asp:RadioButtonList ID="ModefiyContent" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>允许删除内容：</strong></td>
      <td height="24"><asp:RadioButtonList ID="DeleteContent" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td height="24" class="tdbgleft" style="width: 237px"><strong>允许评论权限：</strong></td>
      <td height="24"><asp:RadioButtonList ID="AddComm" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Selected="True" Value="1">开放</asp:ListItem>
          <asp:ListItem Value="0">关闭</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg">
      <td height="26" colspan="2" class="tdbgleft" align="center"><asp:HiddenField ID="txtID" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="添加角色" OnClick="Button1_Click" class="C_input"/>
        <asp:Button ID="Button2" runat="server" Text="返回列表" OnClientClick="location.href='PermissionInfo.aspx';return false;" class="C_input"/></td>
    </tr>
  </table>
</form>
</body>
</html>