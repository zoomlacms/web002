<%@ page language="C#" autoeventwireup="true" inherits="manage_User_AdminDetail, App_Web_own0w3ym" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>管理员预览</title>
<style type="text/css">
form, ul { padding: 0px; margin: 0px; }
* { margin:0px; padding:0px; }
.r_navigation { margin-bottom: 0px; line-height: 24px; border: 1px solid #9bbde6; background: #f6fdf6; text-align: left; clear: both; color: #000; }
.r_n_pic { float: left; width: 30px; height: 20px; margin: 1px 0px 0px; background: url('../../App_Themes/AdminDefaultTheme/images/localGIF.gif') no-repeat center; display: block; }
.r_navigation a, #r_navigation:link { font: normal normal normal 12px/24px Arial, "宋体", Helvetica, sans-serif; text-decoration: none; color: #000; }
a:link, a:visited, a:active { color: #000000; }
a:link, a:visited { font: 12px "宋体"; color: #000; text-decoration: none; }
a { text-decoration: none; }
.clearbox, .clearbox2 { border-top: 1px solid transparent !important; margin-top: -1px !important; border-top: 0px; margin-top: 0px; height: 5px; clear: both; background: none; font-size: 0px; }
.border, .TableWrap { border: 1px solid #9bbde6; background: #fff; }
.spacingtitle { line-height: 22px; letter-spacing: 8px; }
.title, .gridtitle, .spacingtitle, th { background: #dbf9d9 url('../../App_Themes/AdminDefaultTheme/Images/title.gif') repeat-x 50% top;	/*line-height: 120%;*/ padding:2px; color: #1e860b; font-weight: bold; }
td { line-height: 150%; }
body, th, td, input, button, textarea { font-family: "宋体"; font-size: 12px; margin-left: 0px; }
.tdbg { background: #f6fdf6;	/*line-height: 120%;*/ padding:2px; }
.tdbgleft { background: #e0f7e5;	/*line-height: 120%;*/ padding:2px; }
.l_input { height:18px; line-height:18px; border:1px solid #0c6; }
select { font-family: "Tahoma"; font-size: 12px; }
.C_input { background: url('../../App_Themes/AdminDefaultTheme/images/input_bg.gif') repeat-x center; margin: 2px; overflow: visible; border: 1px solid #8F9F56; cursor: pointer; padding-top:3px; padding-left: 13px; padding-right: 14px; padding-bottom: 3px; }
ul { list-style-type: none; }
</style>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" language="javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2");
    function ShowTabss(SID) {
        if (SID != tID) {
            if (document.getElementById(arrTabTitle[tID].toString()) != null)
                document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            if (document.getElementById(arrTabTitle[SID].toString()) != null)
                document.getElementById(arrTabTitle[SID].toString()).className = "titlemouseover";
            if (document.getElementById(arrTabs[tID].toString()) != null)
                document.getElementById(arrTabs[tID].toString()).style.display = "none";
            if (document.getElementById(arrTabs[SID].toString()) != null)
                document.getElementById(arrTabs[SID].toString()).style.display = "";
            tID = SID;
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;<a href="AdminManage.aspx">管理员管理</a> &gt;&gt;管理员预览</div>
  <div>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr align="center">
        <td id="TabTitle0" class="titlemouseover" onclick="ShowTabss(0)"> 基本信息 </td>
        <td id="TabTitle1" class="tabtitle" onclick="ShowTabss(1)"> 角色设置 </td>
        <td id="TabTitle2" class="tabtitle" onclick="ShowTabss(2)"> 审核权限 </td>
      </tr>
    </table>
  </div>
  <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center">
    <tr>
      <td class="spacingtitle" align="center" colspan="2" dir="ltr" valign="middle"　style="height: 23px"><asp:Label ID="lbTitle" runat="server" Text="管理员预览"></asp:Label>
        &nbsp;</td>
    </tr>
    <tr>
      <td>
    <tbody id="Tabs0">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 23px;" valign="middle"><strong>管理员名：</strong></td>
        <td style="height: 23px"><asp:Label ID="tbdName" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width: 25%; height: 23px;" valign="middle"><strong>真实姓名：</strong></td>
        <td style="height: 23px"><asp:Label ID="txtAdminTrueName" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%;" valign="middle"><strong>选项设置：</strong></td>
        <td><asp:Label ID="cb1" runat="server" Text="Label"></asp:Label>
          <asp:Label ID="cb2" runat="server" Text="Label"></asp:Label>
          <asp:Label ID="cb3" runat="server" Text="Label"></asp:Label>
      </tr>
    </tbody>
    <tbody id="Tabs1" style=" display:none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%;"><strong>&nbsp;管理员角色：</strong></td>
        <td align="left" valign="top"><asp:Label ID="cblRoleList1" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%;"><strong>&nbsp;默认节点控制权限：</strong></td>
        <td align="left" valign="top"><asp:Label ID="DropDownList11" runat="server" Text="Label"></asp:Label></td>
      </tr>
    </tbody>
    <tbody id="Tabs2" style=" display:none">
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%;"><strong>&nbsp;是否前台审核互动：</strong></td>
        <td align="left" valign="top"><asp:Label ID="CheckBox1" runat="server" Text="Label"></asp:Label></td>
      </tr>
      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" style="width:25%;"><strong>&nbsp;发布内容默认状态：</strong></td>
        <td align="left" valign="top"><asp:Label ID="DefaultStart1" runat="server" Text="Label"></asp:Label></td>
      </tr>
    </tbody>
    <tr class="tdbg">
      <td class="tdbgleft" colspan="2" style="height: 23px" align="center"><asp:Button ID="btnSubmit" class="C_input" runat="server" OnClick="btnSubmit_Click" Text="重新修改" />
        <asp:Button ID="btnAdd" runat="server" class="C_input" Text="添加管理员" onclick="btnAdd_Click" />
        &nbsp;
        <asp:Button ID="btnList" class="C_input" runat="server" Text="返回列表" OnClientClick="location.href='AdminManage.aspx';return false;" />
        &nbsp;</td>
    </tr>
  </td>
  </tr>
  </table>
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
</form>
</body>
</html>