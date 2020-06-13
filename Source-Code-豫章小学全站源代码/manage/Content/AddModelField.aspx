<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.Manage.Content.AddModelField, App_Web_pkfeggyy" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加模型字段</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/JS/Common.js"></script>
<script type="text/javascript" src="/JS/ModelField.js"></script>
<script type="text/javascript" src="/JS/chinese.js"></script>
<script type="text/javascript">
    
    function checkDef(df) {
        if (df == null) {
            document.getElementById("TextType_DefaultValue").value = "{nowuser}";
        } else {
            document.getElementById("TextType_DefaultValue").value = df;
        }
    }

    function show(chvalue) {
        if (chvalue == '1') {
            document.getElementById('showdec').style.display = 'none';
        }
        else {
            document.getElementById('showdec').style.display = '';
        }
    }

    function Getpy(ontxt, id) {
        if (!document.getElementById(id).disabled) {

            var str = document.getElementById(ontxt).value.trim();
            if (str == "") {
                document.getElementById(id).value = "";
                return;
            }
            var arrRslt = makePy(str);
            if (arrRslt.length > 0) {
                document.getElementById(id).value = arrRslt.toString().toLowerCase();
                if (document.getElementById(id).value.indexOf(',') > -1) {//判断栏目名称有多音字后栏目标识名“，”并去掉逗号后面的数据
                    var str = document.getElementById(id).value;
                    document.getElementById(id).value = str.split(',', 1);
                }
            }
        }
    }
</script>
    <style type="text/css">
       .m{display:none;}
    </style>
    <style id="sty" runat="server" type="text/css"></style>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;&nbsp;系统设置&nbsp;&gt;&gt;&nbsp;<a href="ModelManage.aspx?ModelType=<%=Request.QueryString["ModelType"] %>"><%=bll.GetModelType(Convert.ToInt32(Request.QueryString["ModelType"]))%></a>&nbsp;&gt;&gt;&nbsp;<a href="ModelField.aspx?ModelId=<%=Request.QueryString["ModelID"] %>&ModelType=<%=Request.QueryString["ModelType"] %>">字段列表</a>&nbsp;&gt;&gt;&nbsp;<asp:Label ID="lblModel" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;当前表:<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>
    <table class="border" cellspacing="1" cellpadding="0" width="99%" border="0">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" style="width: 200px;">
                <strong>字段别名：</strong>
            </td>
            <td>
                <asp:TextBox ID="Alias" runat="server" CssClass="l_input" MaxLength="20" onkeyup="Getpy('Alias','Name')" ></asp:TextBox>
                <span style="color:#ff0066;">*</span>
                <span class="tips" style="color: #808000"> 如：文章标题</span>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>字段名称：</strong>
            </td>
            <td>
                <asp:TextBox ID="Name" MaxLength="50" CssClass="l_input" runat="server"></asp:TextBox>
                <span style="color:#ff0066;">*</span>
                <span class="tips" style="color: #808000">字段名由字母、数字、下划线组成，不接受空格</span>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>字段提示：</strong>
            </td>
            <td>
                <asp:TextBox ID="Tips" CssClass="l_input" MaxLength="50" runat="server"></asp:TextBox>
                <span class="tips" style="color: #808000">显示在字段别名下方作为重要提示的文字</span>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>字段描述：</strong>
            </td>
            <td>
                <asp:TextBox ID="Description" CssClass="l_input" runat="server" Columns="40" Rows="6" TextMode="MultiLine" Height="78px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>是否必填：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="IsNotNull" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="True">是</asp:ListItem>
                    <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>是否复制：</strong>
            </td>
            <td>
                <div>
                    <div style="float: left">
                        <asp:RadioButtonList ID="rblCopy" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="True" Selected="True">是</asp:ListItem>
                            <asp:ListItem Value="False">否</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div><span style="color:#808000;">当复制模型时，该字段是否允许复制</span></div>
                </div>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>设为下载专用字段：</strong><br />
                启用此选项将关联下载服务器↓↓
            </td>
            <td>
                <asp:RadioButtonList ID="SetDownFiled" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">是</asp:ListItem>
                    <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr class="tdbg" id="downserver" runat="server" visible="false" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>关联下载服务器：</strong><br />
                [<a href="../file/DownServerManage.aspx" target="_blank">管理下载服务器</a>]
            </td>
            <td>
                <asp:DropDownList ID="serverlist" runat="server"></asp:DropDownList>
                &nbsp;
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>是否在前台显示：</strong>
            </td>
            <td>
                <div>
                    <div style="float: left">
                        <asp:RadioButtonList ID="IsShow" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="true" Value="True">是</asp:ListItem>
                            <asp:ListItem Value="False">否</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div>&nbsp;<span style="color: #808000">选择“否”可作为相关隐藏识别符而不能输出在前台(仅能后台录入)</span></div>
                </div>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>是否批量添加：</strong>
            </td>
            <td>
                <div>
                    <div style="float: left">
                        <asp:RadioButtonList ID="Islotsize" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="True">是</asp:ListItem>
                            <asp:ListItem Selected="true" Value="False">否</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                    <div style="float: left">
                        <span style="color:#808000;">字段类型只允许文本类型</span></div>
                </div>
            </td>
        </tr>
        <tbody runat="server" id="tbSearch" style="" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>是否在搜索表单显示：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="IsSearchForm" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="True">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="False">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft">
                <strong>字段类型：</strong>
            </td>
            <td>
                <asp:RadioButtonList ID="Type" runat="server" RepeatColumns="5" RepeatDirection="Horizontal" onclick="SelectModelType()">
                  <%--  <asp:ListItem runat="server" Value="TextType" Selected="True" >单行文本</asp:ListItem>
                    <asp:ListItem runat="server" Value="MultipleTextType" >多行文本(不支持Html)</asp:ListItem>
                    <asp:ListItem runat="server" Value="MultipleHtmlType" >多行文本(支持Html)</asp:ListItem>
                    <asp:ListItem runat="server" Value="OptionType">单选项</asp:ListItem>
                    <asp:ListItem runat="server" Value="ListBoxType" >多选项</asp:ListItem>
                    <asp:ListItem runat="server" Value="DateType">日期时间</asp:ListItem>
                    <asp:ListItem runat="server" Value="PicType">图片</asp:ListItem>
                    <asp:ListItem runat="server" Value="MultiPicType" >多图片</asp:ListItem>
                    <asp:ListItem runat="server" Value="SmallFileType" >文件</asp:ListItem>
                    <asp:ListItem runat="server" Value="FileType" >多文件</asp:ListItem>
                    <asp:ListItem runat="server" Value="NumType" >数字</asp:ListItem>
                    <asp:ListItem runat="server" Value="OperatingType" >运行平台</asp:ListItem>
                    <asp:ListItem runat="server" Value="SuperLinkType" >超链接</asp:ListItem>
                    <asp:ListItem runat="server" Value="GradeOptionType" >多级选项</asp:ListItem>
                    <asp:ListItem runat="server" Value="ColorType" >颜色代码</asp:ListItem>
                    <asp:ListItem runat="server" Value="MoneyType2" >货币类型</asp:ListItem>
                    <asp:ListItem runat="server" Value="DoubleDateType" >递增双时间</asp:ListItem>
                    <asp:ListItem runat="server" Value="Upload" >在线浏览</asp:ListItem>
                    <asp:ListItem runat="server" Value="MobileSMS"  >手机短信</asp:ListItem>
                    <asp:ListItem runat="server" Value="GoogleMapType" >Google地图</asp:ListItem>
                    <asp:ListItem runat="server" Value="RemoteFile" >远程文件</asp:ListItem>
                    <asp:ListItem runat="server" Value="SwfFileUpload" style="display:none" >智能多文件上传</asp:ListItem>--%>
                </asp:RadioButtonList>
            </td>
        </tr>
        <!--  单行文本   -->
        <tbody id="DivTextType" runat="server">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>文本框长度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TitleSize" CssClass="l_input" runat="server" Columns="10" MaxLength="4">35</asp:TextBox>
                    px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>是否为密码：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="IsPassword" runat="server" RepeatDirection="Horizontal" CssClass="input1">
                        <asp:ListItem Value="password">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="text">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextType_DefaultValue" CssClass="l_input" runat="server" Columns="10"></asp:TextBox>
                    【<a href="javascript:void(0);" onclick="checkDef();">当前用户名</a>】
                    【<a href="javascript:void(0);" onclick="checkDef('匿名');">匿名</a>】
                    【<a href="javascript:void(0);" onclick="checkDef('本站作者');">本站作者</a>】
                </td>
            </tr>
        </tbody>
        <!--  多行文本(不支持Html)    -->
        <tbody runat="server" id="DivMultipleTextType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的宽度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MultipleTextType_Width" CssClass="l_input" runat="server" Columns="10" MaxLength="4">500</asp:TextBox>px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的高度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MultipleTextType_Height" CssClass="l_input" runat="server" Columns="10" MaxLength="4">200</asp:TextBox>px
                </td>
            </tr>
        </tbody>
        <!--  多行文本(支持Html)    -->
        <tbody runat="server" id="DivMultipleHtmlType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>编辑器类型：</strong>
                </td>
                <td>
                    <asp:DropDownList ID="IsEditor" runat="server">
                        <asp:ListItem Value="1">简洁型编辑器</asp:ListItem>
                        <asp:ListItem Value="2">标准型编辑器</asp:ListItem>
                        <asp:ListItem Value="3">增强型编辑器</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的宽度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MultipleHtmlType_Width" runat="server" CssClass="l_input" Columns="10" MaxLength="4">715</asp:TextBox>px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的高度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MultipleHtmlType_Height" runat="server" CssClass="l_input" Columns="10" MaxLength="4">400</asp:TextBox>px
                </td>
            </tr>
        </tbody>
        <!--  单选项    -->
        <tbody id="DivOptionType" style="display: none" runat="server">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>分行键入每个选项：</strong>
                </td>
                <td onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <input id="Button3" type="button" value="从数据字典中选择选项" class="C_input" style="width: 150px;" onclick="SelectDictionary('RadioType_Content')" />
                    <input id="Button5" type="button" value="添加数据字段" class="C_input" style="width: 150px;" onclick='SubPage("RadioType_Content")' /><br />
                    <asp:TextBox ID="RadioType_Content" runat="server" TextMode="MultiLine" Columns="40" Rows="6" Width="306px" CssClass="l_input" Height="80px"></asp:TextBox>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="RadioType_Default" CssClass="l_input" runat="server"></asp:TextBox>
                    <span style="color: #808000">注：没有数据录入的默认值，与前台显示无关.</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示选项：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioType_Type" runat="server">
                        <asp:ListItem Selected="True" Value="1">单选下拉列表框</asp:ListItem>
                        <asp:ListItem Value="2">单选按钮</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>是否设置属性值：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioType_Property" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="True" Selected="True">是</asp:ListItem>
                        <asp:ListItem Value="False">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <!--  多选项    -->
        <tbody runat="server" id="DivListBoxType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>分行键入每个选项：</strong>
                </td>
                <td onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <input id="Button4" type="button" value="从数据字典中选择选项" class="C_input" style="width: 150px;" onclick="SelectDictionary('ListBoxType_Content')" />&nbsp
                    <input id="Button6" type="button" value="添加数据字段" class="C_input" style="width: 150px;" onclick='SubPage("ListBoxType_Content")' /><br />
                    <asp:TextBox ID="ListBoxType_Content" runat="server" TextMode="MultiLine" Columns="40" Rows="6" Height="80px" Width="310px" CssClass="l_input"></asp:TextBox>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示选项：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="ListBoxType_Type" runat="server">
                        <asp:ListItem Selected="True" Value="1">复选框</asp:ListItem>
                        <asp:ListItem Value="2">多选列表框</asp:ListItem>
                        <asp:ListItem Value="3">多填选项框</asp:ListItem>
                    </asp:RadioButtonList>
                </td>               
            </tr> 
        </tbody>
        <!--  日期型    -->
        <tbody runat="server" id="DivDateType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>搜索范围：</strong>
                </td>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0" style="text-align:center">
                        <tr class="tdbg">
                            <td>
                                <asp:RadioButtonList ID="DateSearchType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1" Selected="True">开始-结束日期</asp:ListItem>
                                    <asp:ListItem Value="0">自定范围</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td>
                                <asp:TextBox ID="DateSearchRang" CssClass="l_input" runat="server" TextMode="MultiLine" Columns="40" Rows="6" Height="78px" Width="248px"></asp:TextBox><br />
                                <asp:RadioButtonList ID="DateSearchUnit" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0" Selected="True">小时</asp:ListItem>
                                    <asp:ListItem Value="1">天</asp:ListItem>
                                    <asp:ListItem Value="2">月</asp:ListItem>
                                    <asp:ListItem Value="3">年</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <span style="color:red">选择了自定范围时请输入此项内容,格式：范围名|范围<br />
                                    分行输入范围，单位选择 天 如：<br />
                                    3天内|0-3<br />
                                    7天内|0-7<br />
                                    7天-15天|7-15<br />
                                    1个月内|0-30</span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
        <!--  图片类型    -->
        <tbody runat="server" id="DivPicType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>图片是否加水印：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RBLPicWaterMark" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的图片大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtSPicSize" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的图片类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtPicExt" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span> <span style="color: Blue">注：允许多个类型请用“|”号分割，如：jpg|gif|bmp等等</span>
                </td>
            </tr>
        </tbody>
        <!--  多图片    -->
        <tbody runat="server" id="DivMultiPicType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>缩略图选项：</strong>
                </td>
                <td>
                    <asp:CheckBox ID="ChkThumb" runat="server" Text="是否保存缩略图地址" />&nbsp;&nbsp;保存缩略图地址字段：
                    <asp:TextBox ID="TxtThumb" CssClass="l_input" runat="server" Columns="20"></asp:TextBox>
                    <span style="color: Red; display: none;">保存缩略图地址字段名不能与主字段名重复！</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>图片是否加水印：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="RBLWaterMark" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">是</asp:ListItem>
                        <asp:ListItem Selected="True" Value="0">否</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的图片大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtPicSize" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的图片类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextImageType" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span> <span style="color: Blue">注：允许多个类型请用“|”号分割，如：jpg|gif|bmp等等</span>
                </td>
            </tr>
        </tbody>
        <!--  文件类型    -->
        <tbody runat="server" id="DivSmallFileType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtMaxFileSizes" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUploadFileTypes" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span> <span style="color: Blue">注：允许多个类型请用“|”号分割，如：rar|jpg|gif|bmp等等</span>
                </td>
            </tr>
        </tbody>
        <!--  多文件类型    -->
        <tbody runat="server" id="DivFileType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>保存文件大小设置：</strong>
                </td>
                <td>
                    <asp:CheckBox ID="ChkFileSize" runat="server" Text="是否保存文件大小" Checked="True" /><br />
                    <strong>保存文件大小字段名：</strong>
                    <asp:TextBox ID="TxtFileSizeField" CssClass="l_input" runat="server" Columns="20"></asp:TextBox><br />
                    <span style="color: Red; display: none;">注：字段名由字母、数字、下划线组成，并且仅能字母开头，不以下划线结尾。不能与已有字段名重复</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" >
                    <strong>选项：</strong>
                </td>
                <td>
                    <asp:CheckBox ID="IsSwfFileUpload" runat="server"  Text="是否智能多文件上传" Checked="True" /><br />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtMaxFileSize" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUploadFileType" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span>
                    <span style="color: Blue">注：允许多个类型请用"|"号分割，如：rar|jpg|gif|bmp 等等</span>
                </td>
            </tr>
        </tbody>
        <!--  运行平台    -->
        <tbody runat="server" id="DivOperatingType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>分行键入</strong>&nbsp;&nbsp;<br />
                    每个平台选项：
                </td>
                <td>
                    <asp:TextBox ID="TxtOperatingOption" CssClass="l_input" runat="server" TextMode="MultiLine" Columns="40" Rows="6" Height="78px"></asp:TextBox>
                    <span style="color: red">*</span> <span style="color: blue">注：一行一个默认项</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>文本框长度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="OperatingType_TitleSize" CssClass="l_input" runat="server" Columns="10" MaxLength="4">35</asp:TextBox>
                    px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="OperatingType_DefaultValue" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: green">例：Win2000|XP|Win2003</span>
                </td>
            </tr>
        </tbody>
        <!--  超链接    -->
        <tbody runat="server" id="DivSuperLinkType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>文本框长度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="SuperLinkType_TitleSize" CssClass="l_input" runat="server" Columns="10" MaxLength="4">50</asp:TextBox>
                    px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="SuperLinkType_DefaultValue" runat="server" Columns="30" CssClass="l_input"></asp:TextBox>
                    <span style="color: green">例：http://127.0.0.1/</span>
                </td>
            </tr>
        </tbody>
        <!--  多级选项    -->
        <tbody runat="server" id="DivGradeOptionType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>选择分级数据分类：</strong>
                </td>
                <td>
                    <asp:DropDownList ID="GradeOptionType_Cate" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>选项下拉框排列格式化：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="GradeOptionType_Direction" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="0" Selected="True">一行横排</asp:ListItem>
                        <asp:ListItem Value="1">多行竖排</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <!--  数字类型    -->
        <tbody runat="server" id="DivNumType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>文本框长度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="NumberType_TitleSize" CssClass="l_input" runat="server" Columns="10" MaxLength="4">35</asp:TextBox>
                    px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>数字类型：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="NumberType_Style" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="1" onclick="show(this.value);">整数</asp:ListItem>
                        <asp:ListItem Value="2" onclick="show(this.value);">小数</asp:ListItem>
                        <asp:ListItem Value="3" onclick="show(this.value);">货币</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" id="showdec" style="display: none" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>小数位：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtdecimal" CssClass="l_input" runat="server" Text="0"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="NumberType_DefaultValue" CssClass="l_input" runat="server" Columns="10"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>搜索设置：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="NumSearchType" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1" Selected="True">精确搜索</asp:ListItem>
                        <asp:ListItem Value="0">范围搜索</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>搜索范围：</strong>
                </td>
                <td>
                    <table cellspacing="0" cellpadding="0" width="100%" border="0" style="text-align:center">
                        <tr class="tdbg">
                            <td>
                                <asp:RadioButtonList ID="NumRangType" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1" Selected="True">下限-上限</asp:ListItem>
                                    <asp:ListItem Value="0">自定范围</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <span style="color:red">选择了范围搜索时，此设置才有效</span>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td>
                                <asp:TextBox ID="NumSearchRange" CssClass="l_input" runat="server" TextMode="MultiLine" Columns="40" Rows="6" Height="87px" Width="255px"></asp:TextBox><br />
                            </td>
                            <td>
                                <span style="color:red">选择了自定范围时请输入此项内容,格式：范围名|范围<br />
                                    分行输入范围如：<br />
                                    500元以下|0-500<br />
                                    500元-1000元|500-1000<br />
                                    1000元以上|1000</span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
        <tbody id="DivMoneyType2" style="display: none" runat="server">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>文本框长度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="NumberType_TitleSizemoney" CssClass="l_input" runat="server" Columns="10" MaxLength="4">35</asp:TextBox>
                    px
                </td>
            </tr>
            <tr class="tdbg" id="Tr1" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>小数位：</strong>
                </td>
                <td>
                    <asp:TextBox ID="txtdecimalmoney" CssClass="l_input" runat="server" Text="0"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="NumberType_DefaultValuemoney" CssClass="l_input" runat="server" Columns="10"></asp:TextBox>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>扩展属性：</strong>
                </td>
                <td>
                    <asp:RadioButtonList ID="TypeIndex" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">仅标记</asp:ListItem>
                        <asp:ListItem Value="1">实时扣除当前会员金额(投稿中心发布一篇内容扣除金额)</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </tbody>
        <!-- 双时间字段 -->
        <tbody id="DivDoubleDateType" style="display: none" runat="server"></tbody>
        <!----颜色代码---->
        <script language="JavaScript" type="text/javascript">
            function SelectColor(t, clientId) {
                var url = "../Common/SelectColor.aspx?d=f&t=6";
                var old_color = (document.getElementById(clientId).value.indexOf('#') == 0) ? '&' + document.getElementById(clientId).value.substr(1) : '&' + document.getElementById(clientId).value;
                var color = "";
                if (document.all) {
                    color = showModalDialog(url + old_color, "", "dialogWidth:18.5em; dialogHeight:16.0em; status:0");
                    if (color != null) {
                        document.getElementById(clientId).value = color;
                    } else {
                        document.getElementById(clientId).focus();
                    }
                } else {
                    color = window.open(url + '&' + clientId, "hbcmsPop", "top=200,left=200,scrollbars=yes,dialog=yes,modal=no,width=300,height=260,resizable=yes");
                }
            }
        </script>
        <tbody id="DivColorType" style="display: none" runat="server">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>默认颜色值：</strong>
                </td>
                <td>
                    <asp:TextBox ID="ColorDefault" CssClass="l_input" runat="server" MaxLength="7" Columns="7"
                        Style="font-size: 9pt; height: 15px;"></asp:TextBox>
                    <img alt="" onclick="SelectColor(this,'ColorDefault');" src="/App_Themes/AdminDefaultTheme/Images/selectclolor.gif" style=" vertical-align:middle; border-width: 0px; cursor: pointer" />
                </td>
            </tr>
        </tbody>
        <!-------->
        <!--Office转换为falsh-->
        <tbody runat="server" id="DivUpload" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span> <span style="color: Blue">注：允许多个类型请用“|”号分割，如：doc|xls|pdf等等</span>
                </td>
            </tr>
        </tbody>
        <!----google地图---->
        <tbody runat="server" id="DivGoogleMapType" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的宽度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="WidthTxt" CssClass="l_input" runat="server" Columns="10" MaxLength="4">500</asp:TextBox>px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的高度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="HeigthTxt" CssClass="l_input" runat="server" Columns="10" MaxLength="4">200</asp:TextBox>px
                </td>
            </tr>
        </tbody>
        <!----智能多文件上传---->
        <tbody runat="server" id="DivSwfFileUpload" style="display: none">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtMaxFileSize1" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUploadFileType1" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span>
                    <span style="color: Blue">注：允许多个类型请用"|"号分割，如：rar|jpg|gif|bmp 等等</span>
                </td>
            </tr>
        </tbody>
        <!---远程文件--->
        <tbody runat="server" id="DivRemoteFile" style="display: none">
           <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件大小：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtMaxFileSize2" CssClass="l_input" runat="server" Columns="5">1024</asp:TextBox>KB
                    <span style="color: blue">提示：1 KB = 1024 Byte，1 MB = 1024 KB</span>
                    <span style="color: red">*</span>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>允许上传的文件类型：</strong>
                </td>
                <td>
                    <asp:TextBox ID="TxtUploadFileType2" CssClass="l_input" runat="server" Columns="30"></asp:TextBox>
                    <span style="color: red">*</span>
                    <span style="color: Blue">注：允许多个类型请用"|"号分割，如：rar|jpg|gif|bmp 等等</span>
                </td>
            </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>FTP服务器名：</strong>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="150">
                    </asp:DropDownList>
                </td>
            </tr>
        </tbody>
        <!--  手机短信    -->
        <tbody id="DivMobileSMS" style="display: none">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的宽度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MobileSMSType_Width" class="l_input" runat="server" Columns="10" MaxLength="4">500</asp:TextBox>px
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft">
                    <strong>显示的高度：</strong>
                </td>
                <td>
                    <asp:TextBox ID="MobileSMSType_Height" class="l_input" runat="server" Columns="10" MaxLength="4">200</asp:TextBox>px
                </td>
            </tr>
        </tbody>
        <!--------------------->
        <tr class="tdbg">
            <td class="tdbgleft">
            </td>
            <td style="height:50px;">
                <asp:Button ID="Button1" runat="server" Text=" 添加字段 " CssClass="C_input" Style="width: 110px;" OnClientClick="return isok()" OnClick="Button1_Click" />
                &nbsp;&nbsp;
                <input id="Button2" type="button" value=" 返回字段列表 " class="C_input" style="width: 110px;" onclick="javascript:window.location.href='ModelField.aspx?ModelID=<%=Request.QueryString["ModelID"] %>&ModelType=<%=Request.QueryString["ModelType"] %>'" />
                <asp:HiddenField ID="HdfModelID" runat="server" />
                <asp:HiddenField ID="HdfTableName" runat="server" />
                <asp:HiddenField ID="HdfFieldID" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>