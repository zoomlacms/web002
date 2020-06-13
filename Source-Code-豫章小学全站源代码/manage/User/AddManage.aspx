<%@ page language="C#" autoeventwireup="true" inherits="ZoomLaManage.WebSite.Manage.User.AddManage, App_Web_tskucmgh" title="编辑管理员" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑管理员</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
    function ShowTabss(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">管理员管理</a> &gt;&gt;编辑管理员</div>
  <table border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
      <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)"> 基本信息 </td>
      <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)"> 角色设置 </td>
      <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)"> 审核权限 </td>
    </tr>
  </table>
  </div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr>
      <td>
    <tbody id="Tabs0">
      <tr>
        <td class="spacingtitle" align="center" colspan="2" dir="ltr" valign="middle"　style="height: 23px"><asp:Label ID="lbTitle" runat="server" Text="添加管理员"></asp:Label>
          &nbsp;</td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 23px;"><strong>管理员名：</strong></td>
        <td style="height: 23px"><asp:TextBox ID="tbdName" runat="server" class="l_input"></asp:TextBox>
          管理员名必须大于等于2个字符并且不能超过20个字符
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="管理员名不能为空" ControlToValidate="tbdName" Display="None"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbdName" ErrorMessage="不能包含特殊字符，如@，#，$，%，^，&，*，(，)，'，?，{，}，[，]，;，:等" ValidationExpression="^[^@#$%^&*()'?{}\[\];:]*$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbdName" ErrorMessage="管理员名必须大于等于2个字符并且不能超过20个字符!" ValidationExpression="\S{2,20}$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 23px;"><strong>真实姓名：</strong></td>
        <td style="height: 23px"><asp:TextBox ID="txtAdminTrueName" runat="server" class="l_input"></asp:TextBox>
          管理员真实姓名必须大于等于2个字符并且不能超过20个字符
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="管理员真实姓名不能为空" ControlToValidate="txtAdminTrueName" Display="None"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtAdminTrueName"  ErrorMessage="不能包含特殊字符，如@，#，$，%，^，&，*，(，)，'，?，{，}，[，]，;，:等" ValidationExpression="^[^@#$%^&*()'?{}\[\];:]*$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAdminTrueName" ErrorMessage="管理员真实姓名必须大于等于2个字符并且不能超过20个字符！" ValidationExpression="\S{2,20}$" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 23px"><strong>新密码：</strong></td>
        <td><asp:TextBox ID="tbPwd" runat="server" TextMode="Password" Width="150px" class="l_input"></asp:TextBox>
          管理员密码字符数要在3-18之间<strong>&nbsp;
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="tbPwd" ErrorMessage="管理员密码字符数要在3-18之间！" ValidationExpression="\S{3,18}" SetFocusOnError="True" Display="None"></asp:RegularExpressionValidator>
          </strong></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 41px;"><strong>确认密码：</strong></td>
        <td><asp:TextBox ID="tbPwd1" runat="server" TextMode="Password" Width="149px" class="l_input"></asp:TextBox>
          确认密码必须与密码保持一致
          <asp:HiddenField ID="HdnPwd" runat="server" />
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPwd" ControlToValidate="tbPwd1" ErrorMessage="密码与初始密码不一致"></asp:CompareValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"style="width: 25%;" valign="middle"><strong>选项设置：</strong></td>
        <td><asp:CheckBox ID="cb1" runat="server" />
          允许多人同时使用此帐号登陆<br/>
          <asp:CheckBox ID="cb2" runat="server" />
          允许管理员修改密码<br/>
          <asp:CheckBox ID="cb3" runat="server" />
          是否锁定</td>
      </tr>
      <tr id="showmenu" runat="server">
        <td class="title" align="left" colspan="2"　style="height: 23px"><asp:CheckBox Checked ID="adduser" AutoPostBack="true" runat="server" 
                    Text="添加同名用户" oncheckedchanged="adduser_CheckedChanged" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" id="Tr1" runat="server" visible="true" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 提示问题： </td>
        <td align="left" class="style2"  colspan="3"><asp:TextBox ID="tbQuestion" runat="server" Width="220px" class="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbQuestion" Display="Dynamic" ErrorMessage="请输入提示问题"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" id="Tr2" runat="server" visible="true" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> 提示问题答案： </td>
        <td align="left" class="style2"  colspan="3"><asp:TextBox ID="tbAnswer" runat="server" Width="220px" class="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbAnswer" ErrorMessage="提示答案不能为空" Display="Dynamic"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" id="viewmail" runat="server" visible="true" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right"> Email： </td>
        <td align="left" class="style2"  colspan="3"><asp:TextBox ID="tbEmail" runat="server" Width="220px" class="l_input"></asp:TextBox >
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email地址不能为空"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Visible="true"></asp:RegularExpressionValidator></td>
      </tr>
    </tbody>
    <tbody id="Tabs1" style="display:none" >
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%"><strong>管理员角色设置：</strong></td>
        <td align="left" valign="top"><asp:CheckBoxList ID="cblRoleList" runat="server" BorderStyle="Solid" DataTextField="RoleName" DataValueField="RoleID"/></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%"><strong>默认节点控制权限：</strong></td>
        <td align="left" valign="top"><asp:DropDownList ID="DropDownList1" runat="server"> </asp:DropDownList></td>
      </tr>
    </tbody>
    <tbody id="Tabs2" style=" display:none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%"><strong>是否前台审核互动：</strong></td>
        <td  valign="top"><asp:CheckBox ID="CheckBox1" Checked runat="server" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%"><strong>发布内容默认状态：</strong></td>
        <td  valign="top"><asp:DropDownList ID="DefaultStart" runat="server">
            <asp:ListItem Value="-99">请选择状态</asp:ListItem>
            <asp:ListItem Value="99" Selected=True>已审</asp:ListItem>
            <asp:ListItem Value="0">待审</asp:ListItem>
            <asp:ListItem Value="-1">退稿</asp:ListItem>
          </asp:DropDownList></td>
      </tr>
    </tbody>
      </td>
      </tr>
    <tr class="tdbg">
      <td class="tdbgleft" colspan="2" style="height: 23px" align="center"><asp:Button ID="btnSubmit" class="C_input" runat="server" OnClick="btnSubmit_Click" Text="保　存" />
        &nbsp;
        <asp:Button ID="btnCancel" class="C_input" runat="server" Text="取 消" OnClientClick="location.href='AdminManage.aspx';return false;" />
        &nbsp;</td>
    </tr>
  </table>
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
</form>
</body>
</html>