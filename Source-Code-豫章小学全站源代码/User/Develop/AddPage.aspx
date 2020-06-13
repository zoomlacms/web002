<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_AddPage, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>添加栏目节点</title>
<link type="text/css" rel="stylesheet" href="Css/popbox.css" />
<script type="text/javascript" src="/JS/jquery-1.4.js"></script>
<script type="text/javascript" src="Scripts/floatbox.js"></script>
<style type="text/css">
body{background-color: #fff;font-size: 12px;}
.floattab1,.floattab2,.floattab3,.floattab4,.floattab5{display:none;}
</style>
</head>
<body>
<form id="Form1" runat="server">
<div class="floatbox">
    <div class="ftitle">
        <span>添加新页面：</span><span class="ftclose" title="关闭"></span>
    </div>
    <div class="fmain">
        <ul class="titul">
            <li class="titliover">基本信息</li>
<%--            <li class="titli">栏目选项</li>
            <li class="titli">收费设置</li>
            <li class="titli">模板选项</li>
            <li class="titli">生成选项</li>
            <li class="titli">自设内容</li>
--%>        </ul>
        <div class="clear">
        </div>
        <div class="floattab0">
            <%-- 基本信息--%>
            <script type="text/javascript">
        function GetPYDir()
            {
                var NodeName = document.getElementById("<%= TxtNodeName.ClientID %>");
                if(NodeName.value!="")
                {
                    CallTheServer(NodeName.value,"");
                }
            }
        function CallTheServer(arg,context)
        {
            <%= CallBackReference %>
        }
        function ReceiveServerData(result)
        {
            var NodeDir = document.getElementById("<%= TxtNodeDir.ClientID %>");
            NodeDir.value=result;
        }
            </script>
            <table id="Tabs0">
                <tr class="tdbg">
                    <td style="width: 160px;">
                        <strong>所属栏目：</strong>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddlSite" runat="server" DataValueField="NodeID" DataTextField="NodeName"></asp:DropDownList>
                        <asp:Label ID="LblNodeName" runat="server" Text="" style="display:none;"></asp:Label>
                        <asp:HiddenField ID="HdnParentId" Value="0" runat="server" />
                        <asp:HiddenField ID="HdnDepth" Value="0" runat="server" />
                        <asp:HiddenField ID="HdnOrderID" Value="0" runat="server" />
                        <asp:HiddenField ID="NODEID" Value="0" runat="server" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px">
                        <strong>栏目名称：</strong>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TxtNodeName" runat="server" Columns="30" onkeyup="CheckNodeName()" AutoPostBack="false"></asp:TextBox><%--OnTextChanged="TxtNodeName_TextChanged"--%><span id="NameCheck" style="color:red"></span>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNodeName" ErrorMessage="RequiredFieldValidator">栏目名不能为空</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="tdbg" style="display:none">
                    <td style="width: 160px"><strong>栏目标识名：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="TxtNodeDir" MaxLength="20" runat="server" Columns="20" AutoPostBack="false" onblur="CheckNodeDir()"></asp:TextBox><%--OnTextChanged="TxtNodeDir_TextChanged1" --%>
                        <span style="color: Blue">注意，目录名只能是字母、数字、下划线组成，首字符不能是数字<br /><span id="DirCheck" style="color:red"></span>
                            <%--<asp:RegularExpressionValidator ID="RegTxtNodeDir" runat="server" ControlToValidate="TxtNodeDir" Display="Dynamic" ValidationExpression="[_a-zA-Z][_a-zA-Z0-9]*" ErrorMessage="目录名格式错误" SetFocusOnError="True"></asp:RegularExpressionValidator>--%>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtNodeDir" ErrorMessage="标识码不能为空"></asp:RequiredFieldValidator>--%>
                        </span>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>添加模型:</strong></td>
                    <td align="left">
                        <asp:HiddenField ID="HdnModeID" runat="server" />
                        <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <tr class="tdbg ModelList " style="width:100px; float:left;">
                                        <td style="width: 100px"><%# GetChk(Eval("ModelID","{0}")) %><%# Eval("ItemName") %></td>
                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="floattab1">
            <%--栏目选项--%>
            <table id="Tabs1">
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目图片地址：</strong></td>
                    <td align="left"><asp:TextBox ID="TxtNodePicUrl" MaxLength="255" runat="server" Columns="50"></asp:TextBox></td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目提示：</strong></td>
                    <td align="left"><asp:TextBox ID="TxtTips" runat="server" Columns="60" Height="30" Width="500" Rows="2" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目说明：</strong></td>
                    <td align="left"><asp:TextBox ID="TxtDescription" runat="server" Columns="60" Height="30" Width="500" Rows="2" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目META关键词：</strong></td>
                    <td align="left"><asp:TextBox ID="TxtMetaKeywords" runat="server" Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目META网页描述：</strong></td>
                    <td align="left"><asp:TextBox ID="TxtMetaDescription" runat="server" Height="65" Width="500" Columns="60" Rows="4" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>打开方式：</strong></td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLOpenType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
                            <asp:ListItem Value="1">新窗口打开</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>内容打开方式：</strong></td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLItemOpenType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="0">原窗口打开</asp:ListItem>
                            <asp:ListItem Value="1">新窗口打开</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px;"><strong>栏目权限：</strong></td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLPurviewType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="0">开放</asp:ListItem>
                            <asp:ListItem Value="1">认证</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td><strong>评论权限：</strong></td>
                    <td>
                        <asp:RadioButtonList ID="RBLCommentType" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="0">允许评论</asp:ListItem>
                            <asp:ListItem Value="1">不允许评论</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>本栏目热点的点击数最小值：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="TxtHitsOfHot" runat="server" Columns="5">0</asp:TextBox>
                        <asp:RangeValidator ID="ValgHitsOfHot" runat="server" ControlToValidate="TxtHitsOfHot" ErrorMessage="请输入整数" MinimumValue="0" MaximumValue="2147483647" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td><strong>工作流：</strong></td>
                    <td align="left">
                        <asp:DropDownList ID="ddlState" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>子站数据交换：</strong></td>
                    <td align="left">是否开启：<input id="Checkbox1" type="checkbox" onclick="gogo();" /></td>
                </tr>
                <span id="dda" style="display: none">
                    <tr class="tdbg">
                        <td style="width: 160px"><strong>是否只读：</strong></td>
                        <td align="left">
                            <asp:RadioButtonList ID="ReadOnly" runat="server" RepeatColumns="2">
                                <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                                <asp:ListItem Value="1">是</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td style="width: 160px"><strong>文章是否只读：</strong></td>
                        <td align="left">
                            <asp:RadioButtonList ID="ArticleSite" runat="server" RepeatColumns="2">
                                <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                                <asp:ListItem Value="1">是</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </span>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>转换形式：</strong></td>
                    <td align="left">
                        <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="RadioButtonList1">
                            <asp:ListItem Value="0" Selected="True">站点转换</asp:ListItem>
                            <asp:ListItem Value="1">页面转换</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td><strong>内容防护：</strong></td>
                    <td>
                        <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" ID="SafeGuard">
                            <asp:ListItem Value="1">是</asp:ListItem>
                            <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
                        </asp:RadioButtonList>
                        备注:如启用则将 <span style="color: #FF0000; background-color: #FFFF00">{ZL:Guard()/}</span>
                        放到相应的容器中即能防止复制与盗链。
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>绑定互动管理：</strong><br /></td>
                    <td align="left">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        &nbsp;<span style='color: #1e860b;'>只能绑定节点类别的互动模块</span>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>子站定位：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="UrlLook" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="<span style='color:#1e860b;'>&nbsp;&nbsp;数据为空则不启用此功能。子站转换则输入全路径：样例：www.zoomla.cn/default.aspx.如重写为其他页面，输入格式为index.aspx或abc/index.aspx</span>"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <div class="floattab2">
            <%--收费设置--%>
            <table id="Tabs2">
                <tr class="tdbg">
                    <td style="width: 160px"><strong>默认消费点券数：</strong><br />注：会员在此栏目下阅读内容时，该内容默认的收费点券数</td>
                    <td align="left"><asp:TextBox ID="TxtConsumePoint" runat="server" Columns="5">0</asp:TextBox>点</td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>重复收费方式：</strong><br />注：会员在此栏目下阅读内容时，该内容的重复收费方式</td>
                    <td align="left">
                        <input id="Radio1" name="ConsumeType" runat="server" value="0" type="radio" checked="true" />不重复收费<br />
                        <input id="Radio2" name="ConsumeType" runat="server" value="1" type="radio" />距离上次收费时间<asp:TextBox ID="TxtConsumeTime" runat="server" Columns="5">0</asp:TextBox>小时后重新收费<br />
                        <input id="Radio3" name="ConsumeType" runat="server" value="2" type="radio" />会员重复阅读此文章<asp:TextBox ID="TxtConsumeCount" runat="server" Columns="5">0</asp:TextBox>次后重新收费<br />
                        <input id="Radio4" name="ConsumeType" runat="server" value="3" type="radio" />上述两者都满足时重新收费<br />
                        <input id="Radio5" name="ConsumeType" runat="server" value="4" type="radio" />上述两者任一个满足时就重新收费<br />
                        <input id="Radio6" name="ConsumeType" runat="server" value="5" type="radio" />每阅读一次就重复收费一次（建议不要使用）<br />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>分成比例：</strong><br />注：会员在此栏目下添加内容时，该内容默认的分成比例</td>
                    <td align="left"><asp:TextBox ID="TxtShares" runat="server" Columns="5">0</asp:TextBox>%</td>
                </tr>
            </table>
        </div>
        <div class="floattab3">
            <%--模板选项--%>
            <table id="Tabs3">
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目首页模板：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="TxtIndexTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtIndexTemplate')+'&nid=<%=Request.QueryString["ParentID"] %>&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>栏目列表页模板：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="TxtTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('TxtTemplate')+'&nid=<%=Request.QueryString["ParentID"] %>&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>最新信息模板：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="LastinfoTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('LastinfoTemplate')+'&nid=<%=Request.QueryString["ParentID"] %>&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>热门信息模板：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="HotinfoTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('HotinfoTemplate')+'&nid=<%=Request.QueryString["ParentID"] %>&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>推荐信息模板：</strong></td>
                    <td align="left">
                        <asp:TextBox ID="ProposeTemplate" MaxLength="255" runat="server" Columns="50"></asp:TextBox>
                        <input type="button" value="选择模板" onclick="WinOpenDialog('../Template/TemplateList.aspx?OpenerText='+escape('ProposeTemplate')+'&nid=<%=Request.QueryString["ParentID"] %>&FilesDir=',650,480)" class="button" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="floattab4">
            <%--生成选项--%>
            <table id="Tabs4">
                <tr class="tdbg">
                    <td style="width: 160px"><strong>列表首页扩展名：</strong></td>
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
                    <td style="width: 160px"><strong>内容页扩展名：</strong></td>
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
                    <td style="width: 160px"><strong>节点目录生成位置：</strong></td>
                    <td align="left">
                        <asp:RadioButtonList ID="RBLPosition" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="0">根目录下</asp:ListItem>
                            <asp:ListItem Value="1" Selected="True">继承父节点目录</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td style="width: 160px"><strong>内容页文件名规则：</strong></td>
                    <td align="left">
                        <asp:DropDownList ID="DDLContentRule" runat="server">
                            <asp:ListItem Value="0">栏目目录/年/月/日/infoid</asp:ListItem>
                            <asp:ListItem Value="1">栏目目录/年-月/InfoID</asp:ListItem>
                            <asp:ListItem Selected="True" Value="2">栏目目录/InfoID</asp:ListItem>
                            <asp:ListItem Value="3">栏目目录/年月日/标题</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
        <div class="floattab5">
            <%--自设内容--%>
            <table id="Tabs5">
                <tr class="tdbg">
                    <td style="width: 160px"><strong>自设内容项目数：</strong></td>
                    <td align="left">
                        <asp:DropDownList ID="SelCount" runat="server" onchange="showCustom(this.value);selectnum();" onmouseup="selectnum()" onmousedown="selectnum()" onmouseout="selectnum()">
                            <asp:ListItem Selected="True" Value="1"></asp:ListItem>
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
                <tr class="tdbg" id="Custom1">
                    <td style="width: 160px"><strong>自设内容1：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="1"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom2" style="display: none">
                    <td style="width: 160px"><strong>自设内容2：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="2"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom3" style="display: none">
                    <td style="width: 160px"><strong>自设内容3：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="3"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom4" style="display: none">
                    <td style="width: 160px"><strong>自设内容4：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="4"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom5" style="display: none">
                    <td style="width: 160px"><strong>自设内容5：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="5"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom6" style="display: none">
                    <td style="width: 160px"><strong>自设内容6：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="6"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom7" style="display: none">
                    <td style="width: 160px"><strong>自设内容7：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="7"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom8" style="display: none">
                    <td style="width: 160px"><strong>自设内容8：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="8"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom9" style="display: none">
                    <td style="width: 160px"><strong>自设内容9：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="9"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox9" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom10" style="display: none">
                    <td style="width: 160px"><strong>自设内容10：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="10"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox10" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom11" style="display: none">
                    <td style="width: 160px"><strong>自设内容11：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="11"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox11" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom12" style="display: none">
                    <td style="width: 160px"><strong>自设内容12：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="12"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom13" style="display: none">
                    <td style="width: 160px"><strong>自设内容13：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="13"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox13" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom14" style="display: none">
                    <td style="width: 160px"><strong>自设内容14：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="14"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox14" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom15" style="display: none">
                    <td style="width: 160px"><strong>自设内容15：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="15"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox15" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom16" style="display: none">
                    <td style="width: 160px"><strong>自设内容16：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="16"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom17" style="display: none">
                    <td style="width: 160px"><strong>自设内容17：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="17"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox17" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom18" style="display: none">
                    <td style="width: 160px"><strong>自设内容18：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="18"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox18" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom19" style="display: none">
                    <td style="width: 160px"><strong>自设内容19：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="19"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox19" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
                <tr class="tdbg" id="Custom20" style="display: none">
                    <td style="width: 160px"><strong>自设内容20：</strong><br />在列表模板页面插入{PH.Label id="自设节点内容" nodeid="@Request_id" num="20"/}</td>
                    <td align="left"><asp:TextBox ID="TextBox20" runat="server" TextMode="MultiLine" Rows="5" Width="99%"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="ffoot">
        <asp:Button ID="EBtnSubmit" Text="  保  存  " OnClientClick="return CheckField();" OnClick="EBtnSubmit_Click" runat="server" CssClass="fspan1" />&nbsp; &nbsp;
        <input id="btncancel" name="Cancel" type="button" class="fspan2" value="  取  消  "/>
    </div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
var req; var STemp;
var AJAXflag = false;
function createre() {
    //创建XMLHttpRequest实例
    if (window.XMLHttpRequest) {   //Mozilla 浏览器    
        req = new XMLHttpRequest();
        if (req.overrideMimeType) {//设置MiME类别    
            req.overrideMimeType("text/xml");
        }
    } else if (window.ActiveXObject) { // IE浏览器    
        try {
            req = new ActiveXObject("Msxml2.XMLHTTP");
        }
        catch (e) {
            try {
                req = new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch (e) {
            }
        }
    }
    if (!req) { // 异常,创建对象实例失败    
        //"不能创建XMLHttpRequest对象实例"    
        window.alert("不能创建XMLHttpRequest对象实例..");
        return false;
    }
}
function callback() //回调函数，对服务端的响应处理，监视response状态
{
    //alert(req.responseText);
    if (req.readyState == 4) {
        if (req.status == 200) //http状态200表示OK
        {
            AjAXflag = true;
            var strTemp = req.responseText.split('&');
            if (strTemp[0] == "AddNodePage") {
                $("#boxCover").remove();
            }
            if (strTemp[0] == "CheckNodeName") {
                document.getElementById("NameCheck").innerHTML = strTemp[1];
            }
            if (strTemp[0] == "CheckNodeDir") {
                document.getElementById("DirCheck").innerHTML = strTemp[1];
            }
        }
        else //http返回状态失败
        {
            alert("操作失败！");
        }
    }
    else //请求状态还没有成功，页面等待
    {
    }
}
function tjAjax(url) {
    if (!req) {
        createre();
    }
    req.onreadystatechange = callback; //指定回调函数
    req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
    req.send(null); //
}
</script>
<script type="text/javascript">
function AddNodePage() {
    if (document.getElementById("Title").value.replace(/(^s*)|(s*$)/g, "") == "") {
        alert("栏目名称不能为空");
    } else {
        var strUrl = "AddNode.aspx?status=AddNodePage&_dc=" + new Date().getTime();
        strUrl += "&TemplateName=" + document.getElementById("Title").value;
        strUrl += "&OrderID=" + document.getElementById("NodeOrder").value;
        var pObj = document.getElementsByName("dis");
        for (var i = 0; i < pObj.length; i++) {
            if (pObj[i].checked)
                strUrl += "&IsTrue=" + pObj[i].value;
        }
        strUrl += "&PageMetakeyinfo=" + document.getElementById("PageMetakeyinfo").value;
        strUrl += "&PageMetakeyword=" + document.getElementById("keyword").value;
        strUrl += "&Nodeimgtext=" + document.getElementById("Nodeimgtext").value;
        pObj = document.getElementById("NodeType");
        for (var i = 0; i < pObj.length; i++) {
            if (pObj[i].selected) {
                strUrl += "&NodeType=" + pObj[i].value;
            }
        }
        //alert(strUrl)
        tjAjax(strUrl);
        location.reload();
    }
}
</script>
<script>
    function CheckNodeName() {
        var NodeName = escape(document.getElementById("TxtNodeName").value);
        GNodeID = $("#ddlSite").find('option:selected').val();
        //alert("AddPage.aspx?_dc=" + new Date().getTime() + "&status=CheckNodeName&NodeName=" + NodeName + "&NodeID=" + GNodeID);
        tjAjax("AddPage.aspx?_dc=" + new Date().getTime() + "&status=CheckNodeName&NodeName=" + NodeName + "&NodeID=" + GNodeID);
    }
    function CheckNodeDir() {
        tjAjax("AddPage.aspx?_dc=" + new Date().getTime() + "&status=CheckNodeDir&NodeDir=" + document.getElementById("TxtNodeDir").value);
    }
</script>
<script>
    function CheckField() {
        var isModelSel = $(".ModelList :radio:checked").length;
        if (document.getElementById("NameCheck").innerHTML == "" && isModelSel != 0) {
            return true;
        }
        alert("请填写完整信息")
        return false;
    }
</script>
<script type="text/javascript">
    var GNodeID = 0;
    $("#ddlSite").change(function () {
        // GNodeID = $(this).val();
        CheckNodeName();
    });
</script>