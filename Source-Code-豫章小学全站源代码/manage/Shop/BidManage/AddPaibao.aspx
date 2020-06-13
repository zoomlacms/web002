<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BidManage_AddPaibao, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>宝点套餐</title>

    <link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/Common.js" type="text/javascript"></script>
    <script src="/JS/calendar.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span>竞拍管理</span> &gt;&gt;
        <span><a href="BuyPaiBao.aspx">宝点套餐</a></span> &gt;&gt; <span>添加套餐</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="spacingtitle">
                    <asp:Label ID="Label1" runat="server" Text="添加套餐"></asp:Label>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    套餐名称：
                </td>
                <td>
                    <asp:TextBox ID="txt_Tname" class="l_input" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    赠送玩点数：
                </td>
                <td>
                    <asp:TextBox ID="txtPoint" class="l_input" runat="server" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    显示图片 ：
                </td>
                <td>
                    <asp:TextBox ID="txt_Timg" class="l_input" runat="server" Width="263px"></asp:TextBox>
                    <iframe id="bigimgs" style="top: 2px" src="../FileUpload.aspx?menu=txt_Timg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    兑换比例(金钱/宝点)：
                </td>
                <td>
                    <asp:TextBox ID="txt_Tform" class="l_input" runat="server" Width="68px">1</asp:TextBox>/<asp:TextBox 
                        ID="txt_Ito" class="l_input" runat="server" Width="66px">1</asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    套餐说明 ：
                </td>
                <td>
                    <asp:TextBox ID="txt_Tinfo" class="l_input" runat="server" Width="395px" 
                        Height="143px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            
            <tr class="tdbg">
                <td height="22" class="tdbgleft" align="right" style="width: 24%">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" class="C_input" style="width:110px;"  runat="server" Text="添加套餐" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" class="C_input" style="width:110px;"  runat="server" 
                        Text="返回" CausesValidation="false" onclick="Button2_Click" />
                    <asp:HiddenField ID="txt_Tnum" runat="server" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
