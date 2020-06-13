<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_SnsSchool, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>学校信息配置</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt; <span>SNS空间管理</span> &gt;&gt; <span>学校信息配置</span> <a href="AddSchool.aspx"><span style="color:red">[添加学校信息]</span></a>
	</div>
	<div class="clearbox"></div>
 	
   <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
            <tr class="gridtitle" align="center" style="height:25px;">
	             <td height="26" colspan="8"><strong>学校管理</strong></td>
            </tr>
            <tr class="tdbgleft">
              <td width="5%" height="24" align="center"><strong>ID</strong></td>
              <td width="25%" height="24" align="center"><strong>学校名称</strong></td>
              <td width="15%" height="24" align="center"><strong>国家</strong></td>
              <td width="6%" height="24" align="center"><strong>省份</strong></td>
              <td width="6%" height="24" align="center"><strong>类型</strong></td>
              <td width="6%" height="24" align="center"><strong>性质</strong></td>
              <td width="15%" height="24" align="center"><strong>添加时间</strong></td>
              <td width="22%" height="24" align="center"><strong>相关操作</strong></td>
            </tr>
            
        <asp:Repeater ID="Pagetable" runat="server">
        <ItemTemplate>
        <tr class="tdbg">
              <td height="24" align="center"><%#Eval("ID") %></td>
              <td height="24" align="left"><a href="AddSchool.aspx?menu=edit&id=<%#Eval("ID") %>"><%#Eval("SchoolName") %></a></td>
              <td height="24" align="center"><%#Eval("Country") %></td>
              <td height="24" align="center"><%#Eval("Province") %></td>
              <td height="24" align="center"><%#GetSchoolType(Eval("SchoolType", "{0}"))%></td>
              <td height="24" align="center"><%#GetVisage(Eval("Visage","{0}"))%></td>
              <td height="24" align="center"><%#Eval("Addtime","{0:yyyy-MM-dd}") %></td>
              <td height="24" align="center"><a href="AddClassRoom.aspx?menu=addroom&schoolid=<%#Eval("ID") %>">添加班级</a>　<a href="AddSchool.aspx?menu=edit&id=<%#Eval("ID") %>">修改</a>　<a href="SnsSchool.aspx?menu=del&id=<%#Eval("ID") %>" onclick="return confirm('确实要删除此学校吗？');">删除</a></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
            <tr class="tdbg">
                <td class="tdbgleft" colspan="8" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>    
      </table>
</form>
</body>
</html>
