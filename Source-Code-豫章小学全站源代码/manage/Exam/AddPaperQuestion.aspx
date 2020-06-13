<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddPaperQuestion, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>添加大题</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/pacalendar.js" type="text/javascript"></script> 
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/chinese.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a>&gt;&gt;<a href="Papers_System_Manage.aspx">试卷管理</a> &gt;&gt;<a href="Paper_QuestionManage.aspx">大题管理</a>
    &gt;&gt;<asp:Literal ID="liPaper" runat="server"></asp:Literal></div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加大题"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="标题："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_name" runat="server" class="l_input" Width="300px" ></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="标题不能为空!" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                   <asp:DropDownList ID="ddType" runat="server" Font-Size="12px"></asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label9" runat="server" Text="副标题："></asp:Label> 
                </td>
                <td class="bqright">
                      <asp:TextBox ID="txtSubTitle" runat='server' class="l_input"  Width="463px" 
                          Height="78px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="txt" runat="server" Text="序号："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_OrderBy" runat="server" class="l_input" Width="100px"></asp:TextBox>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="每小题分数："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtCourse" runat="server" class="l_input" Width="100px"></asp:TextBox><font color="red">（说明：该分值是每种题型包含小题的分数）</font>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="包含题数："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtNum" runat="server" class="l_input" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="答题说明："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtRemark" runat="server" class="l_input" TextMode="MultiLine" Height="123px" Width="306px"></asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="hfId" runat="server" />
             <asp:HiddenField ID="hfpaperId" runat="server" />
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" onclick="EBtnSubmit_Click"/> &nbsp;
                <input id="btnback" class="C_input" value="返回列表" style="width:50px;height:15px" onclick="location.href='Paper_QuestionManage.aspx?pid=<%=Request.QueryString["pid"] %>'" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
