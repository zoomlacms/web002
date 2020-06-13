<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_SelectTemp, App_Web_vqxd43kg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>生成模板</title>
<style type="text/css">
*{ margin:0px; padding:0px;}
*{margin: 0; padding: 0;}
.border, .TableWrap{border: 1px solid #9bbde6;background: #fff;}
.tdbg{	background: #f6fdf6;	/*line-height: 120%;*/	padding:2px;}
td{	line-height: 150%;}
body, th, td, input, button, textarea{	font-family: "宋体";	font-size: 12px;	margin-left: 0px;}
.title{	line-height: 22px;}
.title, .gridtitle, .spacingtitle, th{	background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;	/*line-height: 120%;*/	
padding:2px;	color: #1e860b;	font-weight: bold;
        }
.l_input{ line-height:18px;border:1px solid #0c6; }
.C_input{background: url('../../App_Themes/AdminDefaultTheme/images/input_bg.gif') repeat-x center;
margin: 2px;overflow: visible;border: 1px solid #8F9F56;cursor: pointer;  padding-top:3px;
    padding-left: 13px;
    padding-right: 14px;
    padding-bottom: 3px;
	}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; height: 100%" border="0" cellpadding="2" cellspacing="0"
                class="border">
                <tr style="height: 100%; width: 100%">                    
                    <td class="tdbg" align="left" valign="top" colspan="3" style="width: 70%;">
                       <%-- <iframe id="main_right" name="main_right" scrolling="yes" style="width: 100%; height: 100%"
                            src="SelectTemplate.aspx" frameborder="0" marginheight="0" marginwidth="1"></iframe>--%>
                     <iframe id="main_right" name="main_right" scrolling="yes" style="width: 100%;height:160px;" 
                            src="TemplateLi.aspx" frameborder="0" marginheight="0" marginwidth="1"></iframe>
                    </td>
                </tr>
                <tr class="title" style="height: 22; width: 177px">
                    <td style="width: 103px" align="right">
                        文件名称：</td>
                    <td align="left">
                        <input type="text" id="FileName" size="60" style="height:22px;" readonly="readOnly" class="l_input" />
                        <input type="hidden" id="ParentDirText"  />
                        <asp:HiddenField ID="HdnParentDir" runat="server" />
                    </td>
                    <td align="center" style="width: 177px">
                        <input type="button"  id="BtnSubmit" class="C_input" value="　确定　" onclick="javascript:window.close();add()" />
                        <input type="button"  id="BtnCancel" class="C_input" value="　取消　" onclick="javascript:window.close();" />
                    </td>
                </tr>
            </table>
        </div>
    </form>

    <script language="javascript" type="text/javascript">
    function add()
    {
        window.dialogArguments.document.getElementById('<%= FilePathInput %>').value = document.getElementById('FileName').value;
    }
    </script>

</body>
</html>
