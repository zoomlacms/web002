<%@ page language="C#" autoeventwireup="true" inherits="manage_MessageBoard, App_Web_foogx2yc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>站长留言</title>
<link href="../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../JS/SelectCheckBox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        <span>后台管理</span> &gt;&gt; <span>站长留言</span>
    </div>
    <div class="clearbox">
    </div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无留言信息</div>
    <div class="clearbox">
    </div>
     <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr >
                <td align="center" colspan="2" class="spacingtitle">
                    <b>&nbsp;</b></td>
            </tr>
     </table>
    <div>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                    <tr class="tdbg" align="left" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        style="height: 25px;">
                       <td rowspan="2"   align="center" class="tdbgleft">
                            <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' />
                            <asp:CheckBox ID="chkSel" runat="server" />
                        </td>
                    <td align="left" class="tdbgleft">留言内容: <%#Eval("Mcontent")%></td>
                    </tr>
                    <tr class="tdbg" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        style="height: 25px;">
                        <td  align="left" class="tdbgleft">
                           留言者:<%#GetUserName(Eval("SendID","{0}"))%>
                            &nbsp; &nbsp;时间:<%#Eval("Addtime")%>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
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
                    </span><span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:Label ID="pagess" runat="server" Text="" />
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px"
                            Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        </asp:DropDownList>
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