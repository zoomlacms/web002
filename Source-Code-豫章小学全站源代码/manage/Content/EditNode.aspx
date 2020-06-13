<%@ page language="C#" autoeventwireup="true" inherits="ZommLa.WebSite.Manage.Content.EditNode, App_Web_pkfeggyy" validaterequest="false" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>修改栏目节点</title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script type="text/javascript" src="/JS/chinese.js"></script>
<script src="../../JS/jquery.js" type="text/javascript"></script>
<script type="text/JavaScript" language="JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7", "TabTitle8");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7", "Tabs8");
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
        //parent.document.getElementById("main_right").height = document.body.offsetHeight + 50;
    }

    function Getpy(ontxt, id) {
        var str = document.getElementById(ontxt).value.trim();
        if (str == "") {
            document.getElementById(id).value = "";
            return;
        }
        var arrRslt = makePy(str);
        if (arrRslt.length > 0) {
            document.getElementById(id).value = arrRslt.toString().toLowerCase();
            if (document.getElementById(id).value.indexOf(',') > -1) {//判断栏目名称有多音字后栏目标识名“，”并去掉逗号后面的数据.
                var str = document.getElementById(id).value;
                document.getElementById(id).value = str.split(',', 1);
            }
        }
    }
    function EBtnS() {
        var inLen = $("#BGroups").children("input[type='text']").length;
        var Hidd="";
        for (var i = 0; i < inLen; i++) {
            Hidd+=$("#BGroups").children("input[type='hidden']").eq(i).val()+"="+$("#BGroups").children("input[type='text']").eq(i).val()+"|";
        }
        $("#EDHid").val(Hidd);
        return true;
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<div class="r_navigation">
    后台管理&gt;&gt;系统设置&gt;&gt;<a href="NodeManage.aspx">节点管理</a>&gt;&gt;编辑栏目节点</div>
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
        <td id="TabTitle7" class="tabtitle" onclick="ShowTabs(7)">
            浏览权限
        </td>
        <td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6)">
            操作权限
        </td>
        <td id="TabTitle8" class="tabtitle" onclick="ShowTabs(8)">
            方案配置
        </td>
        <td>
            &nbsp;
        </td>
    </tr>
</table>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;">
            <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                <%-- 基本信息--%>
                <tbody id="Tabs0">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>所属栏目：</strong>
                        </td>
                        <td>
            <input id="EDHid" type="hidden"  value="" runat="server" />
                            &nbsp;<asp:Label ID="LblNodeName" runat="server" Text=""></asp:Label>
                            <asp:HiddenField ID="HdnParentId" Value="0" runat="server" />
                            <asp:HiddenField ID="HdnDepth" Value="0" runat="server" />
                            <asp:HiddenField ID="HdnOrderID" Value="0" runat="server" />
                            <asp:HiddenField ID="HdnChild" Value="0" runat="server" />
                            <asp:HiddenField ID="HdnNodeID" Value="0" runat="server" />
                            <asp:HiddenField ID="HdnKeyName" Value="0" runat="server" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目名称：</strong>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="TxtNodeName" class="l_input" AutoPostBack="true" runat="server" Columns="30" onkeyup="Getpy('TxtNodeName','TxtNodeDir')"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNodeName" ErrorMessage="RequiredFieldValidator">栏目名不能为空</asp:RequiredFieldValidator>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目标识名：</strong>
                        </td>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:TextBox ID="TxtNodeDir" class="l_input" MaxLength="20" runat="server" Columns="20"></asp:TextBox>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <span style="color: Blue">注意，目录名只能是字母、数字、下划线组成，首字符不能是数字
                                <asp:RegularExpressionValidator ID="RegTxtNodeDir" runat="server" ControlToValidate="TxtNodeDir" Display="Dynamic" ValidationExpression="[_a-zA-Z][_a-zA-Z0-9]*" ErrorMessage="目录名格式错误" SetFocusOnError="True"></asp:RegularExpressionValidator></span>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目图片地址：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtNodePicUrl" class="l_input" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目提示：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtTips" class="l_input" runat="server" Columns="60" Height="60px" Width="500px" Rows="2" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目说明：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtDescription" class="l_input" runat="server" Columns="60" Height="58px" Width="500px" Rows="2" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目META关键词：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtMetaKeywords" class="l_input" runat="server" Width="500px" Columns="60" Rows="4" TextMode="MultiLine" Height="61px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目META网页描述：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtMetaDescription" class="l_input" runat="server" Width="500px" Columns="60" Rows="4" TextMode="MultiLine" Height="60px"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
                <%--栏目选项--%>
                <tbody id="Tabs1" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
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
                        <td class="tdbgleft">
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
                        <td class="tdbgleft">
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
                        <td class="tdbgleft">
                            <strong>评论权限：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RBLCommentType" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="0">关闭评论</asp:ListItem>
                                <asp:ListItem Value="1">开放评论</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
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
                        <td class="tdbgleft">
                            <strong>本栏目热点的点击数最小值：</strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TxtHitsOfHot" class="l_input" runat="server" Columns="5">0</asp:TextBox>
                            <asp:RangeValidator ID="ValgHitsOfHot" runat="server" ControlToValidate="TxtHitsOfHot" ErrorMessage="请输入整数" MinimumValue="0" MaximumValue="2147483647" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>工作流：</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlState" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>转换形式：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1">
                                <asp:ListItem Value="0" Selected="True">站点转换</asp:ListItem>
                                <asp:ListItem Value="1">页面转换</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>内容防护：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="SafeGuard">
                                <asp:ListItem Value="1">是</asp:ListItem>
                                <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                            </asp:RadioButtonList>
                            备注:如启用则将 <span style="color: #FF0000; background-color: #FFFF00">{ZL:Guard()/}</span>
                            放到相应的容器中即能防止复制与盗链。
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
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
                            <asp:TextBox ID="UrlLook" class="l_input" runat="server"></asp:TextBox>
                            <asp:Label ID="Label1" runat="server" Text="<span style='color:#1e860b;'>&nbsp;&nbsp;数据为空则不启用此功能.子站转换则输入全路径：样例：www.zoomla.cn/default.aspx。如重写为其他页面，输入格式为index.aspx或abc/index.aspx</span>"></asp:Label>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td colspan="2">
                            <div style="color: Red; line-height: 20px; text-indent: 15px;" class="r_navigation">
                                URL重写提示：abc/index.aspx 为网站根目录下abc文件夹下的index.aspx文件
                                <br />
                                如果你想重写为子站，跳转虚拟地址输入格式可为：
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
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>默认消费点券数：</strong><br />
                            注：会员在此栏目下阅读内容时，该内容默认的收费点券数
                        </td>
                        <td>
                            <asp:TextBox ID="TxtConsumePoint" class="l_input" runat="server" Columns="5">0</asp:TextBox>点
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>重复收费方式：</strong><br />
                            注：会员在此栏目下阅读内容时，该内容的重复收费方式
                        </td>
                        <td>
                            <input id="Radio1" name="ConsumeType" runat="server" value="0" type="radio" />不重复收费<br />
                            <input id="Radio2" name="ConsumeType" runat="server" value="1" type="radio" />距离上次收费时间
                            <asp:TextBox ID="TxtConsumeTime" class="l_input" runat="server" Columns="5">0</asp:TextBox>小时后重新收费<br />
                            <input id="Radio3" name="ConsumeType" runat="server" value="2" type="radio" />会员重复阅读此文章
                            <asp:TextBox ID="TxtConsumeCount" class="l_input" runat="server" Columns="5">0</asp:TextBox>次后重新收费<br />
                            <input id="Radio4" name="ConsumeType" runat="server" value="3" type="radio" />上述两者都满足时重新收费<br />
                            <input id="Radio5" name="ConsumeType" runat="server" value="4" type="radio" />上述两者任一个满足时就重新收费<br />
                            <input id="Radio6" name="ConsumeType" runat="server" value="5" type="radio" />每阅读一次就重复收费一次（建议不要使用）<br />
                        </td>
                    </tr>

                      <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>可浏览篇数：</strong><br />
                            注：会员在此栏目下查看内容时,该节点可浏览篇数
                        </td>
                        <td id="BGroups">
                            <asp:Repeater ID="BGroup" runat="server">
                                <ItemTemplate>
                               <span style="width:70px;display:block;float:left">  <%# Eval("GroupName")%> </span>
                                    <input type="hidden" value='<%# Eval("GroupID") %>' />
                                 <asp:TextBox ID="CNode1" class="l_input" runat="server" Text=
                                 '<%# GetViewVl(Eval("GroupID").ToString()) %>' Columns="5">
                                 </asp:TextBox>篇<br />
                                </ItemTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>

                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>分成比例：</strong><br />
                            注：会员在此栏目下添加内容时，该内容默认的分成比例
                        </td>
                        <td>
                            <asp:TextBox ID="TxtShares" class="l_input" runat="server" Columns="5">0</asp:TextBox>%
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>发布内容收费：</strong><br />
                            注：会员在此栏目下发布内容时，每发布一篇内容收费
                        </td>
                        <td>
                            <asp:TextBox ID="TxtAddMoney" class="l_input" runat="server" Columns="8">0</asp:TextBox>
                            元
                            <asp:TextBox ID="TxtAddPoint" class="l_input" runat="server" Columns="8">0</asp:TextBox>
                            点券
                            <asp:TextBox ID="txtAddExp" class="l_input" runat="server" Columns="8">0</asp:TextBox>
                            积分
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>下载内容收费：</strong><br />
                            注：会员在此栏目下载内容时，每下载一次所需费用
                        </td>
                        <td>
                            <asp:TextBox ID="txtDeducExp" class="l_input" runat="server" Columns="8">0</asp:TextBox>
                            积分
                        </td>
                    </tr>
                </tbody>
                <%--模板选项--%>
                <tbody id="Tabs3" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目首页模板：</strong>
                        </td>
                        <td>
                            <%--<asp:TextBox ID="TxtIndexTemplate" class="l_input"  MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                            <asp:DropDownList ID="TxtIndexTemplate" runat="server" CssClass="x_input"></asp:DropDownList>
                            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtIndexTemplate')+'&FilesDir=',650,480)" class="C_input" />
                            <asp:Button ID="Button1" class="C_input" runat="server" OnClick="Button1_Click" Text="编辑" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>栏目列表页模板：</strong>
                        </td>
                        <td>
                            <%--<asp:TextBox ID="TxtTemplate" class="l_input"  MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                            <asp:DropDownList ID="TxtTemplate" runat="server" CssClass="x_input"></asp:DropDownList>
                            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&FilesDir=',650,480)" class="C_input" />
                            <asp:Button ID="Button2" runat="server" class="C_input" Text="编辑" OnClick="Button2_Click" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>最新信息模板：</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="LastinfoTemplate" runat="server" CssClass="x_input"></asp:DropDownList>
                            <%--<asp:TextBox ID="LastinfoTemplate" class="l_input"  MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('LastinfoTemplate')+'&FilesDir=',650,480)" class="C_input" />
                            <asp:Button ID="Button3" class="C_input" runat="server" Text="编辑" OnClick="Button3_Click" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>热门信息模板：</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="HotinfoTemplate" runat="server" CssClass="x_input"></asp:DropDownList>
                            <%--<asp:TextBox ID="HotinfoTemplate" class="l_input"   MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('HotinfoTemplate')+'&FilesDir=',650,480)" class="C_input" />
                            <asp:Button ID="Button4" class="C_input" runat="server" Text="编辑" OnClick="Button4_Click" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>推荐信息模板：</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="ProposeTemplate" runat="server" CssClass="x_input"></asp:DropDownList>
                            <%--<asp:TextBox ID="ProposeTemplate" class="l_input"  MaxLength="255" runat="server" Columns="50"></asp:TextBox>--%>
                            <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ProposeTemplate')+'&FilesDir=',650,480)" class="C_input" />
                            <asp:Button ID="Button5" class="C_input" runat="server" Text="编辑" OnClick="Button5_Click" />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>选择内容模型:</strong>
                        </td>
                        <td>
                            <asp:HiddenField ID="HdnModeID" runat="server" />
                            <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <tr class="tdbg">
                                            <td style="width: 100px" class="tdbgleft">
                                                <%# GetChk(Eval("ModelID","{0}")) %>
                                                <%# Eval("ModelName") %>
                                            </td>
                                            <td>
                                                <input type="text" class="l_input" name="TxtModelTemplate_<%# Eval("ModelID") %>" id="TxtModelTemplate_<%# Eval("ModelID") %>" value="<%# GetTemplate(Eval("ModelID","{0}")) %>" maxlength="255" />
                                                <input type="button" value="选择模板" class="C_input" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtModelTemplate_<%# Eval("ModelID") %>')+'&FilesDir=',650,480)" />
                                                <input type="button" class="C_input" name="Button31" value="编辑" onclick="javascript:location.href='../Template/TemplateEdit.aspx?filepath=<%# GetTemplateurl(Eval("ModelID","{0}")) %>'" id="Button3" />
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
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>列表首页扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RBLListEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>栏目列表页面扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="ListPageEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Selected="True" Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>最新信息页扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="LastinfoPageEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Selected="True" Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>热门信息页扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="HotinfoPageEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Selected="True" Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>推荐信息扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="ProposePageEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Selected="True" Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>内容页扩展名：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RBLContentEx" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="0">.html</asp:ListItem>
                                <asp:ListItem Value="1">.htm</asp:ListItem>
                                <asp:ListItem Value="2">.shtml</asp:ListItem>
                                <asp:ListItem Value="3">.aspx(不生成静态)</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>节点目录生成位置：</strong>
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RBLPosition" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True" Value="1">继承父节点目录</asp:ListItem>
                                <asp:ListItem Value="0">根目录下</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>内容页文件名规则：</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="DDLContentRule" runat="server">
                                <asp:ListItem Selected="True" Value="2">栏目目录/InfoID</asp:ListItem>
                                <asp:ListItem Value="0">栏目目录/年/月/日/infoid</asp:ListItem>
                                <asp:ListItem Value="1">栏目目录/年-月/InfoID</asp:ListItem>
                                <asp:ListItem Value="3">栏目目录/年月日/标题</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </tbody>
                <%--自设内容--%>
                <tbody id="Tabs5" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容项目数：</strong>
                        </td>
                        <td>
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
                    <tr class="tdbg" id="Custom1" runat="server" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td width="35%" class="tdbgleft">
                            <strong>自设内容1：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="1" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom2" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容2：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="2" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom3" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容3：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="3" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom4" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容4：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="4" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom5" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容5：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="5" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom6" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容6：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="6" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom7" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容7：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="7" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom8" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容8：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="8" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom9" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容9：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="9" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom10" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容10：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="10" /}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox10" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom11" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容11：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="11"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox11" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom12" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容12：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="12"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox12" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom13" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容13：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="13"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox13" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom14" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容14：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="14"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox14" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom15" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容15：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="15"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox15" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom16" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容16：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="16"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox16" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom17" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容17：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="17"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox17" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom18" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容18：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="18"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox18" class="l_input" Height="60px" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom19" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容19：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="19"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox19" class="l_input" runat="server" Height="60px" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" id="Custom20" runat="server" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>自设内容20：</strong><br />
                            在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="20"/}
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox20" class="l_input" runat="server" TextMode="MultiLine" Rows="5" Width="99%" Height="60px"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
                <%--后台权限--%>
                <tbody id="Tabs6" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>后台权限：</strong>
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
                                            <asp:HiddenField ID="HiddenRID" runat="server" Value='<%# Eval("RN_ID") %>' />
                                            <asp:CheckBox ID="chkSel1" runat="server" Checked='<%# getbool(Eval("look")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="录入">
                                        <HeaderStyle Width="10%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel2" runat="server" Checked='<%# getbool(Eval("addTo")) %>' />
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
                                            <asp:CheckBox ID="chkSel4" runat="server" Checked='<%# getbool(Eval("Modify")) %>' />
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
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft">
                            <strong>用户权限：</strong>
                        </td>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="GroupID"
                                Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="GroupName" HeaderText="等级名称">
                                        <HeaderStyle Width="30%" />
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="查看">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:HiddenField ID="HiddenGroupID" runat="server" Value='<%#GetGrouplook(Eval("GroupID","{0}")) %>' />
                                            <asp:CheckBox ID="chkSel1" runat="server" Checked='<%#GetGrouplook(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="下载">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:HiddenField ID="HiddenGroupID1" runat="server" Value='<%#GetGroupDown(Eval("GroupID","{0}")) %>' />
                                            <asp:CheckBox ID="chkSel11" runat="server" Checked='<%#GetGroupDown(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="引用">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:HiddenField ID="HiddenGroupID2" runat="server" Value='<%#GetGroupquote(Eval("GroupID","{0}")) %>' />
                                            <asp:CheckBox ID="chkSel12" runat="server" Checked='<%#GetGroupquote(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>

                                    <asp:TemplateField HeaderText="录入">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel2" runat="server" Checked='<%#GetGroupAddto(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="修改">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel3" runat="server" Checked='<%#GetGroupModify(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="删除">
                                        <HeaderStyle Width="7%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel4" runat="server" Checked='<%#GetGroupModify(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="仅当前节点">
                                        <HeaderStyle Width="15%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel5" runat="server" Checked='<%#GetGroupColumns(Eval("GroupID","{0}")) %>' />
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="评论管理">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel6" runat="server" Checked='<%#GetGroupComments(Eval("GroupID","{0}")) %>' />
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
                <!--前台权限--->
                <tbody id="Tabs7" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" style="width: 288px">
                            <strong>浏览/查看权限：</strong><br />
                            栏目权限为继承关系。例如：当父栏目设为“认证栏目”时，子栏目的权限设置将继承父栏目设置，即使子栏目设为“开放栏目”也无效。相反，如果父栏目设为“开放栏目”，子栏目可以设为“半开放栏目”或“认证栏目”。
                        </td>
                        <td>
                            <asp:RadioButton ID="allUser" GroupName="group" runat="server" />开放栏目 任何人（包括游客）可以浏览和查看此栏目下的信息。
                            <br />
                            <asp:RadioButton ID="moreUser" GroupName="group" runat="server" />半开放栏目 任何人（包括游客）都可以浏览。游客不可查看，其他会员根据会员组的栏目权限设置决定是否可以查看。
                            <br />
                            <asp:RadioButton ID="onlyUser" GroupName="group" runat="server" />认证栏目 游客不能浏览和查看，其他会员根据会员组的栏目权限设置决定是否可以浏览和查看。
                            <br />
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" style="width: 288px">
                            <strong>允许浏览此栏目的会员组：</strong><br />
                            如果栏目是“半开放栏目”或“认证栏目”，请在此设置允许浏览此栏目的会员组
                        </td>
                        <td>
                            <asp:CheckBoxList ID="ViewGroup" runat="server" RepeatDirection="Horizontal" RepeatColumns="5"
                                Width="100%">
                                <asp:ListItem Value="-2">待验证会员</asp:ListItem>
                                <asp:ListItem Value="-1">已验证会员</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" repeatcolumns="5">
                        <td class="tdbgleft" style="width: 288px">
                            <strong>允许查看此栏目下信息的会员组：</strong><br />
                            如果栏目是“认证栏目”，请在此设置允许查看此栏目下信息的会员组 如果在信息中设置了查看权限，则以信息中的权限设置优先
                        </td>
                        <td>
                            <asp:CheckBoxList ID="ViewGroup2" runat="server" RepeatDirection="Horizontal" RepeatColumns="5" Width="100%">
                                <asp:ListItem Value="-2">待验证会员</asp:ListItem>
                                <asp:ListItem Value="-1">已验证会员</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" style="width: 288px">
                            <strong>发表权限：</strong><br />
                            请在此设置允许在此栏目发表信息的会员组。 游客没有发表信息权限。
                        </td>
                        <td>
                            <asp:CheckBoxList ID="input" runat="server" RepeatDirection="Horizontal" RepeatColumns="5"
                                Width="100%">
                                <asp:ListItem Value="-2">待验证会员</asp:ListItem>
                                <asp:ListItem Value="-1">已验证会员</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td class="tdbgleft" style="width: 288px">
                            <strong>评论权限：</strong>
                        </td>
                        <td>
                            <asp:CheckBoxList ID="forum" runat="server">
                                <asp:ListItem Value="1">允许在此栏目发表评论</asp:ListItem>
                                <asp:ListItem Value="2">评论需要审核</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                </tbody>
                <%--方案配置--%>
                <tbody id="Tabs8" style="display: none">
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td style="width: 288px" class="tdbgleft">
                            <strong>方案配置：</strong>
                        </td>
                        <td>
                            <asp:GridView ID="FAN" runat="server" AutoGenerateColumns="False" DataKeyNames="F_ID"
                                Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="FName" HeaderText="方案名">
                                        <HeaderStyle Width="40%" />
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="绑定子站名">
                                        <HeaderStyle Width="30%" />
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# getSname(Eval("SID")) %>'></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle CssClass="tdbg" HorizontalAlign="Center" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="确定此方案">
                                        <HeaderStyle Width="30%" />
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chkSel1" runat="server" Checked='<%# getFbool(Eval("ArticleS")) %>' />
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
            </table>
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td align="center">
            &nbsp; &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input" OnClientClick="return EBtnS()" Text="保存" OnClick="EBtnSubmit_Click" Width="65px" runat="server" />&nbsp; &nbsp;
            <input name="Cancel" type="button" class="C_input" id="BtnCancel" value="取消" onclick="window.location.href='NodeManage.aspx'" />
        </td>
    </tr>
</table>
</form>
</body>
</html>