<%@ page language="C#" autoeventwireup="true" inherits="ZommLa.WebSite.Manage.Content.EditNode, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>修改栏目节点</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>

<script language="JavaScript" type="text/JavaScript">
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
           // parent.document.getElementById("main_right").height = document.body.offsetHeight + 600;
        }
    }
    function showCustom(value) {
        var index = parseInt(value);

        for (i = 2; i <= 20; i++) {
            if (i <= index)
                document.getElementById("Custom" + i).style.display = "";
            else
                document.getElementById("Custom" + i).style.display = "none";
        }
    }

    function selectnum() {
       //s parent.document.getElementById("main_right").height = document.body.offsetHeight + 50;
    }
</script>

<style type="text/css">
         /*　书签式面板菜单标题背景样式定义 */
.tabtitle, .titlemouseover
{
	width: 80px;
	height: 22px;
	/*line-height: 120%;*/
	padding:0px;
	padding-top: 2px;
	font-weight: normal;
	cursor: pointer;
}
.tabtitle
{
	background: url(../Images/tabon6.gif);
}
.titlemouseover
{
	background: url(../Images/bg_top2.gif);
	color: #ffffff;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
           当前位置：功能导航 >> 编辑栏目</div> 
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                基本信息
            </td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                栏目选项
            </td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)">
                收费设置
            </td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
                模板选项
            </td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
                生成选项
            </td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)">
                自设内容
            </td>
            <%--<td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6)">
                权限设置
            </td>
            <td id="TabTitle7" class="tabtitle" onclick="ShowTabs(7)">
                方案配置
            </td>--%>
            <td align="left">
                &nbsp;
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <%-- 基本信息--%>
                    <tbody id="Tabs0">
                        <tr class="tdbg">
                            <td class="style3">
                                
                                <strong><asp:Label ID="Label2" runat="server" Text="所属栏目："></asp:Label></strong>
                            </td>
                            <td align="left">
                                <asp:Label ID="LblNodeName" runat="server" Text=""></asp:Label>
                                <asp:HiddenField ID="HdnParentId" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnDepth" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnOrderID" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnChild" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnNodeID" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnKeyName" Value="0" runat="server" />
                                <asp:HiddenField ID="HdnDir" Value="0" runat="server" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>
                                   
                                    <asp:Label ID="Label3" runat="server" Text="栏目名称："></asp:Label></strong>
                            </td>
                            <td align="left">
                             <asp:TextBox ID="TxtNodeName" runat="server" 
                                    ontextchanged="TxtNodeName_TextChanged1" AutoPostBack=true></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目标识名：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtNodeDir" MaxLength="20" runat="server" Columns="20" 
                                    AutoPostBack="True" ontextchanged="TxtNodeDir_TextChanged"></asp:TextBox>
                                <span style="color: Blue">注意，目录名只能是字母、数字、下划线组成，首字符不能是数字
                                    <asp:RegularExpressionValidator ID="RegTxtNodeDir" runat="server" ControlToValidate="TxtNodeDir" Display="Dynamic" ValidationExpression="[_a-zA-Z][_a-zA-Z0-9]*" ErrorMessage="目录名格式错误" SetFocusOnError="True"></asp:RegularExpressionValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目图片地址：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtNodePicUrl" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目提示：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtTips" runat="server" Columns="60" Height="30" Width="500" Rows="2" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目说明：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtDescription" runat="server" Columns="60" Height="30" Width="500" Rows="2" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目META关键词：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtMetaKeywords" runat="server" Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目META网页描述：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtMetaDescription" runat="server" Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                    <%--栏目选项--%>
                    <tbody id="Tabs1" style="display: none">
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>打开方式：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="_self">原窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_blank">新窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_parent">父窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_top">全局载入</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>

                        <tr class="tdbg">
                            <td class="style3">
                                <strong>内容打开方式：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLItemOpenType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="_self">原窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_blank">新窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_parent">父窗口打开</asp:ListItem>
                                    <asp:ListItem Value="_top">全局载入</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目权限：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLPurviewType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0">开放</asp:ListItem>
                                    <asp:ListItem Value="1">认证</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>评论权限：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLCommentType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0">关闭评论</asp:ListItem>
                                    <asp:ListItem Value="1">开放评论</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>本栏目热点的点击数最小值：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtHitsOfHot" runat="server" Columns="5">0</asp:TextBox>
                                <asp:RangeValidator ID="ValgHitsOfHot" runat="server" ControlToValidate="TxtHitsOfHot" ErrorMessage="请输入整数" MinimumValue="0" MaximumValue="2147483647" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                         <tr class="tdbg">
                            <td class="tdbgleft">
                                 <strong>工作流：</strong>
                            </td>
                            <td align="left">
                                <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style1">
                                <strong>转换形式：</strong>
                            </td>
                            <td class="style2" align=left>
                                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1">
                                    <asp:ListItem Value="0" Selected="True">站点转换</asp:ListItem>
                                    <asp:ListItem Value="1">页面转换</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        
                         <tr class="tdbg">
                            <td class="style1">
                                <strong>内容防护：</strong>
                            </td>
                            <td class="style2" align=left>
                                <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="SafeGuard">
                                    <asp:ListItem Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                                </asp:RadioButtonList>备注:如启用则将 <span style="color: #FF0000; background-color: #FFFF00">{ZL:Guard()/}</span> 放到相应的容器中即能防止复制与盗链。
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td style="width: 288px" class="tdbgleft">
                                <strong>绑定互动管理：</strong><br />
                            </td>
                            <td align="left">
                                <asp:DropDownList ID="DropDownList1" runat="server">
                                </asp:DropDownList>
                                &nbsp;<span style='color: #1e860b;'>只能绑定节点类别的互动模块</span>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>子站定位：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="UrlLook" runat="server"></asp:TextBox>
                                <asp:Label ID="Label1" runat="server" Text="<span style='color:#1e860b;'>&nbsp;&nbsp;数据为空则不启用此功能.子站转换则输入全路径：样例：www.zoomla.cn/default.aspx。如重写为其他页面，输入格式为index.aspx或abc/index.aspx</span>"></asp:Label>
                            </td>
                        </tr>      
                        <tr class="tdbg">
                            <td colspan="2">
                                <div style="color: Red; line-height: 20px; text-indent: 15px;" 
                                    class="border" align="left">
                                    URL重写提示：abc/index.aspx 为网站根目录下abc文件夹下的index.aspx文件
                                    ,如果重写为子站，跳转虚拟地址输入格式可为：
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
                    <%--收费设置--%>
                    <tbody id="Tabs2" style="display: none">
                        <tr class="tdbg">
                            <td class="style3" style="width:30%">
                                <strong>默认消费点券数：</strong><br />
                                注：会员在此栏目下阅读内容时，该内容默认的收费点券数
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtConsumePoint" runat="server" Columns="5">0</asp:TextBox>点
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>重复收费方式：</strong><br />
                                注：会员在此栏目下阅读内容时，该内容的重复收费方式
                            </td>
                            <td align="left">
                                <input id="Radio1" name="ConsumeType" runat="server" value="0" type="radio" />不重复收费<br />
                                <input id="Radio2" name="ConsumeType" runat="server" value="1" type="radio" />距离上次收费时间<asp:TextBox ID="TxtConsumeTime" runat="server" Columns="5">0</asp:TextBox>小时后重新收费<br />
                                <input id="Radio3" name="ConsumeType" runat="server" value="2" type="radio" />会员重复阅读此文章<asp:TextBox ID="TxtConsumeCount" runat="server" Columns="5">0</asp:TextBox>次后重新收费<br />
                                <input id="Radio4" name="ConsumeType" runat="server" value="3" type="radio" />上述两者都满足时重新收费<br />
                                <input id="Radio5" name="ConsumeType" runat="server" value="4" type="radio" />上述两者任一个满足时就重新收费<br />
                                <input id="Radio6" name="ConsumeType" runat="server" value="5" type="radio" />每阅读一次就重复收费一次（建议不要使用）<br />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>分成比例：</strong><br />
                                注：会员在此栏目下添加内容时，该内容默认的分成比例
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtShares" runat="server" Columns="5">0</asp:TextBox>%
                            </td>
                        </tr>
                    </tbody>
                    <%--模板选项--%>
                    <tbody id="Tabs3" style="display: none">
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目首页模板：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtIndexTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtIndexTemplate')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>栏目列表页模板：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td style="width: 288px" class="tdbgleft">
                                <strong>最新信息模板：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="LastinfoTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('LastinfoTemplate')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td style="width: 288px" class="tdbgleft">
                                <strong>热门信息模板：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="HotinfoTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('HotinfoTemplate')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                            </td>
                        </tr>
                        
                        <tr class="tdbg">
                            <td style="width: 288px" class="tdbgleft">
                                <strong>推荐信息模板：</strong>
                            </td>
                            <td align="left">
                                <asp:TextBox ID="ProposeTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                                <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ProposeTemplate')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>选择内容模型:</strong>
                            </td>
                            <td align="left">
                                <asp:HiddenField ID="HdnModeID" runat="server" />
                                <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
                                    <asp:Repeater ID="Repeater1" runat="server">
                                        <ItemTemplate>
                                            <tr class="tdbg">
                                                <td style="width: 150px" >
                                                    <%# GetChk(Eval("ModelID","{0}")) %>
                                                    <%# Eval("ModelName") %>
                                                </td>
                                                <td align="left">
                                                    <input type="text" name="TxtModelTemplate_<%# Eval("ModelID") %>" id="TxtModelTemplate_<%# Eval("ModelID") %>" value="<%# GetTemplate(Eval("ModelID","{0}")) %>" maxlength="255" />
                                                    <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtModelTemplate_<%# Eval("ModelID") %>')+'&nid=<%=Request.QueryString["NodeID"] %>&FilesDir=',650,480)" class="button" />
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </table>
                            </td>
                        </tr>
                    </tbody>
                    <%--生成选项--%>
                    <tbody id="Tabs4" style="display: none">
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>列表首页扩展名：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLListEx" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                                    <asp:ListItem Value="1">.htm</asp:ListItem>
                                    <asp:ListItem Value="2">.shtml</asp:ListItem>
                                    <asp:ListItem Value="3">.aspx</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>内容页扩展名：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLContentEx" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                                    <asp:ListItem Value="1">.htm</asp:ListItem>
                                    <asp:ListItem Value="2">.shtml</asp:ListItem>
                                    <asp:ListItem Value="3">.aspx</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>节点目录生成位置：</strong>
                            </td>
                            <td align="left">
                                <asp:RadioButtonList ID="RBLPosition" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Selected="True" Value="0">根目录下</asp:ListItem>
                                    <asp:ListItem Value="1">继承父节点目录</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>内容页文件名规则：</strong>
                            </td>
                            <td align="left">
                                <asp:DropDownList ID="DDLContentRule" runat="server">
                                    <asp:ListItem Selected="True" Value="0">栏目目录/年/月/日/infoid</asp:ListItem>
                                    <asp:ListItem Value="1">栏目目录/年-月/InfoID</asp:ListItem>
                                    <asp:ListItem Value="2">栏目目录/InfoID</asp:ListItem>
                                    <asp:ListItem Value="3">栏目目录/年月日/标题</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                    <%--生成选项--%>
                    <%--<tbody id="Tabs6" style="display: none">
                        <tr class="tdbg">
                            <td class="style3">
                                <strong>角色权限：</strong>
                            </td>
                            <td align="left">
                                <asp:GridView ID="Egv" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleID" Width="100%">
                                    <Columns>
                                        <asp:BoundField DataField="RoleName" HeaderText="角色名">
                                            <HeaderStyle Width="35%" />
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:TemplateField HeaderText="查看">
                                            <HeaderStyle Width="10%" />
                                            <ItemTemplate>
                                                <asp:HiddenField ID="HiddenRID" runat="server" Value='<%# Eval("RN_ID") %>' />
                                                <asp:CheckBox ID="chkSel1" runat="server" Checked='<%# getbool(Eval("look")) %>' />
                                            </ItemTemplate>
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="录入">
                                            <HeaderStyle Width="10%" />
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSel2" runat="server" Checked='<%# getbool(Eval("Modify")) %>' />
                                            </ItemTemplate>
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="审核">
                                            <HeaderStyle Width="10%" />
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSel3" runat="server" Checked='<%# getbool(Eval("State")) %>' />
                                            </ItemTemplate>
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="信息管理">
                                            <HeaderStyle Width="10%" />
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSel4" runat="server" Checked='<%# getbool(Eval("addTo")) %>' />
                                            </ItemTemplate>
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="仅当前节点">
                                            <HeaderStyle Width="15%" />
                                            <ItemTemplate> 
                                                <asp:CheckBox ID="chkSel5" runat="server" Checked='<%# getbool(Eval("Columns")) %>' />
                                            </ItemTemplate>
                                            <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="评论管理">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkSel6" runat="server" Checked='<%# getbool(Eval("Comments")) %>' />
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
                    </tbody>--%>
                    <%--自设内容--%>
                    <tbody id="Tabs5" style="display: none">
                        <tr class="tdbg">
                            <td class="style3" style="width:30%">
                                <strong>自设内容项目数：</strong>
                            </td>
                            <td align="left">
                                <asp:DropDownList ID="SelCount" runat="server" onchange="showCustom(this.value);selectnum();" onmouseup="selectnum()" onmousedown="selectnum()" onmouseout="selectnum()">
                                    <asp:ListItem Value="1"></asp:ListItem>
                                    <asp:ListItem Value="2"></asp:ListItem>
                                    <asp:ListItem Value="3"></asp:ListItem>
                                    <asp:ListItem Value="4"></asp:ListItem>
                                    <asp:ListItem Value="5"></asp:ListItem>
                                    <asp:ListItem Value="6"></asp:ListItem>
                                    <asp:ListItem Value="7"></asp:ListItem>
                                    <asp:ListItem Value="8"></asp:ListItem>
                                    <asp:ListItem Value="9"></asp:ListItem>
                                    <asp:ListItem Value="10"></asp:ListItem>
                                    <asp:ListItem Value="11"></asp:ListItem>
                                    <asp:ListItem Value="12"></asp:ListItem>
                                    <asp:ListItem Value="13"></asp:ListItem>
                                    <asp:ListItem Value="14"></asp:ListItem>
                                    <asp:ListItem Value="15"></asp:ListItem>
                                    <asp:ListItem Value="16"></asp:ListItem>
                                    <asp:ListItem Value="17"></asp:ListItem>
                                    <asp:ListItem Value="18"></asp:ListItem>
                                    <asp:ListItem Value="19"></asp:ListItem>
                                    <asp:ListItem Value="20"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom1" runat="server">
                            <td class="style3">
                                <strong>自设内容1：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="1" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom2" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容2：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="2" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom3" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容3：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="3" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom4" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容4：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="4" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom5" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容5：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="5" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom6" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容6：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="6" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom7" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容7：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="7" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom8" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容8：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="8" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom9" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容9：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="9" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom10" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容10：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="10" /}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom11" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容11：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="11"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom12" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容12：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="12"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom13" style="display: none">
                            <td class="style3">
                                <strong>自设内容13：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="13"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom14" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容14：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="14"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom15" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容15：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="15"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom16" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容16：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="16"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom17" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容17：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="17"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom18" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容18：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="18"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom19" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容19：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="19"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox19" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" id="Custom20" runat="server" style="display: none">
                            <td class="style3">
                                <strong>自设内容20：</strong><br />
                                在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="20"/}
                            </td>
                            <td align="left">
                                <asp:TextBox ID="TextBox20" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="center">
                &nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" Text="保   存" CssClass="button" OnClick="EBtnSubmit_Click" runat="server" />&nbsp; &nbsp;
                <input name="Cancel" type="button" class="button" id="BtnCancel" value="取   消" onclick="window.location.href='NodeManage.aspx?nid=<%=Request.QueryString["nid"] %>'" />
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
