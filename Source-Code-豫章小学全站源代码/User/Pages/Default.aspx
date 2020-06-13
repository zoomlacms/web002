<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.Content._Default, App_Web_rxwiir5w" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>会员中心>> 内容管理</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
//** iframe自动适应页面 **//
//输入你希望根据页面高度自动调整高度的iframe的名称的列表
//用逗号把每个iframe的ID分隔. 例如: ["myframe1", "myframe2"]，可以只有一个窗体，则不用逗号。

//定义iframe的ID
//alert("begin");
var iframeids = ["contentright"];
//如果用户的浏览器不支持iframe是否将iframe隐藏 yes 表示隐藏，no表示不隐藏
var iframehide = "yes";
function dyniframesize() {
    for (i = 0; i < iframeids.length; i++) {
        if (document.getElementById) {
            var dyniframe = document.getElementById(iframeids[i]);
            if (dyniframe && !window.opera) {
                dyniframe.style.display = "block";
                if (dyniframe.contentDocument && dyniframe.contentDocument.body.offsetHeight) //如果用户的浏览器是NetScape
                {
                    dyniframe.style.height = (dyniframe.contentDocument.body.offsetHeight + 5) + "px";
                }
                else if (dyniframe.Document && dyniframe.Document.body) //如果用户的浏览器是IE
                {
                    if (dyniframe.Document.body.scrollHeight) {
                        dyniframe.style.height = dyniframe.Document.body.scrollHeight + 5;
                    }
                }
            }
        }
        //根据设定的参数来处理不支持iframe的浏览器的显示问题
        if ((document.all || document.getElementById) && iframehide == "no") {
            var tempobj = document.all ? document.all[iframeids[i]] : document.getElementById(iframeids[i]);
            tempobj.style.display = "block";
        }
    }
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div class="us_topinfo" style="margin-top: 0px;">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="信息管理" href="Default.aspx">企业黄页</a></div>
<div style="width: 100%">
<div style="width: 25%; float: left">
<iframe frameborder="0" width="100%" height="500px" src="NodeTree.aspx" scrolling="auto" id="main_left" name="main_left"></iframe>
</div>
<div style="width: 75%; float: left">
<iframe width="100%" height="500px" onload="dyniframesize()" ondatabinding="dyniframesize()" src="MyContent.aspx" frameborder="0" name="main_right1" id="main_right1"></iframe>
</div>
</div>
</div>
</body>
</html>