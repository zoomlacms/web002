<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="ZoomLa.WebSite.Manage.Config.UserConfig, App_Web_ahh1qfsx" validaterequest="false" enableviewstatemac="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户参数</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../js/jquery.js"></script>
<script language="javascript">
    function show2(dd) {
        for (var i = 1; i <= 5; i++) {
            if (i == dd)
                document.getElementById(dd).style.display = "block";
            else
                document.getElementById(i).style.display = "none";
        }
    }

    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4");
    function show1(SID) {

        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "block";
            tID = SID;
        }

       
    }

    function checkIP() {
        var ip1 = document.getElementById("txtBeginIP").value;
        var ip2 = document.getElementById("txtEndIP").value;
        if (ip1 != "" || ip2 != "") {
            var re = /^((\d)|(([1-9])\d)|(1\d\d)|(2(([0-4]\d)|5([0-5]))))\.((\d)|(([1-9])\d)|(1\d\d)|(2(([0-4]\d)|5([0-5]))))\.((\d)|(([1-9])\d)|(1\d\d)|(2(([0-4]\d)|5([0-5]))))\.((\d)|(([1-9])\d)|(1\d\d)|(2(([0-4]\d)|5([0-5]))))$/;
            var message = document.getElementById("lblMessage");
            if (!re.test(ip1) || !re.test(ip2)) {
                alert("输入IP地址格式不正确，请从新输入！")
                return;
            }
        }
    }

    window.onload = function PunchCha() {
        var obj = document.getElementById("selPunch").value;
        if (obj == "0") {
            document.getElementById("Tr7").style.display = "none";
        } else {
            document.getElementById("Tr7").style.display = "";
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div class="r_navigation"> 后台管理&gt;&gt;系统配置 &gt;&gt;会员参数配置</div>
  <div>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td id="TabTitle0" class="titlemouseover" onclick="show1(0)">基本参数</td>
        <td id="TabTitle1" class="tabtitle" onclick="show1(1)">积分设置</td>
        <td id="TabTitle2" class="tabtitle" onclick="show1(2)">期限金额</td>
        <td id="TabTitle3" class="tabtitle" onclick="show1(3)">点券设置</td>
        <td id="TabTitle4" class="tabtitle" onclick="show1(4)">IP限制</td>
      </tr>
    </table>
  </div>
  <table width="99%" cellspacing="1" cellpadding="0" class="border">
    <tbody id="Tabs0">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启会员注册：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1">是</asp:ListItem>
            <asp:ListItem Value="0">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>会员注册协议：</strong></td>
        <td><asp:RadioButtonList ID="Agreement" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="3" Selected="True">倒计时式</asp:ListItem>
            <asp:ListItem Value="2">选择勾选</asp:ListItem>
            <asp:ListItem Value="1">常规注册</asp:ListItem>
            <asp:ListItem Value="0">不显示</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>允许用户名注册规则：</strong></td>
        <td style="width: 500px"><asp:CheckBoxList ID="RegRule" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Value="1">不允许纯数字</asp:ListItem>
            <asp:ListItem Value="2">不允许纯英文</asp:ListItem>
            <asp:ListItem Value="3">不允许带有中文</asp:ListItem>
          </asp:CheckBoxList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>会员注册默认状态：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>验证</asp:ListItem>
            <asp:ListItem>未验证</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启支付宝登陆：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="rdoAlipayCheck" runat="server" 
					RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启注册Email验证：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="rdoEmailCheck" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启Email注册登录：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启注册成功邮件提醒：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="radioEmail" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否开启用户注册管理员验证：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否允许一个Email注册多个会员：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>会员注册时是否启用验证码功能：<br />
          </strong>启用验证码功能可以在一定程度上防止暴力营销软件或注册机自动注册。 </td>
        <td style="width: 500px; height: 23px;"><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>会员登陆是否启用验证码功能：<br />
          </strong>启用验证码功能可以在一定程度上防止会员密码被暴力破解 </td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>是否允许多人同时使用同一会员帐号登陆：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>新会员注册时用户名最少字符数：</strong></td>
        <td style="width: 500px"><asp:TextBox ID="TextBox6" runat="server" class="l_input"></asp:TextBox>
          个字符
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6"
					Display="Dynamic" ErrorMessage="最少字符数不能为空"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox6"
					ErrorMessage="最少字符数必须大于等于2" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="2"
					Display="Dynamic" SetFocusOnError="true"></asp:CompareValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>新会员注册时用户名最多字符数：</strong></td>
        <td style="width: 500px"><asp:TextBox ID="TextBox7" runat="server" class="l_input"></asp:TextBox>
          个字符
          <asp:RequiredFieldValidator ID="ReqTxtUserNameMax" runat="server" Display="Dynamic"
					ErrorMessage="最多字符数不能为空" ControlToValidate="TextBox7" />
          <asp:CompareValidator ID="CValTxtUserNameMax" runat="server" ControlToValidate="TextBox7"
					ControlToCompare="TextBox6" Type="Integer" Operator="GreaterThanEqual" ErrorMessage="最多字符数必须大于等于最小字符数"
					Display="Dynamic" SetFocusOnError="true" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>禁止注册的用户名：<br />
          </strong>在右边指定的用户名将被禁止注册，每个用户名请用“|”符号分隔 </td>
        <td style="width: 500px"><asp:TextBox ID="TextBox8" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
					class="x_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>会员注册时的必填、选填项目：</strong><br />
          在会员注册时，可根据需要设定注册的必填项、选填项。<br />
          将“可用项”中内容添加到“必填项”或者“选填项”的列表中即可设定。<br />
          用户名、 密码、 确认密码、 密码问题、 问题答案、 Email为系统强制必填信息。<br />
          <span style="color: Blue">注：若修改此项，前台正在注册的表单页面将失效</span></td>
        <td style="width: 60%"><table>
            <tr>
              <td><asp:HiddenField ID="HdnRegFields_MustFill" runat="server" />
                <asp:HiddenField ID="HdnRegFields_SelectFill" runat="server" />
                可用项：<br />
                <asp:ListBox ID="LitRegFields" SelectionMode="Multiple" Width="130" Height="285"
								runat="server" class="x_input" /></td>
              <td><table>
                  <tr>
                    <td><input id="Button4" value=" >> " onclick="AddFields_MustFill()" title="添加所选项" type="button" />
                      <br />
                      <input id="Button2" value=" << " onclick="RemoveFields_MustFill()" title="移除所选项"
											type="button" /></td>
                    <td> 必填项：<br />
                      <asp:ListBox ID="LitRegFields_MustFill" SelectionMode="Multiple" Width="130" Height="130"
											runat="server" class="x_input" /></td>
                    <td><input id="Button5" value=" ︽ " onclick="UpFields_MustFill()" title="上移" type="button" />
                      <br />
                      <input id="Button6" value=" ︾ " onclick="DownFields_MustFill()" title="下移" type="button" />
                      <br />
                      <br />
                      <br /></td>
                  </tr>
                  <tr>
                    <td><input id="Button3" value=" >> " onclick="AddFields_SelectFill()" title="添加所选项" type="button" />
                      <br />
                      <input id="Button7" value=" << " onclick="RemoveFields_SelectFill()" title="移除所选项"
											type="button" /></td>
                    <td> 选填项：<br />
                      <asp:ListBox ID="LitRegFields_SelectFill" SelectionMode="Multiple" Width="130" Height="130"
											class="x_input" runat="server" /></td>
                    <td><input id="Button8" value=" ︽ " onclick="UpFields_SelectFill()" title="上移" type="button" />
                      <br />
                      <input id="Button9" value=" ︾ " onclick="DownFields_SelectFill()" title="下移" type="button" />
                      <br />
                      <br />
                      <br /></td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>新会员注册时发送的验证邮件内容：<br />
          </strong>邮件内容支持HTML，邮件内容中可用标签说明如下：<br />
          <span>{$CheckNum}</span>：验证码<br />
          <span>{$CheckUrl}</span>：验证地址 </td>
        <td style="width: 500px"><asp:TextBox ID="TextBox12" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
					class="x_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>注册成功时发送的提醒邮件内容：<br />
          </strong>邮件内容支持HTML，邮件内容中可用标签说明如下：<br />
          <span>{$UserName}</span>：用户名<br />
          <span>{$UserPwd}</span>：密码 </td>
        <td style="width: 500px"><asp:TextBox ID="txtEmailTell" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
					class="x_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>使用邮箱注册自动验证邮件内容：<br />
          </strong>邮件内容支持HTML，邮件内容中可用标签说明如下：<br />
          <span>{$EMail}</span>：邮箱地址<br />
          <span>{$SiteName}</span>：网站名称<br />
          <span>{$SiteUrl}</span>：网站地址<br />
          <span>{$ClickUrl}</span>：链接地址 </td>
        <td style="width: 500px"><asp:TextBox ID="txtEmailRegInfo" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
					class="x_input"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>使用邮箱找回密码邮件内容：<br />
          </strong>邮件内容支持HTML，邮件内容中可用标签说明如下：<br />
          <span>{$UserName}</span>：会员名称<br />
          <span>{$SiteName}</span>：网站名称<br />
          <span>{$SiteUrl}</span>：网站地址<br />
          <span>{$Password}</span>：会员密码 </td>
        <td style="width: 500px"><asp:TextBox ID="txtGetPassword" runat="server" Rows="6" TextMode="MultiLine" Width="300px"
					class="x_input"></asp:TextBox></td>
      </tr>
    </tbody>
    <tbody id="Tabs1" style="display: none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PresentExpPerLogin">
        <td class="tdbgleft"><strong>会员每登录一次奖励的积分：</strong><br />
          一天只计算一次 </td>
        <td><asp:TextBox ID="TxtPresentExpPerLogin" Text="0" runat="server" Columns="5" class="l_input" />
          分积分 </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="Tr1">
        <td class="tdbgleft"><strong>发布一条新内容奖励积分：</strong></td>
        <td><asp:TextBox runat="server" ID="tb_InformationRule" class="l_input"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="rev_2" ValidationExpression="^[1-9]\d*|0$"
					ControlToValidate="tb_InformationRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="Tr2">
        <td class="tdbgleft"><strong>发布一条评论奖励积分：</strong></td>
        <td><asp:TextBox runat="server" ID="tb_CommentRule" class="l_input"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[1-9]\d*|0$"
					ControlToValidate="tb_CommentRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="Tr3">
        <td class="tdbgleft"><strong>发布的内容被推荐奖励积分：</strong></td>
        <td><asp:TextBox runat="server" ID="tb_RecommandRule" class="l_input"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="rev_3" ValidationExpression="^[1-9]\d*|0$"
					ControlToValidate="tb_RecommandRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PresentExp">
        <td class="tdbgleft"><strong>新会员注册时赠送的积分：</strong></td>
        <td><asp:TextBox ID="TxtPresentExp" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          分积分
          <asp:RegularExpressionValidator ID="ValgPresentExp" runat="server" ControlToValidate="TxtPresentExp"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PresentMoney">
        <td class="tdbgleft"><strong>新会员注册时赠送的金钱：</strong></td>
        <td><asp:TextBox ID="TxtPresentMoney" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          元钱
          <asp:RegularExpressionValidator ID="ValgTxtPresentMoney" runat="server" ControlToValidate="TxtPresentMoney"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PresentValidNum">
        <td class="tdbgleft"><strong>新会员注册时赠送的有效期：</strong></td>
        <td><asp:TextBox ID="TxtPresentValidNum" Text="0" runat="server" Columns="5" class="l_input" />
          <asp:DropDownList
					ID="DropPresentValidUnit" runat="server" class="l_input">
            <asp:ListItem Value="1">天</asp:ListItem>
            <asp:ListItem Value="2">月</asp:ListItem>
            <asp:ListItem Value="3">年</asp:ListItem>
          </asp:DropDownList>
          （为－1表示无限期） </td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>创建群组所需要的积分：</strong></td>
        <td><asp:TextBox ID="Txtintegral" Text="0" runat="server" Columns="5" class="l_input" /></td>
      </tr>
    </tbody>
    <tbody id="Tabs2" style="display: none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"><strong>会员找回密码的方式：</strong></td>
        <td style="width: 500px"><asp:RadioButtonList ID="RadioButtonList8" runat="server">
            <asp:ListItem>回答正确密码答案后，直接在页面修改密码</asp:ListItem>
            <asp:ListItem>回答正确密码答案后，发送邮件到会员邮箱（必须在网站信息配置,配置邮件服务器与会员注册时填写了邮件地址！）</asp:ListItem>
            <asp:ListItem>系统自动生成密码,发送邮件到会员邮箱（必须在网站信息配置,配置邮件服务器与会员注册时填写了邮件地址！）</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="MoneyExchangePoint">
        <td class="tdbgleft"><strong>会员的资金与点券的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="TxtMoneyExchangePoint" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          元钱可兑换 <strong>
          <asp:TextBox ID="TxtCMoneyExchangePoint" Text="1" runat="server" Columns="7" MaxLength="7"
						class="l_input" />
          </strong> 点券
          <asp:RegularExpressionValidator ID="ValeMoneyExchangePoint" runat="server" ControlToValidate="TxtMoneyExchangePoint"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValeCMoneyExchangePoint" runat="server" ControlToValidate="TxtCMoneyExchangePoint"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="MoneyExchangeValidDay">
        <td class="tdbgleft"><strong>会员的资金与有效期的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="TxtMoneyExchangeValidDay" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          元钱可兑换 <strong>
          <asp:TextBox ID="TxtCMoneyExchangeValidDay" Text="1" runat="server" Columns="7" MaxLength="7"
						class="l_input" />
          </strong> 天有效期
          <asp:RegularExpressionValidator ID="ValeMoneyExchangeValidDay" runat="server" ControlToValidate="TxtMoneyExchangeValidDay"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValeCMoneyExchangeValidDay" runat="server" ControlToValidate="TxtCMoneyExchangeValidDay"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" /></td>
      </tr>
      <tr runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>会员的资金与虚拟金币的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="txtMoneyExchangeDummyPurse" Text="0" runat="server" Columns="7"
					MaxLength="7" class="l_input" />
          元钱可兑换 <strong>
          <asp:TextBox ID="txtCMoneyExchangeDummyPurse" Text="1" runat="server" Columns="7"
						MaxLength="7" class="l_input" />
          </strong> 元虚拟金币
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMoneyExchangeDummyPurse"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCMoneyExchangeDummyPurse"
					ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?"
					Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="UserExpExchangePoint">
        <td class="tdbgleft"><strong>会员的积分与点券的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="TxtUserExpExchangePoint" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangePoint" Text="1" runat="server" Columns="7" MaxLength="7"
						class="l_input" />
          </strong> 点券
          <asp:RegularExpressionValidator ID="ValgUserExpExchangePoint" runat="server" ControlToValidate="TxtUserExpExchangePoint"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValgCUserExpExchangePoint" runat="server" ControlToValidate="TxtCUserExpExchangePoint"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="UserExpExchangeValidDay">
        <td class="tdbgleft"><strong>会员的积分与有效期的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="TxtUserExpExchangeValidDay" Text="0" runat="server" Columns="7"
					MaxLength="7" class="l_input" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangeValidDay" Text="1" runat="server" Columns="7"
						MaxLength="7" class="l_input" />
          </strong> 天有效期
          <asp:RegularExpressionValidator ID="ValgUserExpExchangeValidDay" runat="server" ControlToValidate="TxtUserExpExchangeValidDay"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValgCUserExpExchangeValidDay" runat="server"
					ControlToValidate="TxtCUserExpExchangeValidDay" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$"
					Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="Tr4">
        <td class="tdbgleft"><strong>会员的积分与资金的兑换比率：</strong></td>
        <td> 每
          <asp:TextBox ID="TxtCUserExpExchangePoints" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangeMoney" Text="0" runat="server" Columns="7" MaxLength="7"
						class="l_input" />
          </strong> 元钱
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCUserExpExchangePoints"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtCUserExpExchangeMoney"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="Tr5">
        <td class="tdbgleft"><strong>可使用站内短信功能用户组：</strong></td>
        <td><asp:CheckBoxList ID="MessageGroup" runat="server" DataTextField="GroupName" DataValueField="GroupID"
					RepeatColumns="5" RepeatDirection="Horizontal"> </asp:CheckBoxList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>打卡领取奖励：</strong></td>
        <td><select id="selPunch" runat="server" onchange="PunchCha()">
            <option value="0">不奖励</option>
            <option value="1">现金</option>
            <option value="2">虚拟币</option>
            <option value="3">积分</option>
            <option value="4">点劵</option>
            <option value="5">信誉值</option>
          </select></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" style="display: none"
			onmouseout="this.className='tdbg'" id="Tr7">
        <td class="tdbgleft"><strong>打卡奖励数值：</strong></td>
        <td><asp:TextBox ID="txtPunch" Text="" runat="server" Columns="5" MaxLength="5" class="l_input" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>推广奖励类型：</strong></td>
        <td><asp:RadioButtonList ID="RadioButtonList10" runat="server" AutoPostBack="true" RepeatDirection="Horizontal"
					OnSelectedIndexChanged="RadioButtonList10_SelectedIndexChanged">
            <asp:ListItem Value="0" Selected="True">不奖励</asp:ListItem>
            <asp:ListItem Value="1">现金</asp:ListItem>
            <asp:ListItem Value="2">点劵</asp:ListItem>
            <asp:ListItem Value="3">积分</asp:ListItem>
            <asp:ListItem Value="4">虚拟货币</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" visible="false" onmouseout="this.className='tdbg'"
			runat="server" id="Tr6">
        <td class="tdbgleft"><strong>推广奖励数值：</strong></td>
        <td><asp:TextBox ID="txtPromotion" Text="" runat="server" Columns="5" MaxLength="5" class="l_input" /></td>
      </tr>
    </tbody>
    <tbody id="Tabs3" style="display: none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PointName">
        <td class="tdbgleft"><strong>点券的名称：</strong><br />
          例如：点券、金币、拍点 </td>
        <td style="height: 36px"><asp:TextBox ID="TxtPointName" Text="点券" runat="server" Columns="5" MaxLength="5"
					class="l_input" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PointUnit">
        <td class="tdbgleft"><strong>点券的单位：</strong><br />
          例如：点、个 </td>
        <td><asp:TextBox ID="TxtPointUnit" Text="点" runat="server" Columns="5" MaxLength="5"
					class="l_input" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
			runat="server" id="PresentPoint">
        <td class="tdbgleft"><strong>注册成功赠送点券：</strong></td>
        <td><asp:TextBox ID="TxtPresentPoint" Text="0" runat="server" Columns="7" MaxLength="7"
					class="l_input" />
          点券
          <asp:RegularExpressionValidator ID="ValgPresentPoint" runat="server" ControlToValidate="TxtPresentPoint"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 300px"> 资料填写完整赠送点券 </td>
        <td style="width: 500px"><asp:TextBox ID="txtzi" runat="server" Columns="7" MaxLength="7" class="l_input"></asp:TextBox>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtzi"
					ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
    </tbody>
    <tbody id="Tabs4" style="display: none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>是否对同一IP注册进行时间间隔限制：</strong></td>
        <td><asp:RadioButtonList ID="RBLDZ" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
            <asp:ListItem Value="0">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>注册间隔限制时间：</strong></td>
        <td><asp:TextBox ID="txtLimitTime" class="l_input" runat="server" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
					onafterpaste="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"
					Width="150px"></asp:TextBox>
          <strong style="color: red">&nbsp;间隔时间单位为小时 </strong></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>是否设置限制的IP段：</strong></td>
        <td><asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal"
					AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem Value="1">是</asp:ListItem>
            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
    <div id="IPpart" runat="server">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" align="right" style="height: 23px" valign="middle"><strong>设置限制的IP段：</strong></td>
        <td><asp:TextBox ID="txtBeginIP" class="l_input" runat="server" Width="150px"></asp:TextBox>
          &nbsp; —— &nbsp;
          <asp:TextBox ID="txtEndIP" class="l_input" runat="server" Width="150px"></asp:TextBox>
          <strong style="color: red">&nbsp; 不填为所有IP限制</strong></td>
      </tr>
    </div>
      </tbody>
    
  </table>
  <br />
  <asp:Button ID="Button1" runat="server" Text="保存设置" OnClick="Button1_Click" class="C_input" />
  <br />
  <script type="text/javascript">
	var LitRegFieldsClientID = "<%=LitRegFields.ClientID %>";
	var HdnRegFields_MustFillClientID = "<%=HdnRegFields_MustFill.ClientID %>";
	var LitRegFields_MustFillClientID = "<%=LitRegFields_MustFill.ClientID %>";
	var HdnRegFields_SelectFillClientID = "<%=HdnRegFields_SelectFill.ClientID %>";
	var LitRegFields_SelectFillClientID = "<%=LitRegFields_SelectFill.ClientID %>";

	function AddFields_MustFill() {
		var itemList = document.getElementById(LitRegFieldsClientID);
		var target = document.getElementById(LitRegFields_MustFillClientID);
		addItem(itemList, target);
		SetHdn(target, document.getElementById(HdnRegFields_MustFillClientID));
	}

	function RemoveFields_MustFill() {
		var itemList = document.getElementById(LitRegFieldsClientID);
		var target = document.getElementById(LitRegFields_MustFillClientID);
		addItem(target, itemList);
		SetHdn(target, document.getElementById(HdnRegFields_MustFillClientID));
	}

	function AddFields_SelectFill() {
		var itemList = document.getElementById(LitRegFieldsClientID);
		var target = document.getElementById(LitRegFields_SelectFillClientID);
		addItem(itemList, target);
		SetHdn(target, document.getElementById(HdnRegFields_SelectFillClientID));
	}

	function RemoveFields_SelectFill() {
		var itemList = document.getElementById(LitRegFieldsClientID);
		var target = document.getElementById(LitRegFields_SelectFillClientID);
		addItem(target, itemList);
		SetHdn(target, document.getElementById(HdnRegFields_SelectFillClientID));
	}

	function UpFields_MustFill() {
		var target = document.getElementById(LitRegFields_MustFillClientID);
		UpOption(target);
		SetHdn(target, document.getElementById(HdnRegFields_MustFillClientID));
	}

	function DownFields_MustFill() {
		var target = document.getElementById(LitRegFields_MustFillClientID);
		DownOption(target);
		SetHdn(target, document.getElementById(HdnRegFields_MustFillClientID));
	}

	function UpFields_SelectFill() {
		var target = document.getElementById(LitRegFields_SelectFillClientID);
		UpOption(target);
		SetHdn(target, document.getElementById(HdnRegFields_SelectFillClientID));
	}

	function DownFields_SelectFill() {
		var target = document.getElementById(LitRegFields_SelectFillClientID);
		DownOption(target);
		SetHdn(target, document.getElementById(HdnRegFields_SelectFillClientID));
	}

	function UpOption(obj) {
		for (var i = 0; i < obj.length; i++) {
			var opt = obj.options[i];
			if (opt.selected) {
				if (i >= 1) {
					var temp = obj.options[i - 1];
					obj.options[i] = new Option(temp.text, temp.value, 0, 0);
					obj.options[i - 1] = new Option(opt.text, opt.value, 0, 1);
				}
			}
		}
	}

	function DownOption(obj) {
		for (var i = obj.length - 1; i >= 0; i--) {
			var opt = obj.options[i];
			if (opt.selected) {
				if (i <= obj.length - 2) {
					var temp = obj.options[i + 1];
					obj.options[i] = new Option(temp.text, temp.value, 0, 0);
					obj.options[i + 1] = new Option(opt.text, opt.value, 0, 1);
				}
			}
		}
	}

	function addItem(ItemList, Target) {
		for (var i = 0; i < ItemList.length; i++) {
			var opt = ItemList.options[i];
			if (opt.selected) {
				flag = true;
				for (var y = 0; y < Target.length; y++) {
					var myopt = Target.options[y];
					if (myopt.value == opt.value) {
						flag = false;
					}
				}
				if (flag) {
					Target.options[Target.options.length] = new Option(opt.text, opt.value, 0, 0);
				}
			}
		}

		for (var y = 0; y < Target.length; y++) {
			var myopt = Target.options[y];
			for (var i = 0; i < ItemList.length; i++) {
				if (ItemList.options[i].value == myopt.value) {
					ItemList.options[i] = null;
				}
			}
		}
	}

	function SetHdn(ItemList, HdnObj) {
		var adminId = "";
		for (var i = 0; i < ItemList.length; i++) {
			if (adminId == "") {
				adminId = ItemList.options[i].value;
			}
			else {
				adminId += "," + ItemList.options[i].value;
			}
		}
		HdnObj.value = adminId;
	}

	//-->
</script>
</form>
</body>
</html>