<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_ExportExcel, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>导入数据</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function actioninput() {
        alert("导入成功!");
        parent.Dialog.close();
    }

</script>
</head>
<body id="Guidebody" style="margin-left: 0px; margin-right: 0px; margin-top: 1px; margin-bottom: 0px">
    <form id="formGuide" runat="server">
    <div id="Div1">
       文件模版下载:Excel模版<br /><br />
       导入文件类型:<asp:DropDownList ID="type" runat="server" AutoPostBack="True"><asp:ListItem Value="1">Excel文件</asp:ListItem></asp:DropDownList><br /><br /><asp:HiddenField ID="HdnPath" runat="server" />
       导入文件地址:<asp:FileUpload runat="server" ID="FileUpload1" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button   runat="server" ID="Export"  class="C_input" Text="导入文件"  onclick="Export_Click" />
        <input id="Button1" type="button" value="取消导入" onclick="parent.Dialog.close();" class="C_input" />
    </div>
    </form>
</body>
</html>
