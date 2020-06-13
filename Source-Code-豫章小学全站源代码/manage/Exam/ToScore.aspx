<%@ page language="C#" autoeventwireup="true" inherits="manage_Exam_ToScore, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>试卷评阅</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
<script type="text/javascript" src="../../JS/Drag.js"></script>
<script type="text/javascript" src="../../JS/Dialog.js"></script>
<script type="text/javascript">
	function CheckAll(spanChk)//CheckBox全选
	{
		var oItem = spanChk.children;
		var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
		xState = theBox.checked;
		elm = theBox.form.elements;
		for (i = 0; i < elm.length; i++)
			if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
				if (elm[i].checked != xState)
					elm[i].click();
			}
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt;教育模块 &gt;&gt;阅卷中心&gt;&gt; 评阅试卷</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">
        <td width="5%">
            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
        </td>
        <td width="10%">试题标题</td>
        <td width="8%">考生</td>
        <td width="10%">考试时间</td>
        <td width="8%">类别</td>
        <td width="10%" class="title">操作</td>
    </tr>
        <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <input name="Item" type="checkbox" value='<%#Eval("ID") %>' />
                </td>
                <td align="center"><a href="MakeScore.aspx?pid=<%#Eval("PID")%>&&sid=<%#Eval("ID") %>"><%#GetPname(Eval("PID","{0}")) %></a></td>
                <td height="22" align="center">
                    <%#GetUserName(Eval("UserID","{0}"))%>
                </td>
                <td height="22" align="center">
                    <%#Eval("ExamTime")%>
                </td>
                <td height="22" align="center">
                    <%#GetType(Eval("PID","{0}")) %>
                </td>
                <td height="22" align="center">
                    <a href="MakeScore.aspx?pid=<%#Eval("PID")%>&&sid=<%#Eval("ID") %>">评分</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td height="22" colspan="6" align="center" class="tdbg">
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
    <div>
    
    </div>
    </form>
</body>
</html>
