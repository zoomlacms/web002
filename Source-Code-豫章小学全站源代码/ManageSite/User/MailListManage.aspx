<%@ page language="C#" autoeventwireup="true" inherits="manage_User_MailListManage, App_Web_wj135slx" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>邮址列表</title>
   <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/RiQi.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript">
//根据传入的checkbox的选中状态设置所有checkbox的选中状态
    function selectAll(obj)
    {
        var allInput = document.getElementsByTagName("input");
        //alert(allInput.length);
        var loopTime = allInput.length;
        for(i = 0;i < loopTime;i++)
        {
            //alert(allInput[i].type);
            if(allInput[i].type == "checkbox")
            {
                allInput[i].checked = obj.checked;
            }
        }
    }
    //判断是否选中记录，用户确认删除
    function judgeSelect()
    {
    var result = false;
    var allInput = document.getElementsByTagName("input");
    var loopTime = allInput.length;
    for(i = 0;i < loopTime;i++)
    {
        if(allInput[i].checked)
        {
            result = true;
            break;
        }
    }
    if(!result)
    {
        alert("请先选则要删除的记录！");
        return result;
    }
    result = confirm("你确认要删除选定的记录吗？");
    return result;
    } 

</script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> <a href="MailListManage.aspx">邮箱列表</a></div>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
                <tr class="tdbg">
                    <td align="left" >
                        <table>
                            <tr>
                            <td style=" width:40px">查找：</td>
                                <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                                        <asp:ListItem>全部查询</asp:ListItem>
                                        <asp:ListItem>按字母查询</asp:ListItem>
                                        <asp:ListItem>按数字查询</asp:ListItem>
                                        <asp:ListItem>按加入日期查询</asp:ListItem>
                                        <asp:ListItem>按最后发送时间查询</asp:ListItem>
                                        <asp:ListItem>按邮箱后缀查询</asp:ListItem>
                                        <asp:ListItem>按状态查询</asp:ListItem>
                                        <asp:ListItem>按订阅类别</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" Visible="false" AutoPostBack="True"
                                        OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                                    </asp:DropDownList></td>
                                <td>
                                    <asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:Panel ID="Panel1" Visible="false" runat="server" Width="300px" Height="20px">
                                        <asp:TextBox ID="txtStartTime" onfocus="setday(this)" runat="server"></asp:TextBox>
                                        ~
                                        <asp:TextBox ID="txtEndTime" onfocus="setday(this)" runat="server"></asp:TextBox>&nbsp;<br />
                                        &nbsp;
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtStartTime"
                                            ErrorMessage="请输入正确的日期" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server"
                                            ControlToValidate="txtEndTime" ErrorMessage="请输入正确的日期" Operator="DataTypeCheck"
                                            Type="Date"></asp:CompareValidator></asp:Panel></td>
                                <td>
                                    <asp:Button ID="Button1" CssClass="button" runat="server" OnClick="Button1_Click" Text="查 询" />
                                </td>
                            </tr>
                            
                        </table>
                    </td>
                </tr>
                <tr class="tdbg">
                <td align="left" valign="bottom">添加邮箱地址：<asp:TextBox ID="txtMail" runat="server" Width="200px"></asp:TextBox>  <asp:Button ID="Button2"
                    runat="server" Text="添  加" OnClick="Button2_Click" CssClass="button" />
                    <asp:Button ID="Button3" runat="server" CssClass="button" OnClick="Button3_Click" Text="批量导入" />
                    <asp:Button ID="Button4" runat="server" CssClass="button" Text="批量导出" OnClick="Button4_Click" />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail"
                        ErrorMessage="请输入正确的邮箱地址" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </td>
                </tr>
                <tr>
                    <td valign="top" class="tdbg" align="left">
                        <asp:GridView ID="GridView1" DataKeyNames="ID" Width="100%" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting">
                            <Columns>
                                <asp:TemplateField HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemTemplate>
                                        <input id="pidCheckbox" name="pidCheckbox" type="checkbox" value='<%#DataBinder.Eval(Container.DataItem,"ID")  %>' class="checkbox" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="编号" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="邮箱地址" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email") %>' Width="200px"></asp:TextBox>
                                        <asp:Button ID="Button5" CssClass="button" runat="server" Text="提 交" OnClick="Button5_Click" />
                                    </EditItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" ToolTip="点击校正修改邮址" runat="server" OnClick="LinkButton2_Click"><%#DataBinder.Eval(Container.DataItem, "Email")%></asp:LinkButton>
                                    </ItemTemplate>
                                    <HeaderStyle Width="280px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="申请时间" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("AddTime") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="最后发送时间" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemStyle HorizontalAlign="Center" />
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("BackMostTime") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="邮箱状态" HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"  >
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><%#GetState1(DataBinder.Eval(Container.DataItem, "State").ToString())%></asp:LinkButton>
                                        <%#GetState(DataBinder.Eval(Container.DataItem, "State").ToString())%>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True"  HeaderStyle-BackColor="#F0F6FC" ItemStyle-BackColor="White"   AccessibleHeaderText/>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="left">
                    <input name="chk23" type="checkbox" ID="chk23" runat="server" onclick="selectAll(this)" class="checkbox"/>全选
    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_DeleteRecords" runat="server" OnClientClick="return judgeSelect();" CssClass="button" Text="删除选中记录" OnClick="btn_DeleteRecords_Click" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="center">
                        共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>&nbsp;
                        <asp:Label ID="Toppage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Nextpage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Downpage" runat="server" Text=""></asp:Label>
                        <asp:Label ID="Endpage" runat="server" Text=""></asp:Label>
                        页次：<asp:Label ID="Nowpage" runat="server" Text=""></asp:Label>/<asp:Label ID="PageSize"
                            runat="server" Text=""></asp:Label>页
                        <asp:Label ID="pagess" runat="server" Text=""></asp:Label>个/页 转到第<asp:DropDownList
                            ID="DropDownList1" runat="server" AutoPostBack="True">
                        </asp:DropDownList>页</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>