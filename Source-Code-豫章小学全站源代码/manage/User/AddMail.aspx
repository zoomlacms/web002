<%@ page language="C#" autoeventwireup="true" inherits="manage_Qmail_AddMail, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮件发送</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt; 附件管理&gt;&gt; 邮件订阅 &gt;&gt;邮件发送</div>
  <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
      <tr >
        <td align="center" colspan="2" class="spacingtitle"><b>邮件发送</b></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td width="15%" align="right" class="tdbgleft"><strong>收件人：</strong></td>
        <td><table>
            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <td><table>
                  <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td> 来源：
                      <asp:DropDownList  ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        <asp:ListItem>按全部</asp:ListItem>
                        <asp:ListItem>按字母查询</asp:ListItem>
                        <asp:ListItem>按数字查询</asp:ListItem>
                        <asp:ListItem>按加入日期查询</asp:ListItem>
                        <asp:ListItem>按最后发送时间查询</asp:ListItem>
                        <asp:ListItem>按邮箱后缀查询</asp:ListItem>
                        <asp:ListItem>按订阅类型</asp:ListItem>
                      </asp:DropDownList></td>
                    <td align="left"><asp:DropDownList ID="DropDownList3" runat="server" Visible="false" AutoPostBack="True"
								OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"> </asp:DropDownList></td>
                    <td align="left"><asp:TextBox ID="txtType" runat="server" class="l_input" ></asp:TextBox></td>
                    <td align="left"><asp:Panel ID="Panel1" Visible="false" runat="server" Width="300px" Height="20px">
                        <asp:TextBox ID="txtStartTime" onfocus="setday(this)" runat="server" class="l_input"></asp:TextBox>
                        ~
                        <asp:TextBox ID="txtEndTime" onfocus="setday(this)" runat="server" class="l_input"></asp:TextBox>
                        &nbsp;<br />
                        &nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtStartTime" ErrorMessage="请输入正确的日期" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtEndTime" ErrorMessage="请输入正确的日期" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                        </asp:Panel></td>
                    <td align="left" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CausesValidation="false"  Text="查 询" /></td>
                  </tr>
                </table></td>
            </tr>
            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <td colspan="5"><asp:TextBox ID="txtSend" TextMode="MultiLine" Width="476px" Rows="10" runat="server"	Enabled="False"  class="x_input"></asp:TextBox></td>
            </tr>
            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <td colspan="5"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSend" ErrorMessage="没有收件人信息。"></asp:RequiredFieldValidator></td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>邮件主题：</strong></td>
        <td><asp:TextBox ID="TxtSubject" runat="server" Width="400px" class="l_input"></asp:TextBox>
          <asp:RequiredFieldValidator ID="ValrSubject" runat="server" ControlToValidate="TxtSubject"
					Display="None" ErrorMessage="邮件主题不能为空！"></asp:RequiredFieldValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>邮件内容：</strong></td>
        <td><textarea runat="server" id="HiddenField1" style="width:100%;height:300px;visibility:hidden;" ></textarea>
          <script type="text/javascript">
			KE.show({
				id: 'HiddenField1'
			});
		</script>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft" width="15%"><strong>签  名：</strong></td>
        <td><asp:DropDownList ID="ddlMailIdiograph" runat="server" DataTextField="Name" DataValueField ="Context"> </asp:DropDownList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td align="right" class="tdbgleft"><strong>发送方式：</strong></td>
        <td><table>
            <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
              <td><asp:RadioButtonList ID="rblSendType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblSendType_SelectedIndexChanged">
                  <asp:ListItem Selected="True">立即发送</asp:ListItem>
                  <asp:ListItem>定时发送</asp:ListItem>
                </asp:RadioButtonList></td>
              <td id="td1" runat ="server" visible="false"><asp:TextBox ID="txtSendTime" onfocus="setday(this)" Width="60px" runat="server"></asp:TextBox>
                <asp:DropDownList ID="ddlHour" runat="server"> </asp:DropDownList>
                时
                <asp:DropDownList ID="ddlMinute" runat="server"> </asp:DropDownList>
                分</td>
            </tr>
          </table></td>
      </tr >
      <tr class="tdbgbottom">
        <td colspan="2"><asp:Button ID="BtnSend" runat="server" Text="发送" Width="60px" OnClick="BtnSend_Click" Height="20px" class="C_input" />
          &nbsp;&nbsp; &nbsp;
          <input id="Reset1" type="reset" value=" 清除 " width="60px" class="C_input"  /></td>
      </tr>
    </table>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"  ShowSummary="False" />
  </div>
</form>
</body>
</html>