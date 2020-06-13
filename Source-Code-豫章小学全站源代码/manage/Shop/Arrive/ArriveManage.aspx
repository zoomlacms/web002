<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_Arrive_ArriveManage, App_Web_ykimittn" enableviewstate="False" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>优惠劵管理</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
<script src="../../../JS/RiQi.js" type="text/javascript"></script>
<script src="../../../JS/calendar.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 商城管理 &gt;&gt; 优惠劵管理 <a href="AddArrive.aspx?menu=add">[新增优惠劵]</a></div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr class="tdbg" width="70%" align="left">
    <td>优惠劵名称:<asp:TextBox ID="txtName" runat="server" class="l_input"></asp:TextBox>&nbsp;&nbsp;
    生成时间(有效时间)<asp:TextBox ID="txtCreateTime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>&nbsp;&nbsp;
    &nbsp;&nbsp;过期时间<asp:TextBox ID="txtEndTime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
    <asp:Button ID="btnName" runat="server" Text="搜索" class="C_input" onclick="btnName_Click" />
    <asp:Button ID="Button1" runat="server" Text="清空" class="C_input" 
            onclick="Button1_Click"/></td>
    </tr>
</table>
<div class="divbox" id="nocontent" runat="server" style="display: none">
    暂无优惠劵信息</div>
<br />
<div class="clearbox">
</div>
<div>
    <asp:GridView ID="gvCard" runat="server" AutoGenerateColumns="False" class="border"
        Width="100%" RowStyle-CssClass='tdbg' onrowcommand="gvCard_RowCommand" 
        onrowdatabound="gvCard_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="选择" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:HiddenField ID="hfId1" runat="server" Value='<%# Eval("ID") %>' /> <asp:CheckBox ID="chkSel" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="Id" runat="server" Text='<%# Eval("ID") %>' /></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="编号" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:Label ID="lblNo" runat="server" Text='<%#Eval("ArriveNO") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="密码" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:Label ID="lblPwd" runat="server" Text='<%#Eval("ArrivePwd") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:TemplateField HeaderText="金额" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblAmount" runat="server" Text='<%#Eval("Amount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="所属用户" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblUser" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="生成时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblAginTime" runat="server" Text='<%# Eval("AgainTime","{0:yyyy-MM-dd}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="到期时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:Label ID="lblEndTime" runat="server" Text='<%#Eval("EndTime","{0:yyyy-MM-dd}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="使用时间" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                <asp:Label ID="lblUseTime" runat="server" Text='<%#GetUseTime(Eval("UseTime","{0}")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="状态" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <asp:Label ID="lblState" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField >
            <asp:TemplateField  HeaderText="操作" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle">
                <ItemTemplate>
                    <a id="abc"  href='<%#Gethref(Eval("ID","{0}")) %>'>修改</a>
                    <a id="a1"  href='<%#del(Eval("ID","{0}")) %>'>删除</a>
                                            <%--<asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>修改</asp:LinkButton>
                <asp:LinkButton ID="btnDel" runat="server" CommandName="Del" CommandArgument='<%#Eval("ID") %>'>删除</asp:LinkButton>--%>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
    <tr class="tdbg">
        <td>
            <div class="tdbg">
                <span>
                    <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged"
                        Text="全选" />
                    <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClick="BtnDelete_Click"
                        OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"
                        Text="批量删除选定内容" Width="134px" />
                </span>  <span style="text-align: center">
                共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox Text="10" ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    ontextchanged="txtPage_TextChanged"></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"
                            ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
            </div>
        </td>
    </tr>
</table>
</form>
</body>
</html>