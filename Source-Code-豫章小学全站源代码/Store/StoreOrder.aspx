<%@ page language="C#" autoeventwireup="true" inherits="StoreOrder, App_Web_mxd1cmnv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>确认订单</title>
<link href="../App_Themes/UserThem/style.css"rel="stylesheet" type="text/css" />
<link href="../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/JS/pacalendar.js"></script>
</head>
<body>
<form id="form1" runat="server">
  <div id="main" class="rg_inout">
    <h1>第二步：确认订单<span>[<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>]</span><img alt="" src="/user/images/regl2.gif" width="242" height="14" /></h1>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 收货人姓名：</b></li>
      <li><asp:TextBox ID="Receiver" runat="server"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Receiver" ErrorMessage="收货人姓名不能为空!"> </asp:RequiredFieldValidator>
      </li>
    </ul>

    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 收货人地址：</b></li>
      <li>
        <asp:DropDownList ID="dddizhi" runat="server" OnSelectedIndexChanged="dddizhi_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        <br />
        <asp:TextBox ID="Jiedao" runat="server" Width="409px"></asp:TextBox>
        <asp:CheckBox ID="cbAdd" runat="server" />
        加入我的地址簿</li>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Jiedao" ErrorMessage="收货人地址不能为空!"></asp:RequiredFieldValidator>
    </ul>
    <div class="cleardiv" style="margin-top: 30px"></div>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>收货人邮箱：</b></li>
      <li>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="邮箱格式不正确!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
      </li>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 付款方式：</b></li>
      <li></li>
      <li><asp:DropDownList ID="Payment" runat="server"></asp:DropDownList></li>
    </ul>
    <div class="cleardiv"></div>
    <ul style="margin-bottom: 20px; width: 100%">
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>发票信息：</b></li>
      <li>
        <asp:TextBox ID="Invoice" runat="server" Height="46px" Columns="50" Rows="10"></asp:TextBox>
        <asp:CheckBox ID="Invoiceneeds" runat="server" Text="需开发票 " />
      </li>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>要求送货时间：</b></li>
      <li>
        <asp:DropDownList ID="Deliverytime" runat="server">
          <asp:ListItem Value="1">对送货时间没有特殊要求</asp:ListItem>
          <asp:ListItem Value="2">双休日或者周一至周五的晚上送达</asp:ListItem>
          <asp:ListItem Value="3">周一至周五的白天送达</asp:ListItem>
        </asp:DropDownList>
      </li>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 联系电话：</b></li>
      <li>
        <asp:TextBox ID="Phone" runat="server"></asp:TextBox>
      </li>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone" Display="Dynamic" ErrorMessage="联系电话不能为空!"></asp:RequiredFieldValidator>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 邮政编码：</b></li>
      <li>
        <asp:TextBox ID="ZipCode" runat="server"></asp:TextBox>
      </li>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ZipCode" Display="Dynamic" ErrorMessage="邮政编码不能为空!"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ZipCode" ErrorMessage="邮政编码格式不正确!" ValidationExpression="^\d{6}$"></asp:RegularExpressionValidator>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font> 收货人手机：</b></li>
      <li>
        <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>
      </li>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="收货人手机不能为空!"></asp:RequiredFieldValidator>
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Mobile" ErrorMessage="手机号码格式不正确!" ValidationExpression="^(\d{2}|\d{3})?[\-]?(\d{11})$"></asp:RegularExpressionValidator>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>送货方式：</b></li>
      <li>
        <asp:DropDownList ID="Delivery" runat="server"></asp:DropDownList>
      </li>
    </ul>
    <asp:Literal ID="ModelHtml" runat="server"></asp:Literal>
    <ul id="DelivDates" runat="server">
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>送货具体时间：</b></li>
      <li>
        <asp:TextBox ID="txtDatas" runat="server" onclick="calendar('txtTime')"></asp:TextBox>
      </li>
    </ul>
    <div class="cleardiv"> </div>
    <ul id="DelivTimes" runat="server" style="width: 100%">
      <li style="width: 150px; text-align: right;"><b><font color="#FF0000">*</font>送货时间段：</b></li>
      <li>&nbsp;
        <asp:RadioButtonList ID="rblTime" runat="server" RepeatDirection="Horizontal" Style="float: left">
          <asp:ListItem Value="不限">不限</asp:ListItem>
          <asp:ListItem Value="上午">上午</asp:ListItem>
          <asp:ListItem Value="下午">下午</asp:ListItem>
          <asp:ListItem Value="晚上">晚上</asp:ListItem>
          <asp:ListItem Value="定点服务">定点服务</asp:ListItem>
        </asp:RadioButtonList>
        <asp:TextBox ID="txtTimes" runat="server"></asp:TextBox>
        <asp:HiddenField ID="hf" runat="server" Value="20" />
      </li>
    </ul>
    <ul>
      <li style="width: 150px; text-align: right;">&nbsp;</li>
      <li><asp:Button ID="Button1" runat="server" Text="提交订单" OnClick="Button1_Click" />
        &nbsp;</li>
    </ul>
    <asp:HiddenField ID="ddPack" runat="server" />
  </div>

  </div>
  
  <div id="bottom"> <a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a>
    <p> 
      <script language="javascript" type="text/javascript"> 
<!-- 
var year="";
mydate=new Date();
myyear=mydate.getYear();
year=(myyear > 200) ? myyear : 1900 + myyear;
document.write(year); 
--> 
</script>&copy;&nbsp;Copyright&nbsp;
      <%Call.Label("{$SiteName/}"); %>
      All rights reserved.</p>
  </div>
</form>
</body>
</html>