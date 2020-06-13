<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_SelectTeacherName, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>选择课程</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="../../JS/Dialog.js"></script>
<script>
    function onstr() {
        window.opener = null;
        parent.Dialog.close();
    }

    function setvalue(objname, valuetxt) {
        var mainright = window.top.main_right;
        mainright.frames[parent.nowWindow].document.getElementById(objname).value = valuetxt;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">    
        <td width="10%" class="title">教师名称</td>
        <td width="10%" class="title">职位</td>
        <td width="10%" class="title">授课</td>
        <td width="15%" class="title">创建时间</td>
        <td width="40%" class="title">老师信息</td>
        <td width="15%" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <%#Eval("TName")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("Post")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("Teach")%>
                </td>
                <td height="22" align="center">
                  <%#Eval("CreatTime")%>
                </td>
                <td height="22" align="center">
                    <%#GetRemark(Eval("Remark","{0}"))%>
                </td>
                <td height="22" align="center">
                     <a href="SelectTeacherName.aspx?menu=select&id=<%#Eval("ID") %>&name=<%#Eval("TName") %>">选择</a>                   
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
</form>
</body>
</html>
