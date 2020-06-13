<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_Infomanage, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置3D地带信息</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
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
    function check(obj) {
        var tw = confirm('您确实要重新创建摊位吗？');
            if (tw == false) {
                obj.checked = false;
            }
            else {
                obj.checked = true;               
            }
    }
</script>

</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
	<span>后台管理</span> &gt;&gt; 3D地带&gt;&gt; <a href="Infomanage.aspx">设置参数</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="center" colspan="2" class="title" width="5%">
				参数设置
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				展位顶部模板(顶部):
			</td>
			<td align="left" style="height: 24px; width:70%">
				<asp:TextBox ID="BootTopTemp" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
							<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('BootTopTemp')+'&FilesDir=',650,480)" class="C_input"/>
							</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				展位信息模板(右部):
			</td>
			<td align="left" style="height: 24px; width:70%">
				<asp:TextBox ID="BootRightTemp" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
							<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('BootRightTemp')+'&FilesDir=',650,480)" class="C_input"/>
				</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				展位产品模板(底部):
			</td>
			<td align="left"  style="height: 24px; width:70%">
				<asp:TextBox ID="BootbottomTemp" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
							<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('BootbottomTemp')+'&FilesDir=',650,480)" class="C_input"/>
				</td>
		</tr>
		<tr class="tdbg" style="display:none">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				产品列表模板:
			</td>
			<td align="left"  style="height: 24px; width:70%">
				<asp:TextBox ID="BootProlistTemp" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
							<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('BootProlistTemp')+'&FilesDir=',650,480)" class="C_input"/>
				</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				产品内容模板:
			</td>
			<td align="left" style="height: 24px; width:70%">
				<asp:TextBox ID="BootProinfoTemp" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
							<input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('BootProinfoTemp')+'&FilesDir=',650,480)" class="C_input"/>
				</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
				摊位起始编号:
			</td>
			<td align="left" style="height: 24px; width:70%">
				<asp:TextBox ID="Boothstart" class="l_input" runat="server" Width="44px">1</asp:TextBox>
			&nbsp;(从起始编号开始累加)</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; padding-right: 20px; font-weight: bold">
				摊位数量:
			</td>
			<td align="left"  style="height: 24px;">
				<asp:TextBox ID="Boothnum" class="l_input" runat="server" Width="65px">100</asp:TextBox>
			&nbsp;(摊位数量上限)</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; padding-right: 20px; font-weight: bold">
				摊位编号名称前缀(管理可见):
			</td>
			<td align="left"  style="height: 24px;">
				<asp:TextBox ID="BootNametop" class="l_input" runat="server" Width="111px">TC_</asp:TextBox>
			&nbsp;(后台管理时显示摊位的前缀)</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; padding-right: 20px; font-weight: bold">
				重新创建:
			</td>
			<td align="left"  style="height: 24px;">
				<asp:CheckBox ID="ReCreate" runat="server" Text ="清空以前创建的摊位" onclick="check(this)" /><font color=red>(谨慎)</font>
			</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg"  style="height: 24px; padding-right: 20px; font-weight: bold">
			   自动创建:
			</td>
			<td align="left"  style="height: 24px;">
				<asp:CheckBox ID="AutoCreate" runat="server" Text ="自动创建摊位" />
			</td>
		</tr>
		<tr class="tdbg">
			<td colspan="2" align="center" class="tdbg" style="height: 24px;">
				<asp:Button ID="Button1" runat="server" Text=" 提 交 " onclick="Button1_Click" class="C_input"/></td>
		</tr>
	</tbody>
</table>

</form>
</body>
</html>