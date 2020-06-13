<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_SelectAllStudent, App_Web_o4pcw2mi" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>成绩查询</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
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
<div class="r_navigation">
    <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>在线考试系统</span> &gt;&gt; <span>成绩统计</span> &gt;&gt;<span>成绩查询</span>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr align="center" class="title">
        <td width="5%">
            <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
        </td>
        <td width="5%">考试编号</td> 
        <td width="10%">试卷名称</td>
        <td width="7%">用户名</td>  
        <td width="8%">分数</td>
        <td width="10%">考试时间</td>  
        <td width="10%" class="title">操作</td>
    </tr>
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td height="22" align="center">
                    <input name="Item" type="checkbox" value='<%#Eval("ID") %>' />
                </td>                      
                 <td height="22" align="center">
                      <%#Eval("ID")%>
                </td>       
                <td height="22" align="center">
                 <%#GetPName(Eval("PID", "{0}"))%>
                </td>
                <td align="center">
                    <%#GetStudentName(Eval("UserID", "{0}"))%>
                </td>  
                <td height="22" align="center">
                    <%#Eval("Fraction")%>
                </td>
                <td height="22" align="center">
                    <%#Eval("ExamTime")%>
                </td>                                     
                <td height="22" align="center">
                   <a href="?menu=delete&id=<%#Eval("ID")%>" OnClick="return confirm('确实要删除此课程吗？');">删除</a>
                </td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbg">
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
       <tr class="tdbg">
        <td height="22" colspan="7" align="center" class="tdbg">
          参加考试总人数:<asp:Label ID="Label1" runat="server" Text=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          最高分: <asp:Label ID="Label2" runat="server" Text="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          最低分: <asp:Label ID="Label3" runat="server" Text="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
</table>
<div>
    <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" Text="批量删除" onclick="Button3_Click" />
    <asp:Button ID="Button4" class="C_input" Style="width: 110px;" Text="返回"  runat="server"  UseSubmitBehavior="False" CausesValidation="False"    onclick="Button4_Click"/>
</div>
</form>
</body>
</html>
