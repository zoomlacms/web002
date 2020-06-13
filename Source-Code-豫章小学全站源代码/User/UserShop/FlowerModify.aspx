<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_FlowerModify, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改花材价格</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/AdminDefaultTheme/doutime.css"
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo" style="width: 98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="我的店铺" href="Default.aspx">我的店铺</a>&gt;&gt;<a title="花材管理" href="FlowerManage.aspx">设定花材基价</a>
</div>
    <div class="us_seta" style="margin-top: 5px;"><h1 align="center">修改花材基价</h1></div>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft" width="20%"><strong>花材名称：</strong></td>
            <td>
            <asp:Label ID="txtName" runat="server"></asp:Label>
            </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>花材价格:</strong></td>
            <td> <asp:TextBox ID="txtPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="txtPrice" ErrorMessage="花材价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>会员价:</strong></td>
            <td><asp:RadioButtonList ID="rdoUserPrice" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="rdoUserPrice_SelectedIndexChanged">
                <asp:ListItem Value="0" Selected="True">会员价</asp:ListItem>
                <asp:ListItem Value="1">会员组</asp:ListItem>
                </asp:RadioButtonList >
             <div id="userP" runat="server">会员价：<asp:TextBox id="userPrice" runat='server'  class="l_input" Width="35px"></asp:TextBox>元</div>
              <div id="divGroup" runat="server" visible="false">
              <asp:Repeater ID="repGroup" runat="server">
                <ItemTemplate>
                <asp:HiddenField ID="groupID" runat="server" Value='<%#Eval("GroupID") %>' />
                    <%#Eval("GroupName")%>：<asp:TextBox ID="GroupPrice" runat='server' class="l_input" Width="30px"></asp:TextBox>元
                </ItemTemplate>
              </asp:Repeater>
            </div></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>节日价格:</strong></td>
            <td> <asp:TextBox ID="txtDayPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="txtDayPrice" ErrorMessage="节日价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>节日时间:</strong></td>
            <td><div id='hotelDiv'><asp:TextBox id='CheckInDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox>至 
            <asp:TextBox id='CheckOutDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox></div>
            <input id='IntervallCheckInAndChekOut' value='1' type='hidden' />
            <input id='CheckOut' type='hidden' runat="server" />
            <script type='text/javascript' src='/JS/systemall.js'></script><script type='text/javascript' src='/JS/homecn.js'></script>
            <div id='serverdate' value='2010-8-30' runat="server"></div><div id='m_contentend'></div>
             </td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>预订价格:</strong></td>
            <td> <asp:TextBox ID="txtBookPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="txtBookPrice" ErrorMessage="预订价格格式不正确!"
                  ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
         <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
            <td class="tdbgleft"><strong>预订时间:</strong></td>
            <td> <asp:TextBox ID="txtBookDay" runat="server"  class="l_input"  Height="19px"></asp:TextBox> <font color="red">节日时间提前N天为预订价</font>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="txtBookDay" ErrorMessage="预订时间格式不正确!"
                  ValidationExpression="\d+" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
    <tr class="tdbgbottom">
        <td colspan="2">
           &nbsp;<asp:Button ID="EBtnSubmit" class="C_input" Text="编辑花材" runat="server" onclick="EBtnSubmit_Click" />
           <asp:HiddenField ID="hfID" runat="server" />
           &nbsp;<input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='FlowerManage.aspx'" id="Button2" />
        </td>
    </tr>
    </table>
</div>
</form>
</body>
</html>