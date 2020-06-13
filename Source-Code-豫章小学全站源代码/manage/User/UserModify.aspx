<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.User.UserPassModify, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改用户信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2"<%=tabTitles %>);
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2"<%=tabs %>);
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
<div class="r_navigation">后台管理&gt;&gt;用户管理&gt;&gt; 会员管理&gt;&gt;<a href="UserManage.aspx">会员列表</a>&gt;&gt;修改会员信息</div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border">
    <tr align="center">
      <td colspan="4" class="spacingtitle"><strong>修改
        <asp:Label ID="LblUserName" runat="server" Text="Label"></asp:Label>
        的信息</strong></td>
    </tr>
    <tr><td colspan="4">
      <table>
        <tr align="center">
          <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)"> 基本信息 </td>
          <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)"> 联系信息 </td>
          <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)"> 其他信息 </td>
          </td>
        <asp:Literal ID="models" runat="server"></asp:Literal>
          <td>
          <td>&nbsp;</td>
        </tr>
      </table>
        </td>
    </tr>
    <tbody id="Tabs0">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 用户名： </td>
        <td style="height: 25px;" align="left"><asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label></td>
        <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 用户昵称： </td>
        <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:TextBox ID="txtHoneyName" runat="server" class="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 新密码： </td>
        <td style="width: 85%; height: 25px;" colspan="3" align="left"><asp:TextBox ID="tbNewPwd" runat="server" TextMode="Password" class="l_input"></asp:TextBox>
          如果不修改密码，请不要输入新密码和确认密码 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%; height: 25px;" align="right"> 新密码确认： </td>
        <td align="left"><asp:TextBox ID="tbConPwd" runat="server" TextMode="Password" class="l_input"></asp:TextBox>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="新密码和确认密码必须一样"
                ControlToValidate="tbConPwd" ControlToCompare="tbNewPwd"></asp:CompareValidator></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> VIP类型： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:DropDownList ID="VIPUser" runat="server">
            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
            <asp:ListItem Value="1">是</asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%;" align="right"> Email： </td>
        <td align="left"><asp:TextBox ID="tbEmail" runat="server" class="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail"
                Display="Dynamic" ErrorMessage="Email地址不能为空"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail"
                Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                Visible="False"></asp:RegularExpressionValidator></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 所属会员组： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:DropDownList ID="DDLGroup" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%;" align="right"> 提示问题： </td>
        <td align="left"><asp:TextBox ID="tbQuestion" runat="server" class="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 提示问题答案： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbAnswer" runat="server" class="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbAnswer"
                ErrorMessage="提示答案不能为空"></asp:RequiredFieldValidator></td>
      </tr>
    </tbody>
      <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
    
      <td colspan="4">
    
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td>
      <tbody id="Tabs2" style="display:none">
        <tr class="tdbg">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 剩余资金： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtMoney" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right">用户信誉值</td>
          <td><asp:TextBox ID="txtUserCrite" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 点券： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtUserPoint" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 用户积分： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtPoint" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 虚拟币： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtPurm" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"></td>
          <td style="width: 35%; height: 22px" align="left"></td>
        </tr>
        <tr>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 商铺认证有效期截止： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtCerificateDeadLine" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 有效期截止时间： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtDeadLine" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 卖家积分： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtboffExp" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 消费积分： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="txtConsumeExp" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr>
          <td><asp:Literal ID="lblHtml" runat="server"></asp:Literal></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 签名档： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbSign" runat="server" class="l_input" TextMode="MultiLine" Width="253px"
                            Height="60"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 隐私设定： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:RadioButtonList ID="tbPrivacy" runat="server">
              <asp:ListItem Selected="True" Value="0">公开信息</asp:ListItem>
              <asp:ListItem Value="1">只对好友公开</asp:ListItem>
              <asp:ListItem Value="2">完全保密</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
      </tbody>
      <tbody id="Tabs1" style="display:none">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 真实姓名： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbTrueName" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 性别： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
              <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
              <asp:ListItem Value="0">女</asp:ListItem>
            </asp:RadioButtonList></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 出生日期： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);"
                            class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 办公电话： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbOfficePhone" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 家庭电话： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbHomePhone" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 传真： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFax" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 手机号码： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbMobile" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 小灵通： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbPHS" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 联系地址： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbAddress" runat="server" Columns="40" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 邮政编码： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbZipCode" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 身份证号码： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbIDCard" runat="server" Columns="40" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 个人主页： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbHomepage" runat="server" Columns="40" class="l_input">http://</asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> QQ号码： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbQQ" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> ICQ号码： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbICQ" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> MSN账号： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbMSN" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 雅虎通账号： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbYahoo" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> UC账号： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbUC" runat="server" class="l_input"></asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 26px;" align="right"> 头像地址： </td>
          <td style="width: 35%; height: 26px;" align="left"><asp:TextBox ID="tbUserFace" runat="server" class="l_input"></asp:TextBox></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像宽度： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFaceWidth" runat="server" class="l_input">16</asp:TextBox></td>
          <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像高度： </td>
          <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFaceHeight" runat="server" class="l_input">16</asp:TextBox></td>
        </tr>
      </tbody>
        </td>
        </tr>
      
      <asp:Literal ID="ltlTab" runat="server"></asp:Literal>
    </table>
      </td>
    
      </tr>
    
    <tr class="tdbgbottom">
      <td colspan="4"><asp:HiddenField ID="HdnUserID" runat="server" />
        <asp:Button ID="BtnSubmit" runat="server" Text="修改" OnClick="BtnSubmit_Click" class="C_input" />
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="取消" class="C_input" OnClick="Button1_Click" CausesValidation="False" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" class="C_input" /></td>
    </tr>
  </table>
</form>
</body>
</html>