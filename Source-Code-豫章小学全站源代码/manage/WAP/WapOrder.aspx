<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_WapOrder, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 25%;
        }
        .style2
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 25%;
            height: 10px;
        }
        .style3
        {
            height: 10px;
        }
        .style4
        {
            color: #1e860b;
            font-weight: bold;
            line-height: 22px;
            letter-spacing: 8px;
            padding: 2px;
            background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;
        }
    </style>
      <script>
          function addwin(pathimg) {
              //window.showModalDialog("/systemManage/knowledge/addList.jsp", window, "dialogHeight=350px; dialogWidth=550px; status:no;scroll:no;toolbar= no, menubar=no,resizable=no, location=no")
              window.open("../Upload_Photo.asp?PhotoUrlID=0&delpath=" + pathimg, "addclasswindow", "height=150, width=360, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
          }
          function clearpic() {

              Form1.img.src = '../UploadFiles/no.gif'
              Form1.siteimg.value = 'UploadFiles/no.gif'
          }
          function storeCaret() {
              var textEl = Form1.top;
              if (textEl.createTextRange)
                  textEl.caretPos = document.selection.createRange().duplicate();
          }
          function addubb(ubb) {
              //Form1.top.value=Form1.top.value+ubb;
              var textEl = document.getElementById("tx_info");
              var text = ubb;
              if (textEl.createTextRange && textEl.caretPos) {
                  var caretPos = textEl.caretPos;
                  caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
              }
              else
                  textEl.value = textEl.value + text;

          }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>WAP管理</span> &gt;&gt; 添加节点
        <asp:HiddenField ID="HiddenNodeid" runat="server" />
        <asp:HiddenField ID="HiddenMenu" runat="server" />
        <asp:HiddenField ID="Hiddenoid" runat="server" />
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td colspan="2" class="style4" >
                    添加节点    
                </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right" width="250">
                    类型：</td>
                <td>  
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatColumns="3" 
                        onselectedindexchanged="RadioButtonList3_SelectedIndexChanged" 
                        AutoPostBack="True" >
                        <asp:ListItem Selected="True" Value="1">栏目</asp:ListItem>
                        <asp:ListItem Value="2">UBB标签</asp:ListItem>
                        <asp:ListItem Value="3">WML标签</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style2" align="right">
                    栏目摆放位置：</td>
                <td class="style3">  
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="3" Height="16px" 
                        onselectedindexchanged="RadioButtonList2_SelectedIndexChanged">
                        <asp:ListItem Selected="True" Value="1">顶部</asp:ListItem>
                        <asp:ListItem Value="2">中部</asp:ListItem>
                        <asp:ListItem Value="3">底部</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
          
             <tr class="WebPart" id="sw" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right" runat="server">
                  栏目名称：
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                   
                    </td>
            </tr>
              <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td id="Td1" height="22" class="style1" align="right" runat="server">
                    栏目显示名或标签标示名：                 </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="212px" class="l_input"></asp:TextBox>
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="不能为空" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                   
                    </td>
            </tr>
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right">
                    <asp:Label ID="Label1" runat="server" Text="前缀"></asp:Label>：&nbsp;
                </td>
                <td>
                      <asp:TextBox ID="tx_info" runat="server" Height="114px" 
                        TextMode="MultiLine" Width="342px" class="l_input"></asp:TextBox>支持UBB标签
                 </td>
            </tr>
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right">
                    <strong></strong>
                </td>
                <td>
              <iframe id="frame1" src="ubb.htm"     frameborder=0 height="250" scrolling=yes width="100%"></iframe>
                </td>
            </tr>
                <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    是否换行：
                
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="2">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                   </td>
            </tr>
              <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                   栏目排序号：
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="31px" class="l_input"></asp:TextBox>
                    数字越大越在前面.</td>
            </tr>
             <tr class="WebPart">
                <td height="22" class="style1" align="right">
                    <strong></strong>
                </td>
                <td>
                    <asp:Button ID="Button1" class="C_input" runat="server"  Text="提交" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
