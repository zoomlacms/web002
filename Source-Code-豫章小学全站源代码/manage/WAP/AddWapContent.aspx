<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_AddWapContent, App_Web_emowutw1" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>VIP卡管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
 <script src="/JS/Common.js" type="text/javascript"></script>
   <script src="/JS/calendar.js"></script> 
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

    <style type="text/css">
        .style1
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 194px;
        }
        .style2
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 194px;
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
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>WAP管理</span> &gt;&gt; 添加文章
        <asp:HiddenField ID="HiddenNodeid" runat="server" />
        <asp:HiddenField ID="HiddenMenu" runat="server" />
        <asp:HiddenField ID="Hiddenoid" runat="server" />
    </div>
    <div class="clearbox">
    </div>
    <div>
        <table width="100%" cellpadding="2" cellspacing="1" border="0" class="r_navigation">
            <tr align="center">
                <td colspan="2" class="style4" >
                    添加文章    
                </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right">
                    标题：</td>
                <td>  
                   <asp:TextBox ID="TextBox5" runat="server" class="l_input"></asp:TextBox></td>
            </tr>
            <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style2" align="right">
                    作者：</td>
                <td class="style3">  
                   <asp:TextBox ID="TextBox4" runat="server" class="l_input"></asp:TextBox></td>
            </tr>
          
             <tr class="WebPart" id="sw" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td id="Td1" height="22" class="style1" align="right" runat="server">
                    来源：
                </td>
                <td>
                   <asp:TextBox ID="TextBox3" runat="server" class="l_input"></asp:TextBox></td>
            </tr>
              <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td id="Td2" height="22" class="style1" align="right" runat="server">
                    关键字：                 </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" class="l_input"></asp:TextBox>
                  </td>
            </tr>
               <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    查看权限：
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3">
                        <asp:ListItem Value="1" Selected="True">游客</asp:ListItem>
                          <asp:ListItem Value="2">会员</asp:ListItem>
                        <asp:ListItem Value="3">vip</asp:ListItem>
                    </asp:RadioButtonList> 
                    查看金币<asp:TextBox ID="tx_Points" runat="server" Width="33px" class="l_input" ></asp:TextBox></td>
            </tr>
             <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" class="style1" align="right">
                   置顶：
                </td>
                <td>
                      <asp:CheckBox ID="CheckBox1" runat="server" />
                      文章置顶</td>
            </tr>
                <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                    文章评级：
                
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="3">
                        <asp:ListItem Selected="True" Value="1">普通文章</asp:ListItem>
                        <asp:ListItem Value="2">推荐文章</asp:ListItem>
                        <asp:ListItem Value="3">精品文章</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            </tr>
              <tr class="WebPart" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="style1" align="right">
                   内容：
                </td>
                <td>
                    <asp:TextBox ID="tx_info" class="l_input" runat="server" Height="147px" Width="398px" 
                        TextMode="MultiLine"></asp:TextBox>
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
             <tr class="WebPart"ss>
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
