<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_OrderConfi, App_Web_5abfvvyw" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>订单信息配置</title>
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="OrderList.aspx">订单管理</a></span> &gt;&gt;<span>订单信息配置</span></div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" align="center">
            <asp:Literal ID="LTitle" runat="server" Text="修改短信内容配置"></asp:Literal>
        </td>
    </tr>
    <tr><td><span style="color:Red">提示内容中可用标签说明如下：{$UserName}订货人姓名；&nbsp;{$SiteName}网站名称；&nbsp;{$OrderCode}订单号；&nbsp;{$DataTime}下单时间；&nbsp;
   {$DeliveryUser}送货员；&nbsp;{$DeliUserMobile}送货手机；&nbsp;{$SignUserName}代签人姓名；&nbsp;{$SignUserMobil}代签人手机；&nbsp; {$Remark}状态备注</span></td></tr>
    <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;">
            <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>有效订单说明：</strong></td>
                <td>
                    <asp:TextBox ID="txtAcou" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="订单返利最低兑现金额不能为空!" ControlToValidate="txtAcou"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>无效订单说明：</strong></td>
                <td>
                    <asp:TextBox ID="txtsite" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="分站返利最低兑现金额不能为空!" ControlToValidate="txtsite"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>全部付款和部分付款说明：</strong></td>
                <td>
                    <asp:TextBox ID="txtfu" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="全部付款和部分付款说明不能为空!" ControlToValidate="txtfu"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>退款说明：</strong></td>
                <td>
                    <asp:TextBox ID="txttui" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="退款说明不能为空!" ControlToValidate="txttui"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>已发货说明：</strong></td>
                <td> <asp:TextBox ID="txtfahuo" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="已发货说明不能为空!" ControlToValidate="txtfahuo"></asp:RequiredFieldValidator></td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>本人签收说明：</strong></td>
                <td>
                    <asp:TextBox ID="txtSign" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="本人签收说明不能为空!" ControlToValidate="txtSign"></asp:RequiredFieldValidator>
                </td>
            </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>他人签收说明：</strong></td>
                <td>
                    <asp:TextBox ID="txtOtSign" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="他人签收说明不能为空!" ControlToValidate="txtOtSign"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>未签收,未发货说明：</strong></td>
                <td> <asp:TextBox ID="txtN" runat="server"  class="l_input" TextMode="MultiLine" Height="82px" Width="333px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="未签收,未发货说明不能为空!" ControlToValidate="txtN"></asp:RequiredFieldValidator></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
    <tr>
        <td align="left" style="height: 59px">
            &nbsp; &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server"  onclick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='../shop/profile/HonorManage.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
