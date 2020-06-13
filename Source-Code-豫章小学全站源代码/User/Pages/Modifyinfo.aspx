<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_Modifyinfo, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>修改黄页信息</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
</head>
<body style="background: none">
<form id="form1" runat="server">
<div class="us_topinfo" style="width:98%">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="配置黄页" href="/User/Pages/Modifyinfo.aspx">配置黄页</a>
</div>
<div style="margin-top: 10px;">
<div class="us_seta" style="margin-top: 5px; ">
    <h1 style="text-align: center">
    <div> 配置信息设置</div>
    </h1>
    <table>
    <tr>
        <td> 黄页标题： </td>
        <td><asp:TextBox ID="Title" runat="server" class="input_out" Width="454px" /></td>
    </tr>
    <tr>
        <td> 菜单高度： </td>
        <td><asp:TextBox ID="HeadHeight" runat="server" class="input_out" Width="100px" />
        &nbsp;px </td>
    </tr>
    <tr>
        <td> 栏目背景图片： </td>
        <td><table border='0' cellpadding='0' cellspacing='1' width='100%'>
            <tr class='tdbg'>
            <td><asp:TextBox ID="HeadBackGround" runat="server" Width="320px"></asp:TextBox></td>
            </tr>
            <tr class='tdbg'>
            <td><iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=HeadBackGround" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td> 栏目背景颜色： </td>
        <td><asp:TextBox ID="HeadColor" runat="server" Width="101px"  class="input_out"></asp:TextBox></td>
    </tr>
    <tr>
        <td> KeyWords关键： </td>
        <td><asp:TextBox ID="KeyWords" runat="server" class="input_out" Width="454px" TextMode="MultiLine" Height="40px" /></td>
    </tr>
    <tr>
        <td> Description内容： </td>
        <td><asp:TextBox ID="Description" runat="server" class="input_out" Width="454px" TextMode="MultiLine" Height="40px" /></td>
    </tr>
    <tr>
        <td> 顶部HTML内容： </td>
        <td><asp:TextBox ID="TopWords" runat="server" class="input_out" Width="454px" TextMode="MultiLine" Height="80px" /></td>
    </tr>
    <tr>
        <td> 尾部HTML内容： </td>
        <td><asp:TextBox ID="BottonWords" runat="server" class="input_out" Width="454px" TextMode="MultiLine" Height="80px" /></td>
    </tr>
    <tr>
        <td style="text-align: center;" colspan="2" ><asp:Button ID="BtnSubmit" runat="server" Text="确认" class="i_bottom" onclick="BtnSubmit_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="BtnCancle" runat="server" Text="取消" class="i_bottom" CausesValidation="false" onclick="BtnCancle_Click" /></td>
    </tr>
    </table>
</div>
</div>
</form>
</body>
</html>