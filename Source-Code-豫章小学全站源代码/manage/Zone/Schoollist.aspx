<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_Schoollist, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择学校</title>

<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script>
    function putname(name,id)
    {
    opener.document.getElementById('txtSchoolName').value=name;
    opener.document.getElementById('txtSchoolID').value=id;
    window.close();
    }
</script>
</head>
<body>
<form id="form1" runat="server">        
            <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
                <tr class="title">
                    <td align="left">
                        <b>学校列表：</b></td>
                    <td align="right">
                        <asp:TextBox ID="TxtKeyWord" class="l_input" runat="server"></asp:TextBox>&nbsp;&nbsp;<asp:Button
                            ID="BtnSearch" class="C_input" runat="server" Text="查找"  OnClick="BtnSearch_Click" /></td>
                </tr>
                <tr>
                    <td valign="top" colspan="2">
              <table width="100%" border="0" cellspacing="1" cellpadding="1">
                                     <tr class="tdbgleft">
             <td width="5%" height="24" align="center"><strong>ID</strong></td>
              <td width="30%" height="24" align="center"><strong>学校名称</strong></td>
              <td width="10%" height="24" align="center"><strong>类型</strong></td>
              <td width="15%" height="24" align="center"><strong>国家</strong></td>
              <td width="15%" height="24" align="center"><strong>省份</strong></td>
            </tr>
                        <asp:Repeater ID="Pagetable" runat="server">
                            <ItemTemplate>
              <tr class="tdbg">
              <td height="24" align="center"><%#Eval("ID") %></td>
              <td height="24" align="center"><a href="###" onclick="putname('<%#Eval("SchoolName") %>','<%#Eval("ID") %>');"><%#Eval("SchoolName") %></a></td>
              <td height="24" align="center"><%#Eval("SchoolType") %></td>
              <td height="24" align="center"><%#Eval("Country") %></td>
              <td height="24" align="center"><%#Eval("Province") %></td>
              </tr>
                            </ItemTemplate>
                        </asp:Repeater>
            <tr class="tdbg">
                <td class="tdbgleft" colspan="6" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>
             </table> 
             </td>
             </tr>
             </table>
</form>    
</body>
</html>
