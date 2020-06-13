<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profileConfige_SmellCashConfige, App_Web_w1dcdbqq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>小额兑现信息配置</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a>返利信息配置</a></span> 
        &gt;&gt;<span>小额兑现信息配置</span></div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr>
            <td class="spacingtitle" align="center">
                <asp:Literal ID="LTitle" runat="server" Text="修改小额兑现信息配置"></asp:Literal>
            </td>
        </tr>
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
              <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>返利金额：</strong></td>
                    <td>
                        <asp:TextBox ID="txtAcou" runat="server"  class="l_input"></asp:TextBox>(即最少返利金额)
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="返利金额不能为空!" ControlToValidate="txtAcou"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td class="tdbgleft"><strong>兑现金额：</strong></td>
                    <td>
                        <asp:TextBox ID="txtCash" runat="server"  class="l_input"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="兑现金额不能为空!" ControlToValidate="txtCash"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                   <td class="tdbgleft"><strong>注意事项：</strong></td>
                   <td>
                    <textarea cols="80" id="info" width="580px" height="200px" name="infoeditor" rows="10" runat="server"></textarea>
                        <script id="Script2" type="text/javascript">
                            //<![CDATA[
                            CKEDITOR.replace('info',
                        {
                            skin: 'v2',
                            enterMode: 2,
                            shiftEnterMode: 2,
                            toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                        });
                            //]]>
                        </script>
                    </td>
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
                <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='../profile/HonorManage.aspx'" id="Button2" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
