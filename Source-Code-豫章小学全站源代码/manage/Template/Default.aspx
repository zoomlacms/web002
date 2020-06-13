<%@ page language="C#" autoeventwireup="true" inherits="manage_Template_Default, App_Web_balgrtw4" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>可视化窗口</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript" src="/JS/Popmenu.js"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>       
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script language="javascript">

    function createEditor() {
        var editor;
        var html = document.getElementById('textContent').value;
//        if (document.getElementById("buttons").value == "返回代码编辑") {
            document.getElementById('textContent').style.display = "none";
            editor = CKEDITOR.replace('<% =textContent.ClientID %>',
        {
            skin: 'v2',
            enterMode: 2,
            shiftEnterMode: 2,
            width: "100%", height: 510,
            toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
        });
        editor.setData(html);
//        }
    }
</script>
</head>
<body onload="createEditor()">
    <form id="form1" runat="server">
    <asp:HiddenField ID="hffilename" runat="server" />
     <div id="Textarea">
        <asp:TextBox TextMode="MultiLine" runat="server" ID="textContent" Style="border: solid 1px #8EC1EE"
            Width="100%" Height="435px"></asp:TextBox>
    </div>
      <%--<asp:Button ID="buttons"  runat="server" Text="返回代码编辑" class="C_input"  onclick="btn_Click" />--%>
    </form>    
</body>
</html>
