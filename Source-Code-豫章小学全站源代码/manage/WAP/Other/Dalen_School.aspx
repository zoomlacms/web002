<%@ page language="C#" autoeventwireup="true" inherits="manage_WAP_Other_Dalen_School, App_Web_zuybre3k" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>校园达人-图片上传</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="../../../JS/SelectCheckBox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
     <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>Wap管理</span> &gt;&gt;<a href="Dalen_School.aspx">校园达人</a>
        &gt;&gt;<span><a href="AddDalen.aspx?menu=add">【添加达人】</a></span>
    </div>
    <div class="divbox" id="nocontent" runat="server" style="display: none">
        暂无图片信息</div>
    <div class="clearbox">
    </div>
     <div  id="tab" runat="server">
     <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
            <tr >
                <td align="center" colspan="2" class="spacingtitle">
                    <b>校园达人</b></td>
            </tr>
     </table>
   
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
         <tr>
            <td width="25%" align="center" class="tdbgleft">选择</td>
           <td  width="25%" align="center" class="tdbgleft">名称</td>
           <td  width="25%" align="center" class="tdbgleft">达人图片</td>
           <td  width="25%" align="center" class="tdbgleft">操作</td>
            </tr>
        <asp:Repeater ID="Repeater1" runat="server" 
            onitemcommand="Repeater1_ItemCommand">
            <ItemTemplate>
               <tr class="tdbg" align="left" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                        style="height: 25px;">
                       <td align="center" class="tdbgleft" width="25%">
                            <asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' />
                            <asp:CheckBox ID="chkSel" runat="server" />
                        </td>
                        <td align="center" class="tdbgleft" width="25%"><%#Eval("Name") %></td>
                    <td align="center" class="tdbgleft"  width="25%"><img src="../../..<%#Eval("Url")%>" width="100px" height="50px" /></td>
                    <td align="center" class="tdbgleft" width="25%">
                    <asp:LinkButton ID="Upd" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>' CausesValidation="false">修改</asp:LinkButton>&nbsp;/&nbsp;
                    <asp:LinkButton ID="Del" runat="server" CommandName="Del" CommandArgument='<%#Eval("ID") %>'  CausesValidation="false">删除</asp:LinkButton>
                    </td></tr>
                
            </ItemTemplate>
        </asp:Repeater>
        </table>
    </div>
        <div class="tdbg">
            <span>
                <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" 
                Text="全选" OnCheckedChanged="CheckSelectAll_CheckedChanged" />
                <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}"
                    Text="批量删除选定内容" Width="134px" OnClick="BtnDelete_Click" />
            </span><span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                <asp:Label ID="Toppage" runat="server" Text="" />
                <asp:Label ID="Nextpage" runat="server" Text="" />
                <asp:Label ID="Downpage" runat="server" Text="" />
                <asp:Label ID="Endpage" runat="server" Text="" /> 页次：
                <asp:Label ID="Nowpage" runat="server" Text="" />/
                <asp:Label ID="PageSize" runat="server" Text="" />页
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
    </form>
</body>
</html>
