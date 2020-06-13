<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.SpecBatchSet, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>专题批量设置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script language="JavaScript" type="text/JavaScript">
    function SelectAll() {
        for (var i = 0; i < document.getElementById('<%=LstSpec.ClientID%>').length; i++) {
            document.getElementById('<%=LstSpec.ClientID%>').options[i].selected = true;
        }
    }
    function UnSelectAll() {
        for (var i = 0; i < document.getElementById('<%=LstSpec.ClientID%>').length; i++) {
            document.getElementById('<%=LstSpec.ClientID%>').options[i].selected = false;
        }
    }
</script>

</head>
<body>
    <form id="form1" runat="server">
<div class="column">
     <div class="columntitle">当前位置：功能导航 >>专题批量设置
     </div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
<tr class="tdbg">
    <td valign="top" align="center" style="width: 213px">
    <table>
        <tr>
            <td align="left">
                <span style="color: Red">提示：</span>可以按住“Shift”<br />
                或“Ctrl”键进行多个节点的选择
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:ListBox ID="LstSpec" runat="server" DataTextField="SpecName" DataValueField="SpecID" SelectionMode="Multiple" Height="282px" Width="100%"></asp:ListBox>
            </td>
        </tr>
        <tr>
            <td align="center">
                <input id="BtnSelectAll" onclick="SelectAll()" type="button" value="  选定所有专题  " class="button"/>
                <input id="BtnCancelAll" onclick="UnSelectAll()" type="button" class="button" value="取消选定所有专题" />
            </td>
        </tr>
    </table>
    </td>
    <td valign="top">
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tbody id="Tabs0" style="">
        <tr class="tdbg">
            <td style="width: 30px; text-align: left" class="tdbgleft">
                <asp:CheckBox ID="ChkOpenType" runat="server" />
            </td>
            <td style="width: 200px; text-align: left" class="tdbgleft">
                <strong>打开方式：</strong>
            </td>
            <td align=left>
                <asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
                    <asp:ListItem Value="1">新窗口打开</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="width: 30px; text-align: left" class="tdbgleft">
                <asp:CheckBox ID="ChkTemp" runat="server" />
            </td>
            <td style="width: 200px; text-align: left" class="tdbgleft">
                <strong>列表页模板：</strong>
            </td>
            <td align=left>
                <asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" class="button" />
            </td>
        </tr>
    </tbody>
    <tr class="tdbg">
        <td colspan="3" class="tdbgleft" align=left>
            <font color="blue">说明：</font><br />
            1、若要批量修改某个属性的值，请先选中其左侧的复选框，然后再设定属性值。<br />
            2、这里显示的属性值都是系统默认值，与所选节点的已有属性无关
        </td>
    </tr>
</table>
    </td>
</tr>
<tr align="center">
<td colspan="2" >
    <asp:Button ID="EBtnBacthSet" Text="执行批处理" OnClick="EBtnBacthSet_Click" runat="server" class="button"/>
    &nbsp;&nbsp;<asp:Button ID="BtnCancel" runat="server" Text="取消" OnClick="BtnCancel_Click" class="button" />
</td>
</tr>
</table>
</div>
</form>
</body>
</html>
