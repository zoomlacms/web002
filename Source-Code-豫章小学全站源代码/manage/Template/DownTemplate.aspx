<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_DownTemplate, App_Web_0medrxrm" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>下载方案</title>
<link href="/App_Themes/AdminDefaultgetoverTheme/Guide.css" type="text/css" rel="stylesheet" />
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
             document.getElementById("starttxt").innerHTML = "<font color=green><b>恭喜！下载完毕!</b></font>";
         }

         function clickdown() {
             document.getElementById("downimg").style.display = "";
             document.getElementById("Button1").value = "正在下载方案...请稍候!";
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
<div class="r_navigation">后台管理&gt;&gt;系统设置 &gt;&gt;<a href="TemplateSet.aspx">方案管理</a>&gt;&gt;<span> 下载方案</div>
<asp:HiddenField ID="hfIsExist" runat="server" />
<table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
    <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td colspan="2" class="spacingtitle">
            <asp:Label ID="LblTitle" runat="server" Text="下载方案" Font-Bold="True"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Panel ID="Panel1" runat="server">[<asp:Literal ID="tempname" runat="server"></asp:Literal>]下载中请耐心等待1-5分钟…
                <br />                    
                <div id="gallery">
                    <asp:Literal ID="tempimg" runat="server"></asp:Literal>
                </div>
                <div id="downimg" style="display:none"><img src="/images/ajax_loader.gif" /></div>
                <asp:Button ID="Button1" CssClass="C_input" runat="server" Text="我知道了,继续下载>>>"
                    OnClick="Button1_Click" OnClientClick="clickdown()" />
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <div id="starttxt" name="starttxt">
                    下载过程中请勿操作，否则可能会导致下载失败！
                    正在下载中...请稍候...<img src="../../User/Images/loading.gif" />
                </div>
                <asp:Literal ID="intallend" runat="server"></asp:Literal>
                <br />
                <asp:Button ID="Button3" CssClass="C_input" runat="server" Text="设置为默认方案"  onclick="Button3_Click" />
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