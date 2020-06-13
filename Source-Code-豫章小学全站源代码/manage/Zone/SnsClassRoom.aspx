<%@ page language="C#" autoeventwireup="true" inherits="manage_Zone_SnsClassRoom, App_Web_3dm5oqoz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>班级信息管理</title>

<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
    <div class="r_navigation">
		
		<span>后台管理</span>&gt;&gt; <span>SNS空间管理</span> &gt;&gt; <span>班级信息管理</span> <a href="AddClassRoom.aspx"><span style="color:red">[添加班级信息]</span></a>
	</div>
	<div class="clearbox"></div>
   <table class="border" cellspacing="1" cellpadding="0" width="100%" border="0" align="center">
            <tr class="gridtitle" align="center" style="height:25px;">
	             <td height="26" colspan="7"><strong>班级管理</strong></td>
            </tr>
            <tr class="tdbgleft">
              <td width="5%" height="24" align="center"><strong><asp:CheckBox ID="CheckBox1" runat="server" onclick="CheckAll(this);" /></strong></td>
              <td width="5%" height="24" align="center"><strong>ID</strong></td>
              <td width="15%" height="24" align="center"><strong>班级名称</strong></td>
              <td width="20%" height="24" align="center"><strong>学校名称</strong></td>
              <td width="15%" height="24" align="center"><strong>创建人(管理员)</strong></td>
              <td width="15%" height="24" align="center"><strong>添加时间</strong></td>
              <td width="25%" height="24" align="center"><strong>相关操作</strong></td>
            </tr>
            
        <asp:Repeater ID="Pagetable" runat="server">
        <ItemTemplate>
        <tr class="tdbg">
              <td height="24" align="center"><input name="Item" type="checkbox" value="<%#Eval("RoomID") %>"></td>
              <td height="24" align="center"><%#Eval("RoomID")%></td>
              <td height="24" align="center"><a href="AddClassRoom.aspx?menu=edit&id=<%#Eval("RoomID") %>"><%#Eval("RoomName")%></a></td>
              <td height="24" align="center"><%#GetSchool(Eval("SchoolID","{0}"))%></td>
              <td height="24" align="center"><%#GetUser(Eval("CreateUser","{0}"))%></td>
              <td height="24" align="center"><%#Eval("Creation","{0:yyyy-MM-dd}")%></td>
              <td height="24" align="center"><%#Getshenhe(Eval("RoomID", "{0}"))%>　<a href="AddClassRoom.aspx?menu=edit&id=<%#Eval("RoomID") %>">修改</a>　<a href="SnsClassRoom.aspx?menu=del&id=<%#Eval("RoomID") %>" onclick="return confirm('确实要删除此学校吗？');">删除</a></td>
        </tr>
        </ItemTemplate>
        </asp:Repeater>
            <tr class="tdbg">
                <td class="tdbgleft" colspan="7" align="center">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条信息  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条信息/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
              </asp:DropDownList>页
                </td>
            </tr>  
      </table>
      <br />
        <asp:Button ID="Button1" class="C_input" runat="server" OnClick="Button1_Click" Text="批量删除" />
        <asp:Button ID="Button2" class="C_input" runat="server" OnClick="Button2_Click" Text="批量审核" />
</form>
</body>
</html>