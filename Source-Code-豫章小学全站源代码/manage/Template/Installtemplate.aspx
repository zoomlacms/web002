<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_Installtemplate, App_Web_0medrxrm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>安装方案</title>
<link href="/App_Themes/AdminDefaultgetoverTheme/Guide.css" type="text/css"  rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="/js/lightbox2.02/css/lightbox.css" type="text/css" media="screen" />
<script src="/js/lightbox2.02/js/prototype.js" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/scriptaculous.js?load=effects" type="text/javascript"></script>
<script src="/js/lightbox2.02/js/lightbox.js" type="text/javascript"></script>
<script type="text/javascript">        
    var wida = 0;
    function getover() {
        setwidth();
    }

    function setwidth() {
        document.getElementById("starttxt").innerHTML = "<font color=green><b>恭喜！安装完毕!</b></font>";
    }

    function clickinstall() {
        document.getElementById("installimg").style.display = "";
        document.getElementById("Button1").value = "正在安装方案...请稍候!";
        //document.getElementById("Button1").disabled = true; 
    }
</script>
<style type="text/css">
#gallery {
	padding: 10px;
	width: 100%;
}
#gallery ul { list-style: none; }
#gallery ul li { display: inline; }
#gallery ul img {
	border: 5px solid #3e3e3e;
	border-width: 5px 5px 20px;
}
#gallery ul a:hover img {
	border: 5px solid #fff;
	border-width: 5px 5px 20px;
	color: #fff;
}
#gallery ul a:hover { color: #fff; }
</style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="TemplateSet.aspx">方案管理</a>&gt;&gt; 安装方案</div>

<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="LblTitle" runat="server" Text="安装方案" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server">
                接下来将安装方案《<asp:Literal ID="tempname" runat="server"></asp:Literal>》，安装后会将您的节点、模型及模型字段<font color="red">清除</font>，并置入方案默认数据！安装前请确认您已<font color="green">备份</font>好数据，以防丢失数据。
                <br />
                <div id="gallery">
                <asp:Literal ID="tempimg" runat="server"></asp:Literal>
                </div>
                <div id="installimg" style="display:none" name="installimg">
                    <img src="/images/ajax_loader.gif" />
                </div>
                <br />
                <asp:Button ID="Button1" CssClass="C_input" runat="server" Text="我知道了，我已备份好数据。继续安装>>>"
                    OnClick="Button1_Click" OnClientClick="clickinstall()" />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                安装过程中请勿点击上一步，否则可能会导致安装失败！<br />
                <br />
                <div id="starttxt" name="starttxt">
                    正在安装中...请稍候...<img src="../../User/Images/loading.gif" /></div>
                <br />
                <asp:Button ID="Button3" CssClass="C_input" runat="server" Text="关闭" OnClientClick="parent.Dialog.close();return false;" />
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <asp:Literal ID="installstart" runat="server"></asp:Literal>
            </asp:Panel>
        </td>
    </tr>
</table>
</form>
</body>
</html>
