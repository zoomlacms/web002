<%@ page language="C#" autoeventwireup="true" inherits="User.AddUser, App_Web_own0w3ym" title="添加会员" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加新会员</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
<div class="r_navigation">后台管理 &gt;&gt; 用户管理 &gt;&gt; 会员管理 &gt;&gt; <a href="UserManage.aspx">会员管理</a> &gt;&gt; 添加会员 </div>
  <div class="r_navigation">
    <table width="100%" border="0" cellpadding="0" cellspacing="1">
      <tr>
        <td colspan="4" class="spacingtitle" align="center"> 添加会员 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="220" align="right" class="tdbgleft" style="width: 15%; height: 22px;"> 用户名： </td>
        <td align="left" class="style3" colspan="3"><asp:TextBox ID="tbUserName" runat="server" TabIndex="1" CssClass="l_input" ></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbUserName" ErrorMessage="用户名不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="ValgTextMaxLength" 
                        ControlToValidate="tbUserName" ValidationExpression="^[a-zA-Z0-9]{4,20}$" 
                        SetFocusOnError="false" Display="Dynamic" runat="server"></asp:RegularExpressionValidator>
          <div id="check" runat="server"></div>
          <%--<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="tbUserName" ErrorMessage="用户名已存在" OnServerValidate="CustomValidator1_ServerValidate" ></asp:CustomValidator>--%></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%; height: 22px;" align="right"> 用户密码： </td>
        <td align="left" class="style4" colspan="3"><asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
              <asp:RadioButtonList ID="rbCheck" runat="server" RepeatDirection="Horizontal"  onselectedindexchanged="rbCheck_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem Value="1">随机生成密码</asp:ListItem>
                <asp:ListItem Value="2" Selected="True">用户自设密码</asp:ListItem>
              </asp:RadioButtonList>
              <asp:TextBox ID="txtpassword" runat="server" CssClass="l_input"></asp:TextBox>
            </ContentTemplate>
          </asp:UpdatePanel>
          <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPwd" ErrorMessage="密码不能为空" Display="Dynamic"></asp:RequiredFieldValidator>--%></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%;" align="right"> Email： </td>
        <td align="left" class="style2" ><asp:TextBox ID="tbEmail" runat="server" CssClass="l_input"></asp:TextBox >
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Email地址不能为空"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="格式不正确" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" Visible="true"></asp:RegularExpressionValidator></td>
        <td class="tdbgleft" style="width: 15%;" align="right"> 呢称： </td>
        <td align="left" ><asp:TextBox ID="txtHoneyName" runat="server" CssClass="l_input"></asp:TextBox >
          <span style="color: red">*</span></td>
      </tr>
    </table>
    <table width="100%" border="0" class="tdbg" cellpadding="0" cellspacing="1">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%;" align="right"> 提示问题： </td>
        <td style="width:514px;" align="left" class="style4"><asp:TextBox ID="tbQuestion" runat="server" CssClass="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbQuestion" Display="Dynamic" ErrorMessage="请输入提示问题"></asp:RequiredFieldValidator></td>
        <td width="224" align="right" class="tdbgleft" style="width: 15%; height: 22px"> VIP类型： </td>
        <td width="515" align="left" style="width: 35%; height: 22px"><asp:DropDownList ID="VIPUser" runat="server">
            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
            <asp:ListItem Value="1">是</asp:ListItem>
          </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 提示问题答案： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbAnswer" runat="server" CssClass="l_input"></asp:TextBox>
          <span style="color: red">*</span>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbAnswer" ErrorMessage="提示答案不能为空" Display="Dynamic"></asp:RequiredFieldValidator></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 所属会员组： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:DropDownList ID="DDLGroup" runat="server"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 真实姓名： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbTrueName" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 性别： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:RadioButtonList ID="tbUserSex" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="1">男</asp:ListItem>
            <asp:ListItem Value="0">女</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 出生日期： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbBirthday" runat="server" onblur="setday(this);" onclick="setday(this);" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 办公电话： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbOfficePhone" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 家庭电话： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbHomePhone" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 传真： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFax" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 手机号码： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbMobile" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 小灵通： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbPHS" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 联系地址： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbAddress" runat="server" Columns="40" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 邮政编码： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbZipCode" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 身份证号码： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbIDCard" runat="server" Columns="40" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 个人主页： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbHomepage" runat="server" Columns="40" CssClass="l_input">http://</asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> QQ号码： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbQQ" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> ICQ号码： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbICQ" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> MSN账号： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbMSN" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 雅虎通账号： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbYahoo" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> UC账号： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbUC" runat="server" CssClass="l_input"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 26px;" align="right"> 头像地址： </td>
        <td style="width: 35%; height: 26px;" align="left"><asp:TextBox ID="tbUserFace" runat="server" CssClass="l_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像宽度： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFaceWidth" runat="server" CssClass="l_input">16</asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 头像高度： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbFaceHeight" runat="server" CssClass="l_input">16</asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" >
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 签名档： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:TextBox ID="tbSign"  runat="server" CssClass="x_input" TextMode="MultiLine" Width="300" Height="60"></asp:TextBox></td>
        <td class="tdbgleft" style="width: 15%; height: 22px" align="right"> 隐私设定： </td>
        <td style="width: 35%; height: 22px" align="left"><asp:RadioButtonList ID="tbPrivacy" runat="server">
            <asp:ListItem Selected="True" Value="0">公开信息</asp:ListItem>
            <asp:ListItem Value="1">只对好友公开</asp:ListItem>
            <asp:ListItem Value="2">完全保密</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
      <tr class="tdbg">
        <td style="height: 21px" colspan="4" align="center"><asp:Button ID="btnSave" runat="server" CssClass="C_input" Text="保存会员信息" Width="100px" OnClick="btnSave_Click" TabIndex="12" />
          &nbsp;&nbsp;
          <asp:Button ID="btnCancel" CssClass="C_input" runat="server" Text="取　消" Width="70px" OnClientClick="location.href='UserManage.aspx';return false;" TabIndex="13" /></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>