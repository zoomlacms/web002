<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_AddUpdateProject, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>查看或修改项目资料</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>

<script language="javascript" src="../../JS/calendar.js"></script>
<style type="text/css">
.style1
{background: #e0f7e5;/*line-height: 120%;*/    padding: 2px;width: 262px;height: 49px;        }
.style2{height: 49px;        }
.style3{background: #e0f7e5;/*line-height: 120%;*/    padding: 2px;width: 262px;}
</style>
<script language="javascript">
var tID = 0;
var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3");
var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3");
function show1(SID) {

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

    try {
    } catch (Error)
    { }
}
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
        <span>后台管理</span> &gt;&gt; <span>CRM应用</span> &gt;&gt; <a href="Projects.aspx">项目管理</a> &gt;&gt; <span>修改项目</span>
    </div>
<div class="clearbox"></div>
 <table border="0" cellpadding="0" cellspacing="0" style="width: 325px">
    <tr align="center">
        <td id="TabTitle0" class="titlemouseover" onclick="show1(0)">
            基本资料
        </td>
        <td id="TabTitle1" class="tabtitle" onclick="show1(1)">
            关联信息
        </td>
        <td id="TabTitle2" class="tabtitle" onclick="show1(2)">
            项目需求
        </td>
        <td id="TabTitle3" class="tabtitle" onclick="show1(3)">
            项目流程
        </td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
<tbody id="Tabs0">
    <tr  class="spacingtitle" style="height:30px;">
		<td align="center" colspan="2" ><asp:Label ID="lblText" runat="server">修改项目</asp:Label></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>名称：</strong><br />项目名称</td>
        <td>
            <asp:TextBox ID="TxtProName" class="l_input" runat="server" Width="222px" />
            <asp:RequiredFieldValidator ID="rfv" runat="server" ControlToValidate="TxtProName" Display="Dynamic" ErrorMessage="项目名称不可为空">项目名称不可为空</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>项目类型：</strong><br />请选择项目类型</td>
        <td><asp:DropDownList ID="DDListType" runat="server" Width="145px"></asp:DropDownList>
            <asp:LinkButton ID="LkBtn" runat="server" PostBackUrl="ProjectsAddType.aspx"  CausesValidation="False">新增项目类型</asp:LinkButton>
        </td>
    </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>项目价格：</strong><br />该项目的价格(人民币)</td>
        <td><asp:TextBox ID="TxtPrice" class="l_input" runat="server" Width="222px" />元<asp:RangeValidator ID="RvPrice" runat="server" ControlToValidate="TxtPrice" Display="Dynamic"  ErrorMessage="价格格式不对" MaximumValue="99999" MinimumValue="0"></asp:RangeValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>项目经理：</strong><br />该项目的负责人或组长</td>
        <td><asp:TextBox ID="TxtLeader" class="l_input" runat="server" Width="222px" /></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>技术负责人：</strong><br />该项目的技术负责人或技术组长</td>
        <td><asp:TextBox ID="WebCoding" class="l_input" runat="server" Width="222px" /></td>
    </tr>
    </tbody>
<tbody id="Tabs1" style="display:none">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>关联订单：</strong><br />相关联的订单ID</td>
        <td><asp:TextBox ID="TxtOrderID" class="l_input" runat="server" Width="222px" />
            <asp:RangeValidator ID="Rv" runat="server" ControlToValidate="TxtOrderID"  Display="Dynamic" ErrorMessage="*" MaximumValue="9999" MinimumValue="0">请输入数字1-9999</asp:RangeValidator>
        </td>
    </tr>        
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>关联会员：</strong><br />相关联的会员ID</td>
        <td><asp:TextBox ID="TxtUserID" class="l_input" runat="server" Width="222px" />
            <asp:RangeValidator ID="RvTxtUser" runat="server" ControlToValidate="TxtUserID" ErrorMessage="*" MaximumValue="9999" MinimumValue="0">请输入数字1-9999</asp:RangeValidator>
        </td>
    </tr>
    <tr runat="server" id="info" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>所属客户：</strong></td>
        <td>    
            <table>
                <tr><td align="right" style="font-weight:bold"><asp:Label ID="lblName" runat="server" Text="Label"></asp:Label></td></tr>
            </table>
        </td>
    </tr>
    </tbody>
<tbody id="Tabs2"  style="display:none">
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>项目要求：</strong><br />项目需求说明</td>
        <td><textarea cols="80" id="TxtRequire" width="380px" height="82px" name="infoeditor" rows="10" runat="server" readonly="readonly"></textarea>
            <script id="headscript" type="text/javascript">  
                //<![CDATA[
                CKEDITOR.replace('TxtRequire',  //这个" infoeditor  "值也改成ifream的id
                {
                skin: 'v2',
                enterMode: 2,
                shiftEnterMode: 2,
                toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
            });
                //]]>
            </script></td>
    </tr>
    </tbody>
<tbody id="Tabs3"  style="display:none">
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>审核状态：</strong><br />审核中.已通过审核</td>
        <td>
            <asp:RadioButtonList ID="RBLAudit" runat="server" RepeatDirection="Horizontal" Width="222px" AutoPostBack="True">
                <asp:ListItem Value="1">等待审核</asp:ListItem>
                <asp:ListItem Value="2">通过审核</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>项目状态：</strong><br />未启动:已通过审核,等待启动中.<br />启动:项目开始做了.<br />完成-2.<br />存档:存档后该项目不可再度修改</td>
        <td>
            <asp:RadioButtonList ID="RBListStatus" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">未启动</asp:ListItem>
                <asp:ListItem Value="1">启动</asp:ListItem>
                <asp:ListItem Value="2">完成</asp:ListItem>
                <asp:ListItem Value="3">存档</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>启动时间：</strong><br />通过审核后，项目开工的时间</td>
        <td><asp:TextBox ID="TxtBeginTime" class="l_input" runat="server" Width="222px" onfocus="calendar(this)"/></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>当前进度：</strong><br /></td>
        <td><asp:DropDownList ID="DDListProcess" runat="server"></asp:DropDownList><a href="ProjectsProcesses.aspx?id=<%=GetID() %>">查看详情</a></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>完成时间：</strong><br /></td>
        <td><asp:TextBox ID="TxtCompleteTime" class="l_input" runat="server" Width="222px" onfocus="calendar(this)"/></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>评分：</strong><br />请输入0-100间的数字</td>
        <td class="tdbg"><asp:TextBox ID="TxtRating" class="l_input" runat="server" Width="222px"/>
            <asp:RangeValidator ID="RvRating" runat="server" ControlToValidate="TxtRating" 
                ErrorMessage="*" MaximumValue="99" MinimumValue="0">请打分0-99之间</asp:RangeValidator>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>评价：</strong><br />项目完成后，客户对它的评价</td>
        <td><asp:TextBox ID="TxtEvaluation" class="l_input" runat="server" Width="380px" Height="84px" TextMode="MultiLine"/></td>
                   
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft"><strong>申请时间：</strong><br /></td>
        <td><asp:TextBox ID="TxtApplicationTime" class="l_input" runat="server" Width="222px" onfocus="calendar(this)" ToolTip="选择申请时间" /></td>
    </tr>
    <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
     </tbody>
</table>
<div class="clearbox"></div>
<div style=" text-align:center; width:792px"><asp:Button ID="BtnCommit" 
        runat="server" Text="修改"  class="C_input" onclick="BtnCommit_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnBack" runat="server" Text="返回" class="C_input" onclick="Button2_Click" />
</div>
</form>
</body>
</html>