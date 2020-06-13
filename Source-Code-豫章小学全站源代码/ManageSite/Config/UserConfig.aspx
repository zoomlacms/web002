<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Config.UserConfig, App_Web_1uo1gqqt" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>用户参数</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
  <div class="column">
    <div class="columntitle">当前位置：功能导航 >>会员参数配置</div>
    <table width="99%" cellspacing="1" cellpadding="0" class="border">
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>是否开启会员注册：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>是否开启用户Email注册：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>是否开启管理员注册：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>是否允许一个Email注册多个会员：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>会员注册时是否启用验证码功能：<br />
          </strong>启用验证码功能可以在一定程度上防止暴力营销软件或注册机自动注册。</td>
        <td align="left" style="width: 500px; height: 23px;"><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>新会员注册时用户名最少字符数：</strong></td>
        <td align="left" style="width: 500px"><asp:TextBox ID="TextBox6" runat="server" ></asp:TextBox>
          个字符
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="最少字符数不能为空"></asp:RequiredFieldValidator>
          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="最少字符数必须大于等于3" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="3" Display="Dynamic" SetFocusOnError="true"></asp:CompareValidator></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>新会员注册时用户名最多字符数：</strong></td>
        <td align="left" style="width: 500px"><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
          个字符
          <asp:RequiredFieldValidator ID="ReqTxtUserNameMax" runat="server" Display="Dynamic"
                    ErrorMessage="最多字符数不能为空" ControlToValidate="TextBox7" />
          <asp:CompareValidator ID="CValTxtUserNameMax" runat="server" ControlToValidate="TextBox7"
                    ControlToCompare="TextBox6" Type="Integer" Operator="GreaterThanEqual"
                    ErrorMessage="最多字符数必须大于等于最小字符数" Display="Dynamic" SetFocusOnError="true" /></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>禁止注册的用户名：<br />
          </strong>在右边指定的用户名将被禁止注册，每个用户名请用“|”符号分隔</td>
        <td align="left" style="width: 500px"><asp:TextBox ID="TextBox8" runat="server" Rows="6" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg">
        <td align="left"><strong>会员注册时的必填、选填项目：</strong><br />
          在会员注册时，可根据需要设定注册的必填项、选填项。<br />
          将“可用项”中内容添加到“必填项”或者“选填项”的列表中即可设定。<br />
          用户名、 密码、 确认密码、 密码问题、 问题答案、 Email为系统强制必填信息。<br />
          <span style="color: Blue">注：若修改此项，前台正在注册的表单页面将失效</span></td>
        <td style="width: 60%" align="left"><table>
            <tr>
              <td align="left"><asp:HiddenField ID="HdnRegFields_MustFill" runat="server" />
                <asp:HiddenField ID="HdnRegFields_SelectFill" runat="server" />
                可用项：<br />
                <asp:ListBox ID="LitRegFields" SelectionMode="Multiple" Width="130" Height="285"
                                runat="server" /></td>
              <td align="left"><table>
                  <tr>
                    <td align="left"><input id="Button4" value=" >> "  class="button"  onclick="AddFields_MustFill()" title="添加所选项" type="button" />
                      <br />
                      <input id="Button2" value=" << " class="button" onclick="RemoveFields_MustFill()" title="移除所选项"
                                            type="button" /></td>
                    <td align="left"> 必填项：<br />
                      <asp:ListBox ID="LitRegFields_MustFill" SelectionMode="Multiple" Width="130" Height="130"
                                            runat="server" /></td>
                    <td align="left"><input id="Button5" value=" ︽ " class="button" onclick="UpFields_MustFill()" title="上移" type="button" />
                      <br />
                      <input id="Button6" value=" ︾ " class="button" onclick="DownFields_MustFill()" title="下移" type="button" />
                      <br />
                      <br />
                      <br /></td>
                  </tr>
                  <tr>
                    <td align="left"><input id="Button3" value=" >> " class="button" onclick="AddFields_SelectFill()" title="添加所选项" type="button" />
                      <br />
                      <input id="Button7" value=" << "  class="button" onclick="RemoveFields_SelectFill()" title="移除所选项"
                                            type="button" /></td>
                    <td align="left"> 选填项：<br />
                      <asp:ListBox ID="LitRegFields_SelectFill" SelectionMode="Multiple" Width="130" Height="130"
                                            runat="server" /></td>
                    <td align="left"><input id="Button8" value=" ︽ "  class="button" onclick="UpFields_SelectFill()" title="上移" type="button" />
                      <br />
                      <input id="Button9" value=" ︾ "  class="button" onclick="DownFields_SelectFill()" title="下移" type="button" />
                      <br />
                      <br />
                      <br /></td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>会员登陆是否启用验证码功能：<br />
          </strong>启用验证码功能可以在一定程度上防止会员密码被暴力破解</td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>会员登录否允许多人同时使用同一会员帐号：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>是</asp:ListItem>
            <asp:ListItem>否</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>新会员注时发送的验证邮件内容：<br />
          </strong>邮件内容支持HTML，邮件内容中可用标签说明如下：<br />
          <span onclick="Insert('{$CheckNum}')" style="cursor: hand">{$CheckNum}</span>：验证码<br />
          <span onclick="Insert('{$CheckUrl}')" style="cursor: hand">{$CheckUrl}</span>：验证地址</td>
        <td align="left" style="width: 500px"><asp:TextBox ID="TextBox12" runat="server" Rows="6" TextMode="MultiLine" Width="300px"></asp:TextBox></td>
      </tr>
      <tr class="tdbg" runat="server" id="PresentExpPerLogin">
        <td align="left"><strong>会员每登录一次奖励的积分：</strong><br />
          一天只计算一次 </td>
        <td align="left"><asp:TextBox ID="TxtPresentExpPerLogin" Text="0" runat="server" Columns="5" />
          分积分 </td>
      </tr>
      <tr class="tdbg" runat="server" id="Tr1">
        <td align="left"><strong>发布一条新内容奖励积分：</strong></td>
        <td align="left"><asp:TextBox runat="server" ID="tb_InformationRule"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="rev_2" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="tb_InformationRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" runat="server" id="Tr2">
        <td align="left"><strong>发布一条评论奖励积分：</strong></td>
        <td align="left"><asp:TextBox runat="server" ID="tb_CommentRule"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="tb_CommentRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" runat="server" id="Tr3">
        <td align="left"><strong>发布的内容被推荐奖励积分：</strong></td>
        <td align="left"><asp:TextBox runat="server" ID="tb_RecommandRule"></asp:TextBox>
          分积分
          <asp:RegularExpressionValidator runat="server" ID="rev_3" ValidationExpression="^[1-9]\d*|0$" ControlToValidate="tb_RecommandRule" ErrorMessage="只能输入非0整数"></asp:RegularExpressionValidator></td>
      </tr>
      <tr class="tdbg" runat="server" id="PresentExp">
        <td align="left"><strong>新会员注册时赠送的积分：</strong></td>
        <td align="left"><asp:TextBox ID="TxtPresentExp" Text="0" runat="server" Columns="7" MaxLength="7" />
          分积分
          <asp:RegularExpressionValidator ID="ValgPresentExp" runat="server" ControlToValidate="TxtPresentExp" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="PresentMoney">
        <td align="left"><strong>新会员注册时赠送的金钱：</strong></td>
        <td align="left"><asp:TextBox ID="TxtPresentMoney" Text="0" runat="server" Columns="7" MaxLength="7" />
          元钱
          <asp:RegularExpressionValidator ID="ValgTxtPresentMoney" runat="server" ControlToValidate="TxtPresentMoney" ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="PresentPoint">
        <td align="left"><strong>新会员注册时赠送的点数：</strong></td>
        <td align="left"><asp:TextBox ID="TxtPresentPoint" Text="0" runat="server" Columns="7" MaxLength="7" />
          点点券
          <asp:RegularExpressionValidator ID="ValgPresentPoint" runat="server" ControlToValidate="TxtPresentPoint" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="PresentValidNum">
        <td align="left"><strong>新会员注册时赠送的有效期：</strong></td>
        <td align="left"><asp:TextBox ID="TxtPresentValidNum" Text="0" runat="server" Columns="5" />
          <asp:DropDownList ID="DropPresentValidUnit" runat="server">
            <asp:ListItem Value="1">天</asp:ListItem>
            <asp:ListItem Value="2">月</asp:ListItem>
            <asp:ListItem Value="3">年</asp:ListItem>
          </asp:DropDownList>
          （为－1表示无限期） </td>
      </tr>
      <tr class="tdbg">
        <td align="left" style="width: 300px"><strong>会员找回码的方式：</strong></td>
        <td align="left" style="width: 500px"><asp:RadioButtonList ID="RadioButtonList8" runat="server">
            <asp:ListItem>回答正确密码答案后，直接在页面修改密码</asp:ListItem>
            <asp:ListItem>回答正确密码答案后，发送邮件到会员邮箱（必须在网站信息配置配置邮件服务器与会员注册时填写了邮件地址！）</asp:ListItem>
          </asp:RadioButtonList></td>
      </tr>
      <tr class="tdbg" runat="server" id="MoneyExchangePoint">
        <td align="left"><strong>会员的资金与点券的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="TxtMoneyExchangePoint" Text="0" runat="server" Columns="7" MaxLength="7" />
          元钱可兑换 <strong>
          <asp:TextBox ID="TxtCMoneyExchangePoint" Text="1" runat="server" Columns="7" MaxLength="7" />
          </strong> 点点券
          <asp:RegularExpressionValidator ID="ValeMoneyExchangePoint" runat="server" ControlToValidate="TxtMoneyExchangePoint"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValeCMoneyExchangePoint" runat="server" ControlToValidate="TxtCMoneyExchangePoint"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="MoneyExchangeValidDay">
        <td align="left"><strong>会员的资金与有效期的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="TxtMoneyExchangeValidDay" Text="0" runat="server" Columns="7" MaxLength="7" />
          元钱可兑换 <strong>
          <asp:TextBox ID="TxtCMoneyExchangeValidDay" Text="1" runat="server" Columns="7" MaxLength="7" />
          </strong> 天有效期
          <asp:RegularExpressionValidator ID="ValeMoneyExchangeValidDay" runat="server" ControlToValidate="TxtMoneyExchangeValidDay"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValeCMoneyExchangeValidDay" runat="server" ControlToValidate="TxtCMoneyExchangeValidDay"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" /></td>
      </tr>
      <tr runat="server" class="tdbg">
        <td align="left"><strong>会员的资金与虚拟金币的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="txtMoneyExchangeDummyPurse" Text="0" runat="server" Columns="7" MaxLength="7" />
          元钱可兑换 <strong>
          <asp:TextBox ID="txtCMoneyExchangeDummyPurse" Text="1" runat="server" Columns="7" MaxLength="7" />
          </strong> 元虚拟金币
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtMoneyExchangeDummyPurse"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtCMoneyExchangeDummyPurse"
                    ErrorMessage="只能输入货币字符，并且不能为负数" ValidationExpression="^[0-9]+(\.?[0-9]{1,4})?" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="UserExpExchangePoint">
        <td align="left"><strong>会员的积分与点券的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="TxtUserExpExchangePoint" Text="0" runat="server" Columns="7" MaxLength="7" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangePoint" Text="1" runat="server" Columns="7" MaxLength="7" />
          </strong> 点点券
          <asp:RegularExpressionValidator ID="ValgUserExpExchangePoint" runat="server" ControlToValidate="TxtUserExpExchangePoint" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValgCUserExpExchangePoint" runat="server" ControlToValidate="TxtCUserExpExchangePoint" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="UserExpExchangeValidDay">
        <td align="left"><strong>会员的积分与有效期的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="TxtUserExpExchangeValidDay" Text="0" runat="server" Columns="7"  MaxLength="7" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangeValidDay" Text="1" runat="server" Columns="7" MaxLength="7" />
          </strong> 天有效期
          <asp:RegularExpressionValidator ID="ValgUserExpExchangeValidDay" runat="server" ControlToValidate="TxtUserExpExchangeValidDay" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="ValgCUserExpExchangeValidDay" runat="server" ControlToValidate="TxtCUserExpExchangeValidDay" ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="Tr4">
        <td align="left"><strong>会员的积分与资金的兑换比率：</strong></td>
        <td align="left"> 每
          <asp:TextBox ID="TxtCUserExpExchangePoints" Text="0" runat="server" Columns="7"
                    MaxLength="7" />
          分积分可兑换 <strong>
          <asp:TextBox ID="TxtCUserExpExchangeMoney" Text="0" runat="server" Columns="7" MaxLength="7" />
          </strong> 元钱
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtCUserExpExchangePoints"
                    ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtCUserExpExchangeMoney"
                    ErrorMessage="只能输入正整数" ValidationExpression="^([0-9])(\d{0,})(\d{0,})$" Display="Dynamic" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="PointName">
        <td align="left"><strong>点券的名称：</strong><br />
          例如：点券、金币 </td>
        <td align="left" style="height: 36px"><asp:TextBox ID="TxtPointName" Text="点券" runat="server" Columns="5" MaxLength="5" /></td>
      </tr>
      <tr class="tdbg" runat="server" id="PointUnit">
        <td align="left"><strong>点券的单位：</strong><br />
          例如：点、个 </td>
        <td align="left"><asp:TextBox ID="TxtPointUnit" Text="点" runat="server" Columns="5" MaxLength="5" /></td>
      </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="保存设置" CssClass="button" OnClick="Button1_Click" />
    <br />
  </div>
  <script type="text/javascript">
    var LitRegFieldsClientID = "<%=LitRegFields.ClientID %>";
    var HdnRegFields_MustFillClientID = "<%=HdnRegFields_MustFill.ClientID %>";
    var LitRegFields_MustFillClientID = "<%=LitRegFields_MustFill.ClientID %>";
    var HdnRegFields_SelectFillClientID = "<%=HdnRegFields_SelectFill.ClientID %>";
    var LitRegFields_SelectFillClientID = "<%=LitRegFields_SelectFill.ClientID %>";
    
    function AddFields_MustFill()
    {
        var itemList = document.getElementById(LitRegFieldsClientID);
        var target = document.getElementById(LitRegFields_MustFillClientID);
        addItem(itemList,target);
        SetHdn(target,document.getElementById(HdnRegFields_MustFillClientID));
    }
    
    function RemoveFields_MustFill()
    {
        var itemList = document.getElementById(LitRegFieldsClientID);
        var target = document.getElementById(LitRegFields_MustFillClientID);
        addItem(target,itemList);
        SetHdn(target,document.getElementById(HdnRegFields_MustFillClientID));
    }
    
    function AddFields_SelectFill()
    {
        var itemList = document.getElementById(LitRegFieldsClientID);
        var target = document.getElementById(LitRegFields_SelectFillClientID);
        addItem(itemList,target);
        SetHdn(target,document.getElementById(HdnRegFields_SelectFillClientID));
    }
    
    function RemoveFields_SelectFill()
    {
        var itemList = document.getElementById(LitRegFieldsClientID);
        var target = document.getElementById(LitRegFields_SelectFillClientID);
        addItem(target,itemList);
        SetHdn(target,document.getElementById(HdnRegFields_SelectFillClientID));
    }
    
    function UpFields_MustFill()
    {
        var target = document.getElementById(LitRegFields_MustFillClientID);
        UpOption(target);
        SetHdn(target,document.getElementById(HdnRegFields_MustFillClientID));
    }
    
    function DownFields_MustFill()
    {
        var target = document.getElementById(LitRegFields_MustFillClientID);
        DownOption(target);
        SetHdn(target,document.getElementById(HdnRegFields_MustFillClientID));
    }
    
    function UpFields_SelectFill()
    {
        var target = document.getElementById(LitRegFields_SelectFillClientID);
        UpOption(target);
        SetHdn(target,document.getElementById(HdnRegFields_SelectFillClientID));
    }
    
    function DownFields_SelectFill()
    {
        var target = document.getElementById(LitRegFields_SelectFillClientID);
        DownOption(target);
        SetHdn(target,document.getElementById(HdnRegFields_SelectFillClientID));
    }
    
    function UpOption(obj)
    {
        for(var i = 0; i < obj.length; i++)
        {
            var opt = obj.options[i];
            if (opt.selected)
            {
                if(i >= 1)
                {
                    var temp = obj.options[i-1];
                    obj.options[i] = new Option(temp.text, temp.value, 0, 0);
                    obj.options[i-1] = new Option(opt.text, opt.value, 0, 1);
                }
            }
        }
    }
    
    function DownOption(obj)
    {
        for(var i = obj.length-1; i >= 0; i--)
        {
            var opt = obj.options[i];
            if (opt.selected)
            {
                if(i <= obj.length-2)
                {
                    var temp = obj.options[i+1];
                    obj.options[i] = new Option(temp.text, temp.value, 0, 0);
                    obj.options[i+1] = new Option(opt.text, opt.value, 0, 1);
                }
            }
        }
    }
    
    function addItem(ItemList,Target)
    {
        for(var i = 0; i < ItemList.length; i++)
        {
            var opt = ItemList.options[i];
            if (opt.selected)
            {
                flag = true;
                for (var y=0;y<Target.length;y++)
                {
                    var myopt = Target.options[y];
                    if (myopt.value == opt.value)
                    {
                        flag = false;
                    }
                }
                if(flag)
                {
                    Target.options[Target.options.length] = new Option(opt.text, opt.value, 0, 0);
                }
            }
        }
        
        for (var y=0;y<Target.length;y++)
        {
              var myopt = Target.options[y];
              for(var i = 0; i < ItemList.length; i++)
              {
                    if(ItemList.options[i].value == myopt.value)
                    {
                        ItemList.options[i] = null;
                    }
              }
         }
    }

    function SetHdn(ItemList,HdnObj)
    {
        var adminId = "";
        for(var i = 0; i < ItemList.length; i++)
        {
            if (adminId == "")
            {
                adminId = ItemList.options[i].value;
            }
            else
            {
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