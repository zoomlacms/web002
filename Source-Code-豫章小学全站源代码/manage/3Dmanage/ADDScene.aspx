<%@ page language="C#" autoeventwireup="true" inherits="manage_3Dmanage_ADDScene, App_Web_nvo5em2o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>设置3D地带信息</title>    
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="javascript">
    function funthis(oo) {
            document.getElementById("DSceneClass").value = oo.value;
        }
        function showWin() {
            var img = document.getElementById("txtDSceneBG").value;
            if (img != "") {
                window.open('Localizer.aspx?img=' + img, '', 'width=800,height=600');
                //window.open('Localizer.aspx?img=' + img, 'newWin', 'modal=yes,width=600,height=600,resizable=yes,scrollbars=yes');
            }
        }
        function SetRange(Range) {
            document.getElementById("hfBG").value = Range;
            //alert(document.getElementById("hfBG").value);
        }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
<span>后台管理</span> &gt;&gt; 3D地带 &gt;&gt; <a href="ADDScene.aspx">添加展区场景</a></div>
<div class="clearbox">
</div>
<table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
	<tbody id="Tbody1">
		<tr class="tdbg">
			<td align="center" colspan="2" class="title" width="5%">添加展区场景</td>
		</tr>
		
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">
			   场景名称:
			</td>
			<td align="left" class="tdbg" style="height: 24px; width:70%">
				<asp:TextBox ID="DSceneName" class="l_input" runat="server" Width="343px"></asp:TextBox>
			</td>
		</tr>
		<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; padding-right: 20px; font-weight: bold">
			   场景分类:
			</td>
			<td align="left" class="tdbg" style="height: 24px;">
				<asp:TextBox ID="DSceneClass" class="l_input" runat="server" Height="21px"></asp:TextBox>
				<asp:DropDownList ID="DropDownList1" runat="server" onchange="funthis(this);">
				</asp:DropDownList>
			</td>
				</tr>
		   <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
			<td align="right" class="tdbg" style="height: 24px; padding-right: 20px; font-weight: bold">
			  场景背景:
			<asp:HiddenField ID="hfBG" runat="server" />
		   
			</td>
			<td align="left" class="tdbg" style="height: 24px;">
				<asp:TextBox ID="txtDSceneBG" class="l_input" runat="server" Width="342px"></asp:TextBox>
				 *
			  <asp:Label
						   ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label>
				<input id="Button3" type="button" value="设置场景活动区域" onclick='showWin()'  class="C_input"/><br />
				  <iframe id="Upload_Pic" src="../Common/ThreeDUpload.aspx?CID=DSceneBG&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
			</td>
			</tr>
		   
		<tr class="tdbg">
			<td colspan="2" align="center" class="tdbg" style="height: 24px;">
				<asp:Button ID="Button1" runat="server" Text=" 提 交 " onclick="Button1_Click" class="C_input"/>&nbsp;&nbsp;&nbsp;&nbsp;  
				<asp:Button ID="Button2" runat="server" Text=" 返 回 " onclick="Button2_Click"  class="C_input"/></td>
		</tr>
	</tbody>
</table>
</form>
</body>
</html>