<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddSpec, App_Web_0tiy15lx" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加专题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="javascript"  type="text/JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1");
    var arrTabs = new Array("Tabs0", "Tabs1");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
 
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 系统设置 &gt;&gt; <a href="SpecialManage.aspx">专题类别管理</a> &gt;&gt;  <asp:Label ID="Label1" runat="server" Text="添加专题"></asp:Label></div>
  <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">基本信息</td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">专题选项</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
     <tbody id="Tabs0">
        <tr align="center">
            <td class="spacingtitle" colspan="2">
                <asp:Label ID="LblTitle" runat="server" Text="添加专题" />
            </td>
        </tr>
        <tr class="tdbg">
            <td style="width: 288px" class="tdbgleft">
                <strong>所属专题类别：</strong>
            </td>
            <td>
                <asp:Label ID="lblCate" runat="server" Text="Label"></asp:Label>
                <asp:HiddenField ID="HdnCateID" Value="0" runat="server" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 288px" class="tdbgleft">
                <strong>专题名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtSpecName" runat="server"  class="l_input"
                    ontextchanged="TxtSpecName_TextChanged" AutoPostBack="true" Columns="30"/>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="专题不能为空!" ControlToValidate="TxtSpecName" Display="Dynamic" SetFocusOnError="True" />
                <asp:HiddenField ID="HdnSpecID" Value="0" runat="server" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>专题标识名：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtSpecDir" class="l_input" runat="server" Columns="20"/>
                <span style="color: Blue">注意，目录名只能是字母、数字、下划线组成，首字符不能是数字
                <asp:RequiredFieldValidator ID="ValrCateDir" runat="server" ErrorMessage="专题标识名不能为空!" ControlToValidate="TxtSpecDir" Display="Dynamic" SetFocusOnError="True" />
            </td>
        </tr>
        
             <tr class="tdbg">
            <td class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <strong>专题图片地址：</strong>
            </td>
            <td>
                <asp:TextBox ID="txtSpeacPic" class="l_input"  runat="server" MaxLength="255"  Columns="50" />
            </td>
        </tr>
        
             <tr class="tdbg">
            <td class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <strong>专题提示：</strong>
            </td>
            <td>
                     <asp:TextBox ID="TxtSpeacTips"  class="l_input" runat="server" Columns="60"  Height="65px" Width="500px" Rows="2" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>  
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>
                
                专题说明：</strong></td>
            <td>
                <asp:TextBox ID="TxtSpecDesc" class="l_input" runat="server" Columns="50"  Height="65px" Width="500px" Rows="5" TextMode="MultiLine" />
            </td>
        </tr>
               <tr class="tdbg">
            <td class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <strong>专题META关键词:</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtSpeacKeyword" class="l_input" runat="server"  Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"/>
                 
            </td>
        </tr>
            <tr class="tdbg">
            <td class="tdbgleft" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <strong>
                专题META网页描述：
                
                </strong>
            </td>
            <td>
                <asp:TextBox ID="TxtSpeacDescriptive" class="l_input" runat="server"  Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"  />
            </td>
        </tr>
        </tbody>
        
        
        <tbody id="Tabs1" style="display: none">
        
        <tr class="tdbg">
            <td style="width: 288px" class="tdbgleft">
                <strong>打开方式：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
                    <asp:ListItem Value="1">新窗口打开</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="width: 288px" class="tdbgleft">
                <strong>专题列表页扩展名：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RBLFileExt" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                    <asp:ListItem Value="1">.htm</asp:ListItem>
                    <asp:ListItem Value="2">.shtml</asp:ListItem>
                    <asp:ListItem Value="3">.aspx</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg">
            <td style="width: 288px" class="tdbgleft">
                <strong>专题列表页文件名规则：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="RBLListFileRule" runat="server">
                    <asp:ListItem Selected="True" Value="1">专题类别目录/专题目录/List_专题ID_PageIndex</asp:ListItem>
                    <asp:ListItem Value="2">专题类别目录/List/List_专题ID_PageIndex</asp:ListItem>
                    <asp:ListItem Value="3">Special/List_专题ID_PageIndex</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 288px" class="tdbgleft">
                <strong>专题列表页模板：</strong>
            </td>
            <td>
                <asp:TextBox ID="TxtListTemplate" class="l_input" runat="server" Columns="50"></asp:TextBox>
                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtListTemplate')+'&FilesDir=',650,480)" class="C_input" style="width:100px;"/>
            </td>
        </tr>
           
        
        </tbody>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" OnClick="EBtnSubmit_Click" runat="server" />&nbsp; &nbsp;
                <input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消" onclick="window.location.href='SpecialManage.aspx'" />
              
            </td>
        </tr>
    </table>
    </form>
</body>
</html>