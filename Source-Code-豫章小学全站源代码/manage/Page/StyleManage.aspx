<%@ page language="C#" autoeventwireup="true" inherits="manage_Page_StyleManage, App_Web_lfga5wcc" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>风格管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
    function getinfo(id) {
        location.href = "AddStyle.aspx?menu=edit&sid=" + id + "";
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; 企业黄页 &gt;&gt; <span><a href="PageStyle.aspx">黄页风格管理</a></span></div>
    <div class="clearbox">
    </div>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" class="title" style="width:10%">
                    <span class="tdbgleft">ID</span>
                </td>
                <td style="width:40%" align="center" class="title">
                    <span class="tdbgleft">风格名称</span>
                </td>
                <td style="width:10%" align="center" class="title">
                    <span class="tdbgleft">缩略图</span>
                </td>
                <td style="width:10%" align="center" class="title">
                    <span class="tdbgleft">风格路径</span>
                </td>
                <td style="width:10%" align="center" class="title">
                    <span class="tdbgleft">默认</span>
                </td>
                <td style="width:25%" align="center" class="title">
                    <span style="background-color: #e0f7e5">相关操作</span>
                </td>
            </tr>
            <asp:Repeater ID="Styleable" runat="server">
                <ItemTemplate>
                    <tr class="tdbg" id="<%#Eval("id")%>" ondblclick="getinfo(this.id)" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="height:24px" align="center">
                            <%#Eval("id")%>
                        </td>
                        <td style="height:24px" align="center">
                            <%#Eval("Stylename")%>
                        </td>
                        <td style="height:24px" align="center">
                            <img alt="" src="../../<%#Eval("ShowImg")%>" width="60" height="60" />
                        </td>
                        <td style="height:24px" align="center">
                            <%#Eval("StyleUrl", "{0}")%>
                        </td>
                        <td style="height:24px" align="center">
                            <%#Eval("IsDefault", "{0}")=="1"?"默认":""%>
                        </td>
                        <td style="height:24px" align="center">
                            <a href="StyleManage.aspx?menu=isdefault&sid=<%#Eval("id") %>">设为默认</a> <a href="AddStyle.aspx?menu=edit&sid=<%#Eval("id") %>">修改</a>
                            <a href="?menu=del&id=<%#Eval("id") %>" onclick="return confirm('确实要删除此黄页风格吗？删除该样式后前台黄页将无法使用该风格!');">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="tdbg">
                <td style="height:24px" colspan="6" align="center" class="tdbgleft">
                    共
                    <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                    条信息
                    <asp:Label ID="Toppage" runat="server" Text="" />
                    <asp:Label ID="Nextpage" runat="server" Text="" />
                    <asp:Label ID="Downpage" runat="server" Text="" />
                    <asp:Label ID="Endpage" runat="server" Text="" />
                    页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                    <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" OnTextChanged="txtPage_TextChanged" Width="30px"></asp:TextBox>条信息/页 转到第
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"></asp:DropDownList>
                    页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                </td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>