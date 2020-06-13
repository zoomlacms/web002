<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="user_iServer_AddQuestion, App_Web_clmp4qkv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>提交问题</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/UserThem/bidding.css" />
<link rel="stylesheet" type="text/css" href="/App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
    function isNulltitle() {
        var lbltitle = document.getElementById("Label1");
        var title = document.getElementById("TextBox1").value;
        if (title == "") {
            lbltitle.innerHTML = "请输入问题标题!!!";
            return;
        }
        else
            lbltitle.innerHTML = "";
    }

    function isNullstr() {
        var lblstr = document.getElementById("Label2");
        var str = document.getElementById("textarea1").value;
        if (str == "")
            lblstr.innerHTML = "请输入问题内容!!!"
        else
            lblstr.innerHTML = "";
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt; <a title="有问必答" href="FiServer.aspx">有问必答</a>
</div>
<table width="100%">
	<tr style="height:25px; background-color:#fff;" valign="bottom">
		<td class="title" align="center">
		   提交问题
		</td>
	</tr>
	<tr>
<td align="left" valign="top" style="width:100%">
<div id="viewPanel">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td colspan="2">
						<input type="hidden" name="module" value="mysupport_supportticketadd"/>
						<input type="hidden" name="dosupportticketadd" value=""/>
						<table width="100%" cellpadding="21" cellspacing="1" class="border" style="background-color: white;">
							<tr>
								<td style="width:100px" class="tdbgleft">
									优先级<span style="color:red">*</span>
								</td>
								<td class="tdbg">
									<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
										<asp:ListItem Value="低">低</asp:ListItem>
										<asp:ListItem Selected="True" Value="中">中</asp:ListItem>
										<asp:ListItem Value="高">高</asp:ListItem>
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<td class="tdbgleft">
									问题类别<span style="color:red">*</span>
								</td>
								<td class="tdbg">
									<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true">
										<asp:ListItem Selected="True" Value="其它">其它</asp:ListItem>
										<asp:ListItem Value="咨询">咨询</asp:ListItem>
										<asp:ListItem Value="投诉">投诉</asp:ListItem>
										<asp:ListItem Value="建议">建议</asp:ListItem>
										<asp:ListItem Value="要求">要求</asp:ListItem>
										<asp:ListItem Value="界面使用">界面使用</asp:ListItem>
										<asp:ListItem Value="bug报告">bug报告</asp:ListItem>
										<asp:ListItem Value="订单">订单</asp:ListItem>
										<asp:ListItem Value="财务">财务</asp:ListItem>
										<asp:ListItem Value="域名">域名</asp:ListItem>
										<asp:ListItem Value="主机">主机</asp:ListItem>
										<asp:ListItem Value="邮局">邮局</asp:ListItem>
										<asp:ListItem Value="DNS">DNS</asp:ListItem>
										<asp:ListItem Value="MSSQL">MSSQL</asp:ListItem>
										<asp:ListItem Value="MySQL">MySQL</asp:ListItem>
										<asp:ListItem Value="IDC">IDC</asp:ListItem>
										<asp:ListItem Value="网站推广">网站推广</asp:ListItem>
										<asp:ListItem Value="网站制作">网站制作</asp:ListItem>
									</asp:DropDownList>
								</td>
							</tr>
							<tr>
								<td style="width:100px" class="tdbgleft">
									问题标题<span style="color:red">*</span>
								</td>
								<td class="tdbg">
									<asp:TextBox ID="TextBox1" runat="server" MaxLength="100" onblur="isNulltitle();" Width="407px"></asp:TextBox>
									<asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
								</td>
							</tr>
							<tr>
								<td class="tdbgleft">
									问题内容<span style="color:red">*</span>
								</td>
								<td class="tdbg" id="iframeHtml">
									<textarea runat="server" id="textarea1" class="ckeditor" name="content" rows="4" cols="40" onblur="isNullstr();"></textarea>
									<asp:Label ID="Label2" runat="server" ForeColor="Red" CssClass="ckeditor" Text=""></asp:Label>
								</td>
							</tr>
							<tr>
								<td class="tdbgleft">
									附件
								</td>
								<td class="tdbg">
									只能上传<span id="filetype" runat="server"></span> 类型的附件,单个附件小于 500KB
									<br />
									附件1:
									<asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" /><br />
									附件2:
									<asp:FileUpload ID="FileUpload2" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" /><br />
									附件3:
									<asp:FileUpload ID="FileUpload3" runat="server" onkeydown="event.returnValue=false;" onpaste="return false" /><br />
									<asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<asp:Button ID="LinkButton1" runat="server" CssClass="i_bottom" OnClick="LinkButton1_Click" Text="提交" />
									<asp:Button ID="Button1" runat="server" CssClass="i_bottom" Text="取消" OnClick="Button1_Click" CausesValidation="false" />
								</td>
							</tr>
							<tr><td colspan="2"><div style="padding:10px;">提示：您可以使用AddQuestion.aspx?title=222&con=content的方法进行GET传递。</div></td></tr>
						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>
</td>
</tr>
</table>

</form>
</body>
</html>