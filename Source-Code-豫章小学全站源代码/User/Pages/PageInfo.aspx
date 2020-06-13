<%@ page language="C#" autoeventwireup="true" inherits="User_Pages_PageInfo, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>注册企业黄页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="Stylesheet" type="text/css" href="../../App_Themes/UserThem/user_user.css" />
<link rel="Stylesheet" type="text/css" href="/Plugins/Ckeditor/EditFile/sample.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script type="text/javascript" src="/js/RiQi.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/EditFile/sample.js"></script>
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript">
    function SelectValues(ModelID, id) {
        window.open('/Common/OptionManage.aspx?id=' + id + '&ModelID=' + ModelID, '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
    您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server"
        Text="Label"></asp:Label></a> &gt;&gt; <a title="会员中心" href="/User/Default.aspx"
            target="_parent">会员中心</a> &gt;&gt; <a title="注册企业黄页" href="/User/Pages/RegProUser.aspx">
                注册企业黄页</a>
</div>
<div class="us_seta" style="margin-top: 10px;">
    <asp:Label ID="Label1" runat="server" Text="● 由于您未申请和提交黄页信息,下面我们来花三分钟来注册企业黄页"></asp:Label>
</div>
<div class="us_seta" style="margin-top: 10px; float: left;" id="regpage" runat="server">
    <h1 style="text-align: center">
        <asp:Label ID="Label2" runat="server" Text="注册企业黄页"></asp:Label>
    </h1>
    <table>
        <tr>
            <td style="width: 30%; line-height: 30px; height: 30px; text-align: right;">
                会员账号:
            </td>
            <td style="width: 70%; line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:Label ID="Username" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 30%; line-height: 30px; height: 30px; text-align: right;">
                黄页类型:
            </td>
            <td style="width: 70%; line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:RadioButtonList ID="Styleids" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                    Height="24px" RepeatColumns="4" Style="margin-top: 0px; padding-top: 0px; line-height: 30px">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 30%; line-height: 30px; height: 30px; text-align: right;">
                企业名称:
            </td>
            <td style="width: 70%; line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:TextBox ID="Proname" runat="server" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35%; line-height: 30px; height: 30px; text-align: right;">
                二级域名:
            </td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:TextBox ID="SeDomain" runat="server" Width="300px"></asp:TextBox>
                .<%=ZoomLa.Components.SiteConfig.SiteOption.freedomain%>
            </td>
        </tr>
        <tr>
            <td style="width: 35%; line-height: 30px; height: 30px; text-align: right;">
                企业LOGO:
            </td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <table border='0' cellpadding='0' cellspacing='1' width='100%'>
                    <tr class='tdbg'>
                        <td>
                            <asp:TextBox ID="txt_logos" runat="server" Width="300px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class='tdbg'>
                        <td>
                            <iframe id="Iframe1" src="/Common/UserUpload.aspx?FieldName=txt_logos" marginheight="0"
                                marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 35%; line-height: 30px; height: 30px; text-align: right;">
                企业说明:
            </td>
            <td style="line-height: 30px; height: 30px; padding-left: 5px; text-align: left;">
                <asp:TextBox ID="PageInfo" runat="server" Height="176px" TextMode="MultiLine" Width="463px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35%; line-height: 30px; height: 30px; text-align: right;">
                快速栏目样式分配：
            </td>
            <td>
                <asp:DropDownList ID="Styleid" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <ul>
        <li style="padding-left: 15%;">&nbsp;<asp:Literal ID="ModelHtml" runat="server"></asp:Literal></li>
        <li style="text-align: right; float: right; line-height: 30px"></li>
        <li style="float: right; line-height: 30px; text-align: center"></li>
    </ul>
    <table>
        <tr>
            <td colspan="2" style="padding-left: 250px;">
                <asp:HiddenField ID="HdnNode" runat="server" />
                <asp:HiddenField ID="HdnID" runat="server" />
                <asp:HiddenField ID="HdnModel" runat="server" />
                <asp:Button ID="BtnSubmit" runat="server" Text="提交我的黄页信息" />
                &nbsp;&nbsp;
                <input id="Button1" type="button" value="取消" onclick="location.href='../MyInfo.aspx';" />
            </td>
        </tr>
    </table>
</div>
<div class="us_seta" style="margin-top: 10px; line-height: 28px; padding-left: 20px;"
    id="Auditing" runat="server">
    正在审核中......! 请等待管理员开通您的黄页功能! <a href=""></a>
    <br />
    <asp:LinkButton ID="LinkButton1" runat="server" >修改我提交的企业信息!</asp:LinkButton>
    <br />
    <br />
    <br />
</div>
<div class="clear"></div>
</form>
</body>
</html>
