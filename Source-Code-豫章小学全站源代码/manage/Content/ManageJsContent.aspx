<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.ManageJsContent, App_Web_buw3nddg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>文章JS文件管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript">
	function getinfo(id, types) {
		types == "1" ? location.href = 'AddJsPic.aspx?menu=edit&id=' + id : location.href = 'AddJsContent.aspx?menu=edit&id=' + id;
	}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; <span><a href="ContentManage.aspx">内容管理</a></span> &gt;&gt;
	生成发布 &gt;&gt; <a href="ManageJsContent.aspx">文章JS文件管理</a></div>
<div class="clearbox">
</div>
<div>
	<table width="100%" cellpadding="2" cellspacing="1" border="0" align="center" class="border">
		<tr align="center">
			<td colspan="2" class="spacingtitle">
				<asp:Label ID="Label7" runat="server" Text="文章JS文件管理"></asp:Label>
			</td>
		</tr>
		<tr class="tdbg">
			<td>
				管理导航：<a href="ManageJsContent.aspx">JS文件管理首页</a> | <a href="AddJsContent.aspx">添加新的JS文件（普通列表方式）</a>
				| <a href="AddJsPic.aspx">添加新的JS文件（图片列表方式）</a> | <a href="?menu=rsallimg">刷新图片列表文件</a> | <a href="?menu=rsalllist">刷新普通列表文件</a>
			</td>
		</tr>
	</table>
	<div class="clearbox">
	</div>
	<table width="100%" cellpadding="2" cellspacing="1" border="0" align="center" class="border">
		<tr class="title">
			<td height="24" align="center" width="5%">ID</td>
			<td height="24" align="center" width="15%">JS代码名称</td>
			<td align="center" width="29%">简介</td>
			<td align="center" width="10%">代码类型</td>
			<td align="center" width="10%">JS文件名</td>
			<td align="center" width="20%">JS调用代码</td>
			<td align="center" width="12%">操作</td>
		</tr>
		<asp:Repeater ID="Repeater1" runat="server">
			<ItemTemplate>
				<tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg" ondblclick="getinfo('<%#Eval("id")%>','<%#Eval("JsType")%>')">
					<td height="26" align="center">
						<%#Eval("id")%>
					</td>
					<td align="center">
						<a href="<%#(Eval("JsType","{0}")=="1")?"AddJsPic.aspx":"AddJsContent.aspx" %>?menu=edit&id=<%#Eval("id") %>"><%#Eval("Jsname")%></a>
					</td>
					<td align="center">
						<%#Eval("JsReadme")%>
					</td>
					<td align="center">
						<%#(Eval("JsType","{0}") == "1") ? "图片列表" : "普通列表"%>
					</td>
					<td align="center">
						<asp:HiddenField ID="hfGID" runat="server" Value='<%#Eval("id")%>' />
						<asp:Label ID="lblFileName" runat="server"  Text='<%#Eval("JsFileName")%>'></asp:Label>
					</td>
					<td align="center">
						<textarea name='textarea' cols='36' rows='3' class="l_input" style="height:40px"><%#Getscript(Eval("id","{0}")) %></textarea>
					</td>
					<td align="center">
						<a href="<%#(Eval("JsType","{0}")=="1")?"AddJsPic.aspx":"AddJsContent.aspx" %>?menu=edit&id=<%#Eval("id") %>">参数设置</a> <a href="?menu=refresh&id=<%#Eval("id") %>">刷新</a> 
						<br /><a href="javascript:void(0)" onclick="window.open('PriView.aspx?id=<%#Eval("id") %>');">预览效果</a>  <a href="?menu=delete&id=<%#Eval("id") %>" onclick="return confirm('真的要删除此JS文件吗？如果有文件或模板中使用此JS文件，请注意修改过来！');">删除</a>
					</td>
				</tr>
			</ItemTemplate>
		</asp:Repeater>
	</table>
	<table>
		<tr>
			<td>
				<b>说明：</b>
				<br />
				这些JS代码是为了加快访问速度特别生成的。在添加/修改/审核/删除文章时，系统会自动刷新各JS文件。必要时，你也可以手动刷新。如添加了新的JS文件，但还没有添加文章，此时就可以手动刷新有关JS文件。
				<br />
				<font color="red">若文件名为红色，表示此JS文件还没有生成。</font>
				<br />
				<b>使用方法：</b>
				<br />
				将相关JS调用代码复制到页面或模板中的相关位置即可。可参见系统提供的各页面及模板。
			</td>
		</tr>
	</table>
</div>
</form>
</body>
</html>