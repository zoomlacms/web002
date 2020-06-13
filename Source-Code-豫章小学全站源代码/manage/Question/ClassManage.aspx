<%@ page language="C#" autoeventwireup="true" inherits="manage_Question_ClassManage, App_Web_o4pcw2mi" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head id="Head1" runat="server">
    <title>添加组别</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script>
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
<body>
        <form id="form1" runat="server">
        <div class="r_navigation">
            
            <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>在线考试系统</span> &gt;&gt; <span>组别管理</span> <a href="AddClass.aspx">[添加学习组]</a>
        </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="center" class="title">
            <td width="2%">
                <asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" />
            </td>
            <td width="10%">班级名称</td>
            <td width="8%">负责人</td>
            <td width="10%">课程名称</td>
            <td width="8%">班级类别</td>
            <td width="6%">售价</td>
            <td width="6%">优惠价</td>
            <td width="8%">是否赠送</td>
            <td width="13%">建立时间</td>
            <td width="13%">结束时间</td>
            <td width="12%" class="title">操作</td>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                    id="<%#Eval("GroupID") %>" ondblclick="ShowTabs(this.id)">
                    <td height="22" align="center">
                        <input name="Item" type="checkbox" value='<%#Eval("GroupID") %>' />
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Regulationame")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Regulation")%>
                    </td>
                       <td height="22" align="center">
                        <%#GetCourseName(Eval("CourseID","{0}"))%>
                    </td>                    
                       <td align="center">
                        <%#GetClassName(Eval("ClassID","{0}"))%>
                       </td>
                      <td height="22" align="center">
                       <%#DataBinder.Eval(Container, "DataItem.ShiPrice", "{0:N2}")%>
                    </td>
                      <td height="22" align="center">
                      <%#DataBinder.Eval(Container, "DataItem.LinPrice", "{0:N2}")%>
                    </td>
                      <td height="22" align="center">
                        <%#GetPresented(Eval("Presented","{0}"))%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Setuptime")%>
                    </td>
                    <td height="22" align="center">
                        <%#Eval("Endtime")%>
                    </td>
                    <td height="22" align="center">
                        <a href="AddClass.aspx?cid=<%#Eval("GroupID")%>">修改</a> <a href="?menu=delete&cid=<%#Eval("GroupID")%>" OnClick="return confirm('确实要删除此学员吗？');">删除</a>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        <tr class="tdbg">
            <td height="22" colspan="11" align="center" class="tdbg">
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
        <asp:Button ID="Button3" class="C_input" Style="width: 110px;" runat="server" OnClientClick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');"
            Text="批量删除" onclick="Button3_Click" /></div>
    </form>
</body>
</html>
