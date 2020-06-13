<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_AddCourseware, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加试听文件</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="../../../JS/Dialog.js"></script>
   <script language="javascript">
        function Openwin() {
            var diag = new Dialog();
            diag.Modal = false;
            diag.Width = 800;
            diag.Height = 450;
            diag.Title = "选择分类";
            diag.URL = "SelectTeacherName.aspx";
            diag.show();
        }
    </script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt;<a href="CoureseManage.aspx">课程管理</a>
    &gt;&gt;<a href="AddCourseware.aspx?CourseID=<%=Request.QueryString["CourseID"] %>"><asp:Literal ID="liCoures" runat="server"></asp:Literal></a><span></div>

    <div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">
        <td width="25%">课件名称</td>
        <td width="10%">主讲人</td>
        <td width="10%">设计者</td>
        <td width="8%">课件次序</td>
        <td width="25%">试听地址</td>
        <td width="6%">试听</td>
        <td width="20%" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <%#Eval("Courseware")%>
                </td>
                <td align="center"><%#Eval("Speaker")%></td>
                <td align="center"><%#Eval("SJName")%></td>
                <td height="22" align="center">
                    第<%#Eval("CoursNum")%>讲
                </td>
                <td height="22" align="center">
                    <a href="<%#Eval("FileUrl")%>" target="_blank"><%#Eval("FileUrl")%></a>
                </td>
                <td height="22" align="center">
                <%#GetListon(Eval("Listen", "{0}"))%>
                </td>
                <td height="22" align="center">               
                    <a href="AddCourseware.aspx?CourseID=<%=Request.QueryString["CourseID"] %>&id=<%#Eval("ID")%>">修改</a>&nbsp;<a href="AddCourseware.aspx?CourseID=<%=Request.QueryString["CourseID"] %>&id=<%#Eval("ID")%>&menu=del" onclick="return confirm('确实要删除此课程吗？');">删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td height="22" colspan="9" align="center" class="tdbg">
          共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
        </td>
    </tr>
</table>
    </div>
<div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="添加课件"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
               
                    <asp:Label ID="ssjd_txt" runat="server" Text="课件主题："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Courename" runat="server" class="l_input" Width="200px"  ></asp:TextBox>&nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="课件主题不能为空!" ControlToValidate="txt_Courename"></asp:RequiredFieldValidator>
                </td>
            </tr>             
               <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="主讲人："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TextBox1" runat="server" class="l_input" Width="200px"></asp:TextBox>&nbsp;  
                     <asp:HiddenField ID="hfid" runat="server"  />
                    <input type="button" value="选择主讲人 " class="C_input"  style="width:100px;" onclick="Openwin();void(0)" />
                </td>
            </tr>   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="设计者："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="TextBox2" runat="server" class="l_input" Width="200px"></asp:TextBox>&nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="设计者不能为空!" ControlToValidate="txt_Order"></asp:RequiredFieldValidator>
                </td>
            </tr>   
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="课件次序："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txt_Order" runat="server" class="l_input" Width="100px"></asp:TextBox>
                    <span>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="课件次序不能为空!" ControlToValidate="txt_Order"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">                 
                    <asp:Label ID="Label7" runat="server" Text="课件类型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">外部课件</asp:ListItem>
                        <asp:ListItem Value="1">SCORM标准课件 </asp:ListItem>
                    </asp:RadioButtonList><span>                    
                </td>
            </tr>   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label8" runat="server" Text="状态："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">可用</asp:ListItem>
                        <asp:ListItem Value="1">不可用 </asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="可否试听："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:RadioButtonList ID="rblHot" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                        <asp:ListItem Value="1">是</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
               
                    <asp:Label ID="Label9" runat="server" Text="简介："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtP_Content" runat="server" class="l_input" TextMode="MultiLine" Height="152px" Width="380px"></asp:TextBox>
                </td>
            </tr> 
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label2" runat="server" Text="试听地址："></asp:Label>&nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtUrl" runat="server" class="l_input"   Width="306px"></asp:TextBox>
                     <input type="button" value="选择模板 " class="C_input"  style="width:100px;"  onclick="WinOpenDialog('/manage/Template/TemplateList.aspx?OpenerText='+escape('txtUrl')+'&FilesDir=',650,480)"/>
                </td>
            </tr>
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
            <asp:HiddenField ID="coureId" runat="server" />
             <asp:HiddenField id="cid" runat="server"/>
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存" runat="server" onclick="EBtnSubmit_Click"/>
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='CoureseManage.aspx';return false;" UseSubmitBehavior="False"  CausesValidation="False" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
