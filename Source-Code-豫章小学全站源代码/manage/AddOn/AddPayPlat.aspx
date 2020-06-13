<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.AddOn.AddPayPlat, App_Web_s5nnx1p4" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
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
<div class="r_navigation">后台管理&gt;&gt;系统设置&gt;&gt;<a href="PayPlatManage.aspx">在线支付平台管理</a>&gt;&gt;<asp:Label  ID="LblAction" runat="server" Text="添加支付平台"></asp:Label></div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                <tr align="center">
                    <td class="spacingtitle" colspan="2">
                        <asp:Label ID="LblTitle" runat="server" Text="添加在线支付平台" />
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>接口类型：</strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DDLPayPlat" runat="server" Width="160px" AutoPostBack="True" OnSelectedIndexChanged="DDLPayPlat_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="DDLPayType" runat="server" Width="130px">
                        </asp:DropDownList>
                        <span style="color: black">* 必选</span>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                     <td>
                    </td>
                    <td id="alipay" runat="server" style="display:none">
                       支付宝网站(www.alipay.com)是国内先进的网上支付平台<br />
                       <strong>逐浪CMS</strong>联合支付宝推出支付宝接口
                       <a href="http://act.life.alipay.com/systembiz/zhulang/" target="_parent" style="color:Red">立即在线申请</a> 
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>支付名称：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="DDLPayName" runat="server" class="l_input"></asp:TextBox>
                        <span style="color: black">* 必填</span>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>商户ID：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAccountID" runat="server" class="l_input" />
                        <span style="color: black">* 必填</span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="商户ID不能为空！" ControlToValidate="TxtAccountID" Display="Dynamic" SetFocusOnError="True" />
                    </td>
                </tr>
                <tr id="trMD5Key" runat="server" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>安全校验码：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtMD5Key" runat="server" class="l_input" />
                        <span style="color: black">* 必填</span>         
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="安全校验码不能为空!" ControlToValidate="TxtMd5Key" Display="Dynamic" SetFocusOnError="true">  </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>卖家Email：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSellerEmail" runat="server" class="l_input" />
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtSellerEmail" Display="Dynamic" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">邮箱格式不正确</asp:RegularExpressionValidator>
                        <span style="color: black">如支付宝接口必须填写卖家Email,否则会出错</span>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>分成：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtRate" runat="server" Text="0" class="l_input" />%&nbsp;&nbsp<span  style="color: black">*此项如设置为10%，则商户得到90%</span>
                        <asp:RegularExpressionValidator runat="server" ID="Rev_1" ValidationExpression="^[0-9]\d*|0$" ControlToValidate="TxtRate" ErrorMessage="只能输入整数"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft">
                        <strong>备注：</strong>
                    </td>
                    <td>
                        <asp:TextBox ID="txtRemark" runat="server" Text="" class="l_input" TextMode="MultiLine"  Height="144px" Width="509px" />
                    </td>
                </tr>
            </table>
            
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                    <td align="center">
                        &nbsp;
                        <asp:HiddenField ID="HdnPayPlatID" runat="server" />
                        &nbsp;
                        <asp:Button ID="EBtnSubmit" Text="保存" OnClick="EBtnSubmit_Click" runat="server" class="C_input" />&nbsp;
                        &nbsp;
                        <input name="Cancel" type="button" id="BtnCancel" value="取消" onclick="window.location.href='PayPlatManage.aspx'"  class="C_input" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>