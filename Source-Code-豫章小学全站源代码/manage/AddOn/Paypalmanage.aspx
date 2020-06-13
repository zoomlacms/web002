<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.Paypalmanage, App_Web_s5nnx1p4" enableviewstate="False" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Assembly="System.Web.Extensions, Version=1.0.61025.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑在线支付平台</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="Paypalmanage.aspx">PayPal在线支付平台管理</a>&gt;&gt;<asp:Label ID="LblAction" runat="server" Text="Paypal支付平台"></asp:Label></div>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center">
        <td class="spacingtitle" colspan="2">
            <asp:Label ID="LblTitle" runat="server" Text="PayPal支付平台" />
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">方式名称：</td>
        <td>
            <asp:TextBox ID="payname" runat="server" ReadOnly="True" Width="263px" class="l_input">Paypal或Visa,Master,Solo等银行卡在线支付</asp:TextBox>
        </td>            
    </tr>
    
   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>接口类型：</strong></td>
        <td>
            <asp:TextBox ID="pay_intf" runat="server" ReadOnly="True" Width="216px" class="l_input">PayPal外贸必选(标准版)</asp:TextBox>
        </td>            
    </tr>
    
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>客户号：</strong></td>
        <td>
            <asp:TextBox ID="clientid" runat="server" class="l_input"/>
            <span class="p9gray">
            <br />
            此处填写您的支付帐号、客户号或客户id等，此帐号在支付服务提供商处取得；</span></td>            
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>身份标记：</strong></td>
        <td>
            <asp:TextBox ID="title" runat="server" class="l_input"/>
        </td>            
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>支持交易货币：</strong></td>
        <td class="style3">
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="83px" RepeatColumns="8" Width="586px" AutoPostBack="True">                     
        <asp:ListItem Value='CNY' >人民币 </asp:ListItem>
        <asp:ListItem Value='USD' >美元 </asp:ListItem>
        <asp:ListItem Value='EUR' >欧元 </asp:ListItem>
        <asp:ListItem value='GBP' >英镑 </asp:ListItem>
        <asp:ListItem value='CAD' >加拿大元 </asp:ListItem>
        <asp:ListItem value='AUD' >澳元 </asp:ListItem>
        <asp:ListItem value='NZD' >新西兰元 </asp:ListItem>
        <asp:ListItem value='RUB' >卢布 </asp:ListItem>
        <asp:ListItem value='HKD' >港币 </asp:ListItem>
        <asp:ListItem value='TWD' >新台币 </asp:ListItem>
        <asp:ListItem value='KRW' >韩元 </asp:ListItem>
        <asp:ListItem value='SGD' >新加坡元 </asp:ListItem>
        <asp:ListItem value='JPY' >日元</asp:ListItem>
        <asp:ListItem value='MYR' >马元 </asp:ListItem>
        <asp:ListItem value='CHF' >瑞士法郎</asp:ListItem>
        <asp:ListItem value='SEK' >瑞典克朗 </asp:ListItem>
        <asp:ListItem value='DKK' >丹麦克朗 </asp:ListItem>
        <asp:ListItem value='PLZ' >兹罗提 </asp:ListItem>
        <asp:ListItem  value='NOK' >挪威克朗 </asp:ListItem>
        <asp:ListItem value='HUF' >福林 </asp:ListItem>
        <asp:ListItem  value='CSK' >捷克克朗</asp:ListItem>     
        </asp:CheckBoxList>
        选择某种交易货币，请先确认“货币管理－货币列表”中已经存在此币种，如不存在请先进行货币种类的添加；</span></td>            
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft">支付手续费：</td>
        <td>
            <asp:TextBox ID="number" runat="server" Text="p*0.05" class="l_input"/><span class="p9gray">
            <br />
            此处可以输入公式来计算支付手续费，并可使用后面的公式验算功能审核手续费，公式中订单金额以字母“p”表示，；</span></td>            
    </tr> 
    
</table>
</ContentTemplate>
</asp:UpdatePanel>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td align="center">
        &nbsp;&nbsp; &nbsp;
        <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input"/>&nbsp; &nbsp;
        <input name="Cancel" type="button" id="BtnCancel" value="取消" onclick="window.location.href='PayPlatManage.aspx'" class="C_input"/></td>
    </tr>
</table>
</form>
</body>
</html>