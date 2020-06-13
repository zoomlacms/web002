<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Waremanage, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>管理企业黄页</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript">
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

    <style type="text/css">
        .style3
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            width: 220px;
        }
        .style4
        {
            width: 220px;
        }
        .style5
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            height: 24px;
            width: 17%;
        }
        .style6
        {
            background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
            height: 24px;
            width: 17%;
        }
        .style7
        {
            background: #e0f7e5;
/*line-height: 120%;*/    padding: 2px;
            height: 24px;
            width: 8%;
        }
        .style8
        {
            background: #f6fdf6;
/*line-height: 120%;*/    padding: 2px;
            height: 24px;
            width: 8%;
        }
    </style>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="Viewonline.aspx">3D地带商品管理</a></div>
	<div class="clearbox">
</div>
	<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody2">
		<tr class="tdbg">
			<td align="center" colspan="6" class="title" style="width:100%">
				商品搜索
			</td>
		</tr>
		<tr class="tdbg">
			<td align="left" colspan="6" class="tdbg" style="width:100%; padding-left:20px">
			 高级查询：
	  <asp:DropDownList ID="souchtable" runat="server">
		<asp:ListItem value="0" Selected="True">请选择</asp:ListItem>
		<asp:ListItem value="1">商品名称</asp:ListItem>
		<asp:ListItem value="2">商品简介</asp:ListItem>
		<asp:ListItem value="3">商品介绍</asp:ListItem>
		<asp:ListItem value="4">厂商</asp:ListItem>
		<asp:ListItem value="5">品牌/商标</asp:ListItem>
		<asp:ListItem value="6">条形码</asp:ListItem>
	  </asp:DropDownList>
	  <asp:TextBox ID="souchkey" class="l_input" runat="server" Height="19px" />
	  <asp:Button ID="souchok" runat="server" Text=" 搜索 " OnClick="souchok_Click" class="C_input" />
			</td>
		</tr>
		</tbody>
		</table>
		
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="7" class="title">
				3D地带商品管理
			</td>
		</tr>
		<tr class="tdbgleft">
			<td align="center" style="font-weight: bold">
			  商品ID
			</td>
			<td align="center" style="height: 24px; width: 10%; font-weight: bold">
			   商品分类
			</td>
			<td align="center" style="height: 24px; width: 20%; font-weight: bold">
			  商品名称
			</td>
			<td align="center" style="height: 24px; width: 8%; font-weight: bold">
			  展区ID
			</td>
			<td align="center" style="height: 24px; width: 15%; font-weight: bold">
			  展区名称
			</td>
			<td align="center" style="font-weight: bold">
			  发布者
			</td>
			 <td align="center" style="font-weight: bold">
			 操作
			</td>
		</tr>
		 <asp:Repeater ID="Repeater1" runat="server">
   <ItemTemplate>
  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="center"  style="height: 24px; padding-right: 20px; font-weight: bold">
		   <%# Eval("id")%>
			</td>
			<td align="center"  style="height: 24px;">
		  <%# getnodeid(Eval("nodeid"))%>
			</td>
			 <td align="center"  style="height: 24px;">
			 <a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>&3d=3d"><%#Eval("proname")%></a>
			</td>
			 <td align="center"  style="height: 24px;">
			  <%# getdate(Eval("AddUser"),1)%>
			</td>
			 <td align="center"  style="height: 24px;">
			<%# getdate(Eval("AddUser"),2)%>
			</td>
			<td align="center"  style="height: 24px;">
				<%# Eval("AddUser")%>
			</td>
			 <td height="24" align="center"><a href="AddProduct.aspx?menu=edit&ModelID=<%#Eval("ModelID") %>&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>">修改</a> <a href="Waremanage.aspx?menu=delete&NodeID=<%#Eval("Nodeid") %>&id=<%#Eval("id")%>" onclick="return confirm('不可恢复性删除数据,你确定将该数据删除吗？');" >删除</a></td>
		</tr>
	</ItemTemplate>
	</asp:Repeater>
	   
	  <tr class="tdbg">
	  <td height="24" colspan="7" align="center" class="tdbgleft">共 <asp:Label ID="Allnum" runat="server" Text=""></asp:Label> 条数据  <asp:Label ID="Toppage" runat="server" Text="" /> <asp:Label ID="Nextpage" runat="server" Text="" /> <asp:Label ID="Downpage" runat="server" Text="" /> <asp:Label ID="Endpage" runat="server" Text="" />  页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页  <asp:Label ID="pagess" runat="server" Text="" />条数据/页  转到第<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
		  </asp:DropDownList>页</td>
	</tr>
	</tbody>
</table>
</form>
</body>
</html>