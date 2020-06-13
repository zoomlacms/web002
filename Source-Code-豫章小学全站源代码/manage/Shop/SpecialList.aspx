<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.Web.Site.Content.SpecialList, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>选择专题</title>

    <base target="_self" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function category(){alert("你选择的是专题类别，请选择专题！");}
function SetSpec(specname,specid)
{
    var isMSIE= (navigator.appName == "Microsoft Internet Explorer");
    if(isMSIE)
    {
        window.returnValue =specid + "," + specname;
        window.close();
    }
    else
    {
        opener.UpdateSpecial(specid + "," + specname);
        window.close();
    }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TreeView ID="tvNav" runat="server" ExpandDepth="0" ShowLines="True" EnableViewState="false" NodeIndent="10" ImageSet="XPFileExplorer" Width="294px">
        <NodeStyle BorderStyle="None" />
    </asp:TreeView>
    </div>
    <br />
    <br />
    <div style="color: Red">
        只能添加到专题中，不能添加到专题类别中</div>
    </form>
</body>
</html>
