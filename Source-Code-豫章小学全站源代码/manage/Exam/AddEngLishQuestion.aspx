<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_Question_AddEngLishQuestion, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑试题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script src="../Common/Common.js" type="text/javascript"></script>
<script src="/JS/calendar.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" src="../../js/Drag.js"></script>
<script type="text/javascript" src="../../js/Dialog.js"></script>
<script type="text/javascript">
function AddQues() {
    var pid = document.getElementById("hfpid").value;
    var diag = new Dialog();
    diag.Width = 800;
    diag.Height = 600;
    diag.Title = "添加试题<span style='font-weight:normal'>[ESC键退出当前操作]</span>";
    diag.URL = "QuestionSelect.aspx?p_Id=" + pid;
    diag.show();
}
</script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt; <a href="QuestionManage.aspx">试题管理</a> &gt;&gt; <span>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">       
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="hits_txt" runat="server" Text="考点名称："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlKnow" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="试题标题："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtP_title" runat="server" class="l_input" Width="434px"></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="试题标题不能为空!"
                        ControlToValidate="txtP_title"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="hfC_Id" runat="server" Value="" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="难度："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div style="width: auto; float: left">
                        <asp:RadioButtonList ID="rblDiff" runat="server" RepeatDirection="Horizontal" Height="22px"
                            Width="277px">
                            <asp:ListItem Selected="True" Value="1">基础</asp:ListItem>
                            <asp:ListItem Value="2">容易</asp:ListItem>
                            <asp:ListItem Value="3">中等</asp:ListItem>
                            <asp:ListItem Value="4">偏难</asp:ListItem>
                            <asp:ListItem Value="5">极难</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="缺省分数："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                       <asp:TextBox ID="txtDefaSocre" runat="server" class="l_input"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label12" runat="server" Text="试题内容："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright"> 
                <div style="color:Red">名词约定 <br />声明：  为更好在网页显示效果，请配合名词约定，该约定与HTML语法一致。<br />
                    1，“&amp;nbsp;”或“&#160;”表示空格；<br />2，“&lt;br/&gt;”表示换行。<br />
                    3，关于填空题：使用“()”表示填空位置；
                </div>  
                    <div id="content1" runat="server">
                        <asp:TextBox ID="txtP_Content" runat="server" class="l_input"  TextMode="MultiLine" Height="373px" Width="670px"></asp:TextBox>
                        &nbsp;<font color="red">*</font>
                       <script type="text/javascript">
                           KE.show({
                               id: 'txtP_Content'
                           });
                         </script>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="试题内容不能为空!" ControlToValidate="txtP_Content"></asp:RequiredFieldValidator>
                    </div>
                </td>
            </tr>          
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="试题信息："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                <div id="tip" runat="server" style="color:Red"></div>
                        <div id="num1" runat="server">
                        选项：<asp:DropDownList ID="ddlNumber1" runat="server" AutoPostBack="true" onselectedindexchanged="ddlNumber1_SelectedIndexChanged"> 
                            <asp:ListItem Value="1">1</asp:ListItem>                          
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList><asp:Literal ID="Tips" runat="server"  ></asp:Literal>
                        </div>
                        <div id="optionDiv" runat="server">     
                        </div>
                </td>
            </tr>          
        </tbody>
        <tbody id="Tabs1">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="答案：" ></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">                                    
                     <div id="anwDiv" runat="server"></div>  
                     <div id="DivQues" align="left" runat="server" visible="false">
                     <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                        <tr align="center" class="title"><td>题型</td><td>内容</td><td>分数</td><td>操作</td></tr>
                         <asp:Repeater ID="Repeater1" runat="server">
                         <ItemTemplate>
                         <tr align="center" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td><%#GetTypename(Eval("p_Type","{0}"))%></td>
                            <td><%#GetContent(Eval("p_Content", "{0}"))%></td>
                            <td><%#Eval("p_defaultScores")%></td>
                            <td><a href="QuestionSelect.aspx?id=<%#Eval("p_id") %>">修改</a> <a href="?menu=del&p_Id=<%#Eval("p_id") %>">删除</a></td>
                         </tr>
                         </ItemTemplate>
                        </asp:Repeater>
                     </table>
                       
                    </div>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label11" runat="server" Text="试题解析："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtJiexi" runat="server" TextMode="MultiLine" 
                        CssClass="l_input" Height="61px" Width="440px"></asp:TextBox>
                </td>
            </tr>
              <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label8" runat="server" Text="排序："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Order" runat="server" CssClass="l_input" Text="0"></asp:TextBox>
                </td>
            </tr>             
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label7" runat="server" Text="是否共享："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div style="width: auto; float: left">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Height="22px">
                            <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                            <asp:ListItem Value="1">是</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </td>
            </tr>
            <tr class="tdbg" id="lujin" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" runat="server">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label10" runat="server" Text="视频路径："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                <asp:TextBox ID="txtFile" runat="server" class="l_input" Enabled="false" Width="300px"></asp:TextBox><br />
                      &nbsp;<asp:FileUpload ID="fileUploadTemplate" runat="server" CssClass="btn"/>
                          <asp:HiddenField ID="HdnPath" runat="server" />
                </td>
            </tr>
            <tr class="tdbg" id="shumi" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right">说明：</td>
                <td><asp:TextBox runat="server" ID="shuming" class="l_input" cols="40" rows="6" Height="80px" Width="500px" ></asp:TextBox></td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="hfC_ClassId" runat="server" />
            <asp:HiddenField  ID="hfpid" runat='server'/>
            <asp:HiddenField ID="hffilename" runat="server" />
            <asp:HiddenField ID="hfoption" runat="server" />
            <asp:HiddenField ID="hfanw" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存试题" OnClick="EBtnSubmit_Click"
                    runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回" OnClick="BtnBack_Click"
                    UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
