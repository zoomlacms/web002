<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_tags, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>标签分类</title>
<script src="/JS/jquery.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="/user/develop/Css/global.css" />
</head>
<body>
<div class='tips'><b>注：</b>引用标签时，请先选中要编辑的层，再点击所需标签。</div>
<form id="form1" runat="server">
<div id="LabelList">
<asp:Literal ID="PageClass" runat="server"></asp:Literal>
</div>
</form>
<div></div>
</body>
</html>
<script type="text/javascript">
    function cot(obj) {
        $(obj.nextSibling).show();
    }
    function cote(obj) {
        $(obj.nextSibling).hide();
    }
</script>