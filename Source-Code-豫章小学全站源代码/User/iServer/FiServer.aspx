<%@ page language="C#" autoeventwireup="true" inherits="manage_iServer_FiServer, App_Web_clmp4qkv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>有问必答</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style>
th{
	background: url(Images/title.gif) #E7F3FF repeat-x top; /*line-height: 120%;*/
	padding: 2px;
	color: #656766;
	font-weight: bold;}
</style>
</head>
<body>
<form runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="有问必答" href="FiServer.aspx">有问必答</a>
</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<div id="viewPanel">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
					<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
						<tr>
							<td colspan="2" class="title" style="text-align: center">
								问题摘要
							</td>
						</tr>
						<tr align="left" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
							<td width="100">
								<a href="SelectiServer.aspx?num=-3&strTitle="><b>总数:</b></a>
							</td>
							<td>
								&nbsp;<asp:Label ID="lblAllNum" runat="server" Text="0"></asp:Label>
							</td>
						</tr>
						<asp:Panel ID="panel_w" runat="server" Visible="false">
							<tr align="left" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
								<td>
									<a href="SelectiServer.aspx?num=-1&strTitle="><font color="red">未解决:</font></a>
								</td>
								<td>
									&nbsp;<asp:Label ID="lblnum_w" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</asp:Panel>
						<asp:Panel ID="panel_ch" runat="server" Visible="false">
							<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
								<td>
									<a href="SelectiServer.aspx?num=-2&strTitle="><font color="brown">处理中:</font></a>
								</td>
								<td>
									&nbsp;<asp:Label ID="lblNum_ch" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</asp:Panel>
						<asp:Panel ID="panel_y" runat="server" Visible="false">
							<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
								<td>
									<a href="SelectiServer.aspx?num=-4&strTitle="><font color="green">已解决:</font></a>
								</td>
								<td>
									&nbsp;<asp:Label ID="lblnum_y" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</asp:Panel>
						 <asp:Panel ID="panel_sock" runat="server" Visible="false">
							<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
								<td>
									<a href="SelectiServer.aspx?num=-5&strTitle="><font color="gray">已锁定:</font></a>
								</td>
								<td>
									&nbsp;<asp:Label ID="lblSock" runat="server" Text=""></asp:Label>
								</td>
							</tr>
						</asp:Panel>
					</table>
				   <br />
					<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
						<tr class="tdbg">
							<td>
								未解决问题:&nbsp;&nbsp; 查找：<asp:TextBox ID="TextBox1" runat="server" Text="" class="l_input"></asp:TextBox>
								<asp:Button ID="Button1" runat="server" Text="搜索" OnClick="Button1_Click" class="i_bottom" />
								<span style="float:right">
								<input type="button" value="更多" class="i_bottom" onclick="javascript:location.href='SelectiServer.aspx?menu=<%=Request.QueryString["menu"] %>&OrderID=<%=Request.QueryString["OrderID"] %>&num=-1&strTitle='" />
								</span>
							</td>
						</tr>
					</table>
					<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
						<tr>
							<td colspan="2">
								<asp:Repeater ID="resultsRepeater_w" runat="server">
									<HeaderTemplate>
										<tr class="title" style="height: 24px; text-align: center">
											<td>编号</td>
											<td>标题</td>
											<td>优先级</td>
											<td>问题类型</td>
											<td>已读次数</td>
											<td>提交时间</td>
											<td>状态</td>
										</tr>
									</HeaderTemplate>
									<ItemTemplate>
										<tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
											<td><%# Eval("QuestionId")%></td>
											<td>
												<a href="FiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>"> <%# ZoomLa.Common.BaseClass.Htmlcode(Eval("Title", "{0}"))%><a>
											</td>
											<td><%# Eval("Priority")%></td>
											<td><%# Eval("Type")%></td>
											<td><%# Eval("ReadCount")%></td>
											<td><%# Eval("SubTime")%></td>
											<td><asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label></td>
										</tr>
									</ItemTemplate>
								</asp:Repeater>
							</td>
						</tr>
					</table>
					<br />
					<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
						<tr class="tdbg">
							<td colspan="2">
								处理中问题:&nbsp;&nbsp;查找：<asp:TextBox ID="TextBox2" runat="server" Text="" class="l_input"></asp:TextBox>
								<asp:Button ID="Button2" runat="server" Text="搜索" OnClick="Button2_Click" class="i_bottom" />
								<span style="float:right">
								<input type="button" value="更多" class="i_bottom" onclick="javascript:location.href='SelectiServer.aspx?menu=<%=Request.QueryString["menu"] %>&num=2&OrderID=<%=Request.QueryString["OrderID"] %>&strTitle='" />
								</span>
							</td>
						</tr>
					</table>
					<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
						<tr>
							<td colspan="2">
								<asp:Repeater ID="resultsRepeater_ch" runat="server">
									<HeaderTemplate>
										<tr class="title" style="height:24px; text-align:center">
											<td>编号</td>
											<td>标题</td>
											<td>优先级</td>
											<td>问题类型</td>
											<td>已读次数</td>
											<td>提交时间</td>
											<td>状态</td>
										</tr>
									</HeaderTemplate>
									<ItemTemplate>
										<tr align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
											<td><%# Eval("QuestionId")%></td>
											<td><a href="FiServerInfo.aspx?QuestionId=<%#Eval("QuestionId")%>">
													 <%# ZoomLa.Common.BaseClass.CheckInjection(Eval("Title", "{0}"))%><a>
											</td>
											<td><%# Eval("Priority")%></td>
											<td><%# Eval("Type")%></td>
											<td><%# Eval("ReadCount")%></td>
											<td><%# Eval("SubTime")%></td>
											<td><asp:Label ID="lblState" runat="server" ForeColor="Red" Text='<%# Eval("State")%>'></asp:Label></td>
										</tr>
									</ItemTemplate>
								</asp:Repeater>
							</td>
						</tr>
					</table>
					<br />
					<input type="button" value="提交新问题" class="i_bottom" onclick="javascript:location.href='AddQuestion.aspx?OrderID=<%=Request.QueryString["OrderID"] %>'" />
				</td>
			</tr>
		</table>
</div> </table>
<%
	if (Request.QueryString["OrderID"] != null && Request.QueryString["OrderID"] != "")
	{
	 %>
 <div style="width:100%; float:right" ><input id="btnreturn" class="i_bottom" type="button" style="float:right" value="返回订单" onclick="javascript:location.href='/user/PreViewOrder.aspx?menu=ViewOrderlist&id=<%=Request.QueryString["OrderID"] %>'" /></div>
 <%} %>
</form>
</body>
</html>