<%@ page language="C#" autoeventwireup="true" inherits="manage_User_PointGroup, App_Web_own0w3ym" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>用户积分等级</title>
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript" src="/JS/SelectCheckBox.js"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;会员管理&gt;&gt; 积分等级管理 &gt;&gt;【<a href="AddPointGroup.aspx" style="color:Red">添加积分等级</a>】</div>
  <div class="divbox" id="nocontent" runat="server">暂无积分等级</div>
  <div id="cont" runat="server">
    <table width="100%" class="border" border="0" cellpadding="0" cellspacing="1" style="background-color: white;">
      <tr class="tdbg">
        <td align="center" class="title" width="10%">选择</td>
        <td align="center" class="title" width="15%">积分等级</td>
        <td align="center" class="title" width="15%">所需积分</td>
        <td align="center" class="title" width="25%">备注</td>
        <td align="center" class="title" width="15%">图片</td>
        <td align="center" class="title" width="20%">操作</td>
      </tr>
      <asp:Repeater ID="repter" runat="server" onitemcommand="repter_ItemCommand" >
        <ItemTemplate>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="center"><asp:HiddenField ID="hfId" runat="server" Value='<%# Eval("ID") %>' />
              <asp:CheckBox ID="chkSel" runat="server" /></td>
            <td align="center"><%#Eval("GroupName")%></td>
            <td align="center"><%#Eval("PointVal")%></td>
            <td align="center"><%#Eval("Remark") %></td>
            <td align="center"><script>
                 var a="<%#Eval("ImgUrl")%>";
				 if(a==''){
					 document.write("<img src='/Images/userface/noface.gif' width='20' height='20'>");
					 }
					 else{ document.write("<img src='<%#Eval("ImgUrl")%>' name='urlImg' width='20' height='20'/>");
					 }
                </script></td>
            <td align="center"><asp:LinkButton ID="btnUpdate" runat="server" CommandName="Upd" CommandArgument='<%#Eval("ID") %>'>修改</asp:LinkButton>
              <asp:LinkButton ID="del" runat="server" CommandArgument='<%#Eval("ID") %>' CommandName="del" OnClientClick="return confirm('确认删除？')">删除</asp:LinkButton></td>
          </tr>
        </ItemTemplate>
      </asp:Repeater>
      <tr class="tdbg">
        <td colspan="11"><div class="tdbg"> <span>
            <asp:CheckBox ID="CheckSelectAll" runat="server" AutoPostBack="True" OnCheckedChanged="CheckSelectAll_CheckedChanged" Text="全选" />
            <asp:Button ID="BtnDelete" runat="server" class="C_input" OnClick="BtnDelete_Click" OnClientClick="if(!IsSelectedId()){alert('请选择内容');return false;}else{return confirm('确定删除？')}" Text="批量删除选定内容" Width="134px" />
            </span> <span style="text-align: center"> 共
            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
            条数据
            <asp:Label ID="Toppage" runat="server" Text="" />
            <asp:Label ID="Nextpage" runat="server" Text="" />
            <asp:Label ID="Downpage" runat="server" Text="" />
            <asp:Label ID="Endpage" runat="server" Text="" />
            页次：
            <asp:Label ID="Nowpage" runat="server" Text="" />
            /
            <asp:Label ID="PageSize" runat="server" Text="" />
            页
            <asp:Label ID="pagess" runat="server" Text="" />
            <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
            条数据/页 转到第
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"  onselectedindexchanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
            页
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
            </span> </div></td>
      </tr>
    </table>
  </div>
</form>
</body>
</html>