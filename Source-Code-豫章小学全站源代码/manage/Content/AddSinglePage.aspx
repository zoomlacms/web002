<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddSinglePage, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加单页节点</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
            //parent.document.getElementById("main_right").height = document.body.offsetHeight + 600;

        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理 &gt;&gt; 系统设置 &gt;&gt; <a href="NodeManage.aspx">节点管理</a> &gt;&gt; 添加单页节点</div>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
 <tr align="center">
		<td class="spacingtitle" colspan="2">
			<asp:Label ID="LblTitle" runat="server" Text="添加单页节点" />
		</td>
	</tr>
<tr><td>
  <table border="0" cellpadding="0" cellspacing="0">
	<tr align="center">
		<td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
			基本信息
		</td>
		<td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
			栏目选项
		</td>
		<td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
			生成选项
		</td>
		
	</tr>
</table>
</td></tr>
   <tbody id="Tabs0">
	<tr class="tdbg">
		<td style="width: 288px" class="tdbgleft">
			<strong>所属节点：</strong>
		</td>
		<td>
			&nbsp;<asp:Label ID="LblNodeName" runat="server" Text=""></asp:Label><asp:HiddenField ID="HdnParentId" Value="0" runat="server" />
			<asp:HiddenField ID="HdnDepth" Value="0" runat="server" />
			<asp:HiddenField ID="HdnOrderID" Value="0" runat="server" />
			<asp:HiddenField ID="HdnNodeID" Value="0" runat="server" />
		</td>
	</tr>
	 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>单页名称：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtNodeName" class="l_input" runat="server"  
				ontextchanged="TxtNodeName_TextChanged" AutoPostBack="True" />
			<asp:RequiredFieldValidator ID="ValrNodeName" runat="server" ErrorMessage="单页名称不能为空！" ControlToValidate="TxtNodeName" Display="Dynamic" SetFocusOnError="True" />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>单页标识符：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtNodeDir" class="l_input" runat="server" />
			<asp:RequiredFieldValidator ID="ValrNodeIdentifier" runat="server" ErrorMessage="标识符不能为空！" ControlToValidate="TxtNodeDir" Display="Dynamic" SetFocusOnError="True" />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td style="width: 288px" class="tdbgleft">
			<strong>单页图片地址：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtNodePicUrl" class="l_input"  MaxLength="255" runat="server" Columns="50"></asp:TextBox>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td style="width: 288px" class="tdbgleft">
			<strong>单页提示：</strong>
		</td>
		<td>
			<asp:TextBox ID="TxtTips" class="l_input" runat="server" Columns="60" 
				Height="65px" Width="360px" Rows="2" TextMode="MultiLine"></asp:TextBox>
		</td>
	</tr>
   
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>单页说明：</strong><br />
			用于在单页页详细介绍单页信息，支持HTML
		</td>
		<td>
			<asp:TextBox ID="TxtDescription" class="l_input" runat="server" Columns="60" Height="65px" Width="360px" Rows="2" TextMode="MultiLine" />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>单页META关键词：</strong><br />
			针对搜索引擎设置的关键词<br />
		</td>
		<td>
			<asp:TextBox ID="TxtMetaKeywords" class="l_input" runat="server" Height="65px" Width="360px" Columns="60" Rows="4" TextMode="MultiLine" />
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>单页META网页描述：</strong><br />
			针对搜索引擎设置的网页描述<br />
		</td>
		<td>
			<asp:TextBox ID="TxtMetaDescription" class="l_input" runat="server" Height="65px" Width="360px" Columns="60" Rows="4" TextMode="MultiLine" />
		</td>
	</tr>
 </tbody>
				  
  <tbody id="Tabs1" style="display:none">
	<tr class="tdbg">
		<td style="width: 288px" class="tdbgleft">
			<strong>打开方式：</strong>
		</td>
		<td>
			<asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
				<asp:ListItem Value="1">新窗口打开</asp:ListItem>
			</asp:RadioButtonList>
		</td>
	</tr>
	
	<tr class="tdbg">
						<td style="width: 288px" class="tdbgleft">
							<strong>内容打开方式：</strong>
						</td>
						<td>
							<asp:RadioButtonList ID="RBLItemOpenType" runat="server" RepeatDirection="Horizontal">
								<asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
								<asp:ListItem Value="1">新窗口打开</asp:ListItem>
							</asp:RadioButtonList>
						</td>
					</tr>
					
	
   
	 <tr class="tdbg">
		<td style="width: 288px" class="tdbgleft">
			<strong>转换形式：</strong>
		</td>
		<td>
			<asp:RadioButtonList runat="server" AutoPostBack="True" RepeatDirection="Horizontal" ID="RadioButtonList1" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
				<asp:ListItem Value="0" Selected="True">站点转换</asp:ListItem>
				<asp:ListItem Value="1">页面转换</asp:ListItem>
			</asp:RadioButtonList>
		</td>
	</tr>
	
	 <tr class="tdbg">
						<td class="tdbgleft">
							<strong>内容防护：</strong>
						</td>
						<td class="style2">
							<asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="SafeGuard">
								<asp:ListItem Value="1" Selected="True">是</asp:ListItem>
								<asp:ListItem Value="0">否</asp:ListItem>
							</asp:RadioButtonList>备注:如启用则将 <span style="color: #FF0000; background-color: #FFFF00">{ZL.Guard/}</span> 放到相应的容器中即能防止复制与盗链。
						</td>
	</tr>
	<tr class="tdbg">
						<td style="width: 288px" class="tdbgleft">
							<strong>绑定互动管理：</strong><br />
						</td>
						<td>
							<asp:DropDownList ID="DropDownList1" runat="server">
							</asp:DropDownList>
							&nbsp;<span style='color: #1e860b;'>只能绑定节点类别的互动模块</span>
						</td>
					</tr>
						<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td class="tdbgleft">
				<strong>子站定位：</strong>
			</td>
			<td>
				<asp:TextBox ID="TextBox1" class="l_input" runat="server" /><asp:Label ID="Label1" runat="server" Text="<span style='color:#1e860b;'>&nbsp;&nbsp;数据为空则不启用此功能.子站转换则输入全路径：样例：www.zoomla.cn/default.aspx。如重写为其他页面，输入格式为index.aspx或abc/index.aspx</span>"></asp:Label>
			</td>
		</tr>
		 <tr class="tdbg">
		<td colspan="2">
			<div style="color: Red; line-height: 20px; text-indent: 15px;" class="r_navigation">
				URL重写提示：abc/index.aspx 为网站根目录下abc文件夹下的index.aspx文件
				<br />
				如果重写为子站，跳转虚拟地址输入格式可为：
				<br />
				&nbsp;&nbsp;www.zoomla.cn/default.aspx
				<br />
				&nbsp;&nbsp;www.zoomla.cn/aa/default.aspx
				<br />
				&nbsp;&nbsp;www.zoomla.cn/aa<br />
				&nbsp;&nbsp;www.zoomla.cn/abc.aspx
				<br />
			</div>
		</td>
	</tr>
	</tbody>  
	
	<tbody id="Tabs2" style="display:none">
	 <tr class="tdbg">
		<td style="width: 288px" class="tdbgleft">
			<strong>单页扩展名：</strong>
		</td>
		<td>
			<asp:RadioButtonList ID="RBLListEx" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem Value="0">.html</asp:ListItem>
				<asp:ListItem Value="1">.htm</asp:ListItem>
				<asp:ListItem Value="2">.shtml</asp:ListItem>
				<asp:ListItem Value="3" Selected="True">.aspx</asp:ListItem>
			</asp:RadioButtonList>
		</td>
	</tr>
	 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td style="width: 288px" class="tdbgleft">
			<strong>单页目录生成位置：</strong>
		</td>
		<td>
			<asp:RadioButtonList ID="RBLPosition" runat="server" RepeatDirection="Horizontal">
				<asp:ListItem  Value="0">根目录下</asp:ListItem>
				<asp:ListItem Selected="True" Value="1">继承父节点目录</asp:ListItem>
			</asp:RadioButtonList>
		</td>
	</tr>
	<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
		<td class="tdbgleft">
			<strong>指定单页模板：</strong>
		</td>
		<td align="left">
			<asp:TextBox ID="TxtTemplate" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
			<input type="button" value="选择模板" class="C_input"  style="width:100px;"  onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)"  />
		</td>
	</tr>
	</tbody>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td align="center">
			&nbsp; &nbsp;
			<asp:Button ID="EBtnSubmit" Text="保存" class="C_input" OnClick="EBtnSubmit_Click" runat="server" />&nbsp; &nbsp;
			<input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消" onclick="window.location.href='NodeManage.aspx'" />
		</td>
	</tr>
</table>
</form>
</body>
</html>