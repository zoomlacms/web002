<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.BatchNode, App_Web_pkfeggyy" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>节点批量设置</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
           
        }
    }
    function SelectAll() {
        for (var i = 0; i < document.getElementById('<%=LstNodes.ClientID%>').length; i++) {
            document.getElementById('<%=LstNodes.ClientID%>').options[i].selected = true;
        }
    }
    function UnSelectAll() {
        for (var i = 0; i < document.getElementById('<%=LstNodes.ClientID%>').length; i++) {
            document.getElementById('<%=LstNodes.ClientID%>').options[i].selected = false;
        }
    }
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; <span>系统设置</span> &gt;&gt; <a href="NodeManage.aspx">节点管理</a> &gt;&gt; <span>批量设置</span>
</div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
	<tr align="center">
		<td colspan="2" class="spacingtitle">
			批量设置节点
		</td>
	</tr>
	<tr class="tdbg">
		<td valign="top" align="center" style="width: 213px">
			<table>
				<tr>
					<td align="left">
						<span style="color: Red">提示：</span>可以按住“Shift”<br />
						或“Ctrl”键进行多个节点的选择
					</td>
				</tr>
				<tr>
					<td align="center">
						<asp:ListBox ID="LstNodes" runat="server" DataTextField="NodeName" DataValueField="NodeId" SelectionMode="Multiple" Height="282px" Width="100%"></asp:ListBox>
					</td>
				</tr>
				<tr>
					<td align="center">
						<input id="BtnSelectAll" onclick="SelectAll()" type="button" class="C_input"  style="width:150px;"  value="  选定所有节点  " />
						<input id="BtnCancelAll" onclick="UnSelectAll()" type="button" class="C_input"  style="width:150px;"  value="取消选定所有节点" />
					</td>
				</tr>
			</table>
		</td>
		<td valign="top">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr align="center">
					<td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)" style="height: 24px">
						栏目选项
					</td>
					<td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)" style="height: 24px">
						模板选项
					</td>
					<td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)" style="height: 24px">
						生成选项
					</td>
					<td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)" style="height: 24px">
						浏览权限
					</td>
					<td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)" style="height: 24px">
						操作权限
					</td>
					<td style="height: 24px">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
				<%--栏目选项--%>
				<tbody id="Tabs0" style="">
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkOpenType" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>打开方式：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="_self">原窗口打开</asp:ListItem>
								<asp:ListItem Value="_blank">新窗口打开</asp:ListItem>
								<asp:ListItem Value="_parent">父窗口打开</asp:ListItem>
								<asp:ListItem Value="_top">全局载入</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkItemOpen" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft" width="20%">
							<strong>内容打开方式：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLItemOpenType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="_self">原窗口打开</asp:ListItem>
								<asp:ListItem Value="_blank">新窗口打开</asp:ListItem>
								<asp:ListItem Value="_parent">父窗口打开</asp:ListItem>
								<asp:ListItem Value="_top">全局载入</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkPurview" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>栏目权限：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLPurviewType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">开放</asp:ListItem>
								<asp:ListItem Value="1">认证</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkComment" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>评论权限：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLCommentType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">关闭评论</asp:ListItem>
								<asp:ListItem Value="1">允许评论</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>

					 <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					  <td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkClickTimeout" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>点击统计时间：</strong>
						</td>
						<td>
							<asp:DropDownList ID="ClickTimeout" runat="server">
							<asp:ListItem Text="1秒" Value="1" Selected="True"></asp:ListItem>
							<asp:ListItem Text="30秒" Value="30"></asp:ListItem>
							<asp:ListItem Text="1分钟" Value="60"></asp:ListItem>
							<asp:ListItem Text="5分钟" Value="300"></asp:ListItem>
							<asp:ListItem Text="10分钟" Value="600"></asp:ListItem>
							<asp:ListItem Text="半小时" Value="1800"></asp:ListItem>
							<asp:ListItem Text="1小时" Value="3600"></asp:ListItem>
							<asp:ListItem Text="8小时" Value="28800"></asp:ListItem>
							<asp:ListItem Text="24小时" Value="86400"></asp:ListItem>
							</asp:DropDownList>
						   <%--<asp:TextBox ID="ClickTimeout" class="l_input" runat="server" Columns="30">0</asp:TextBox>--%>
						</td>
					</tr>

					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkHits" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>本栏目热点的点击数最小值：</strong>
						</td>
						<td>
							<asp:TextBox ID="TxtHitsOfHot" class="l_input" runat="server" Columns="5">0</asp:TextBox>
							<asp:RangeValidator ID="ValgHitsOfHot" runat="server" ControlToValidate="TxtHitsOfHot" ErrorMessage="请输入整数" MinimumValue="0" MaximumValue="2147483647" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
						</td>
					</tr>

				   
					
					
				</tbody>
				<%--模板选项--%>
				<tbody id="Tabs1" style="display: none">
				  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkITemp" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>栏目首页模板：</strong>
						</td>
						<td>
							<asp:DropDownList ID="TxtIndexTemplate" runat="server" CssClass="x_input">
                                </asp:DropDownList>
                                <input type="button" value="选择模板" class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtIndexTemplate')+'&FilesDir=',650,480)"
                                     /></td>
					</tr>

					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkTemp" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>栏目列表页模板：</strong>
						</td>
						<td>
							<asp:DropDownList ID="TxtTemplate" runat="server" CssClass="x_input">
                                </asp:DropDownList>
                                <input type="button" value="选择模板"  class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)"
                                    /></td>
					</tr>
					
				  <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="Chk1Temp" runat="server" />
						</td>
						
						<td style="text-align: right" class="tdbgleft">
							<strong>最新信息模板：</strong>
						</td>
						<td>
							<asp:DropDownList ID="LastinfoTemplate" runat="server" CssClass="x_input">
                                </asp:DropDownList>
                                <input type="button" value="选择模板 " class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('LastinfoTemplate')+'&FilesDir=',650,480)" /></td>
					</tr>
					
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					
					 <td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="Chk2Temp" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>热门信息模板：</strong>
						</td>
						<td>
							<asp:DropDownList ID="HotinfoTemplate" runat="server" CssClass="x_input">
                                </asp:DropDownList>
                                <%--<asp:TextBox ID="HotinfoTemplate" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                                <input type="button" value="选择模板" class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('HotinfoTemplate')+'&FilesDir=',650,480)" />
                            </td>
					</tr>
					
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					 <td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="Chk3Temp" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>推荐信息模板：</strong>
						</td>
						<td>
							<asp:DropDownList ID="ProposeTemplate" runat="server" CssClass="x_input">
                                </asp:DropDownList>
                                <%--<asp:TextBox ID="ProposeTemplate" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                                <input type="button" value="选择模板" class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ProposeTemplate')+'&FilesDir=',650,480)" /></td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkModelID" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>选择内容模型:</strong>
						</td>
						<td>
							<asp:HiddenField ID="HdnModeID" runat="server" />
							<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
								<asp:Repeater ID="Repeater1" runat="server">
									<ItemTemplate>
										<tr class="tdbg">
											<td style="width: 120px" class="tdbgleft">
												<input type="checkbox"  id="ChkModel" name="ChkModel" value="<%# Eval("ModelID") %>" />
												<%# Eval("ModelName") %>
											</td>
											<td>
												<input type="text" style="width: 200px" class="l_input" name="TxtModelTemplate_<%# Eval("ModelID") %>" id="TxtModelTemplate_<%# Eval("ModelID") %>" value="<%# Eval("ContentTemplate") %>" maxlength="255" />
												<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtModelTemplate_<%# Eval("ModelID") %>')+'&FilesDir=',650,480)" class="C_input"  style="width:110px;"  />
											</td>
										</tr>
									</ItemTemplate>
								</asp:Repeater>
							</table>
						</td>
					</tr>
				</tbody>
				<%--浏览权限--%>
				<tbody id="Tabs3" style="display: none">
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td class="tdbgleft" style="width: 288px">
							<strong>浏览/查看权限：</strong><br />
							栏目权限为继承关系。例如：当父栏目设为“认证栏目”时，子栏目的权限设置将继承父栏目设置，即使子栏目设为“开放栏目”也无效。相反，如果父栏目设为“开放栏目”，子栏目可以设为“半开放栏目”或“认证栏目”。
						</td>
						<td>
							<asp:RadioButton ID="allUser" GroupName="group" Checked="true" runat="server" />开放栏目 任何人（包括游客）可以浏览和查看此栏目下的信息。 <br />
							<asp:RadioButton ID="moreUser" GroupName="group" runat="server" />半开放栏目 任何人（包括游客）都可以浏览。游客不可查看，其他会员根据会员组的栏目权限设置决定是否可以查看。  <br />
							<asp:RadioButton ID="onlyUser" GroupName="group" runat="server" />认证栏目 游客不能浏览和查看，其他会员根据会员组的栏目权限设置决定是否可以浏览和查看。  <br />
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td class="tdbgleft" style="width: 288px">
							<strong>允许浏览此栏目的会员组：</strong><br />
如果栏目是“半开放栏目”或“认证栏目”，请在此设置允许浏览此栏目的会员组
						</td>
						<td>
							<asp:CheckBoxList ID="ViewGroup" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" Width="100%">
								<asp:ListItem Value="-2">待验证会员</asp:ListItem>
								<asp:ListItem Value="-1">已验证会员</asp:ListItem>
							</asp:CheckBoxList>
						</td>
					</tr>

					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td class="tdbgleft" style="width: 288px">
							<strong>允许查看此栏目下信息的会员组：</strong><br />
如果栏目是“认证栏目”，请在此设置允许查看此栏目下信息的会员组
如果在信息中设置了查看权限，则以信息中的权限设置优先
						</td>
						<td>
							<asp:CheckBoxList ID="ViewGroup2" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" Width="100%">
								<asp:ListItem Value="-2">待验证会员</asp:ListItem>
								<asp:ListItem Value="-1">已验证会员</asp:ListItem>
							</asp:CheckBoxList>
					</tr>

					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td class="tdbgleft" style="width: 288px">
							<strong>发表权限：</strong><br />
请在此设置允许在此栏目发表信息的会员组。
游客没有发表信息权限。
						</td>
						<td>
							<asp:CheckBoxList ID="ViewGroup3" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" Width="100%">
								<asp:ListItem Value="-2">待验证会员</asp:ListItem>
								<asp:ListItem Value="-1">已验证会员</asp:ListItem>
							</asp:CheckBoxList>
					</tr>

					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td class="tdbgleft" style="width: 288px">
							<strong>评论权限：</strong><br />
						</td>
						<td>
							<asp:CheckBoxList ID="forum" runat="server">
								<asp:ListItem Selected="True" Value="1">允许在此栏目发表评论</asp:ListItem>
								<asp:ListItem Selected="True" Value="2">评论需要审核</asp:ListItem>
							</asp:CheckBoxList>
					</tr>
				</tbody>
				<%--权限设置--%>
				<tbody id="Tabs4" style="display: none">
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="NodeRole" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>栏目权限设置：</strong>
						</td>
						<td>
							<asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleID" Width="100%">
								<Columns>
									<asp:BoundField DataField="RoleName" HeaderText="角色名">
										<HeaderStyle Width="35%" />
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:BoundField>
									<asp:TemplateField HeaderText="查看">
										<HeaderStyle Width="10%" />
										<ItemTemplate>
											<asp:CheckBox ID="chkSel1" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
									<asp:TemplateField HeaderText="录入">
										<HeaderStyle Width="10%" />
										<ItemTemplate>
											<asp:CheckBox ID="chkSel2" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
									<asp:TemplateField HeaderText="审核">
										<HeaderStyle Width="10%" />
										<ItemTemplate>
											<asp:CheckBox ID="chkSel3" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
									<asp:TemplateField HeaderText="信息管理">
										<HeaderStyle Width="10%" />
										<ItemTemplate>
											<asp:CheckBox ID="chkSel4" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
									<asp:TemplateField HeaderText="当前栏目管理">
										<HeaderStyle Width="15%" />
										<ItemTemplate>
											<asp:CheckBox ID="chkSel5" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
									<asp:TemplateField HeaderText="评论管理">
										<ItemTemplate>
											<asp:CheckBox ID="chkSel6" runat="server" />
										</ItemTemplate>
										<ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
									</asp:TemplateField>
								</Columns>
								<RowStyle ForeColor="Black" BackColor="#DEDFDE" Height="25px" />
								<SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
								<PagerStyle CssClass="tdbg" ForeColor="Black" HorizontalAlign="Center" />
								<HeaderStyle CssClass="tdbg" Font-Bold="True" ForeColor="#E7E7FF" BorderStyle="None" Height="30px" Font-Overline="False" />
							</asp:GridView>
						</td>
					</tr>
				</tbody>
				<%--生成选项--%>
				<tbody id="Tabs2" style="display: none">
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkListEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft" width="20%">
							<strong>列表首页扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLListEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>

                   

                   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkListPageEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>栏目列表页面扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="ListPageEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkLastinfoPageEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>最新信息页扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="LastinfoPageEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkHotinfoPageEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>热门信息页扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="HotinfoPageEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkProposePageEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>推荐信息扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="ProposePageEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>




					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkContentEx" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>内容页扩展名：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLContentEx" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
								<asp:ListItem Value="1">.htm</asp:ListItem>
								<asp:ListItem Value="2">.shtml</asp:ListItem>
								<asp:ListItem Value="3">.aspx</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkPosition" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>节点目录生成位置：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLPosition" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">根目录下</asp:ListItem>
								<asp:ListItem Value="1">继承父节点目录</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
						<td style="width: 30px; text-align: center" class="tdbgleft">
							<asp:CheckBox ID="ChkContentRule" runat="server" />
						</td>
						<td style="text-align: right" class="tdbgleft">
							<strong>内容页文件名规则：</strong>
						</td>
						<td>
							<span style="BORDER-RIGHT:green 1px solid; BORDER-TOP:green 1px solid; OVERFLOW:hidden; BORDER-LEFT:green 1px solid; BORDER-BOTTOM:green 1px solid; POSITION:absolute; margin-top:-9px">
							<asp:DropDownList ID="DDLContentRule" runat="server" style="Margin:-2px">
								<asp:ListItem Selected="True" Value="2">栏目目录/InfoID</asp:ListItem>
								<asp:ListItem Value="1">栏目目录/年-月/InfoID</asp:ListItem>
								<asp:ListItem Value="0">栏目目录/年/月/日/infoid</asp:ListItem>
								<asp:ListItem Value="3">栏目目录/年月日/标题</asp:ListItem>
							</asp:DropDownList></span>
						</td>
					</tr>
				</tbody>
				<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
					<td colspan="3" class="tdbgleft">
						<font color="blue">说明：</font><br />
						1、若要批量修改某个属性的值，请先选中其左侧的复选框，然后再设定属性值。<br />
						2、这里显示的属性值都是系统默认值，与所选节点的已有属性无关
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr align="center">
		<td colspan="2" class="tdbgleft">
			<asp:Button ID="EBtnBacthSet" class="C_input"  style="width:110px;"  Text="执行批处理" OnClick="EBtnBacthSet_Click" runat="server" />
			<asp:Button ID="BtnCancel" class="C_input"  style="width:110px;"  runat="server" Text="取消" OnClick="BtnCancel_Click" />
		</td>
	</tr>
</table>
</form>
</body>
</html>