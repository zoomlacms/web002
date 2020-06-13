<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.WebSite.Manage.AddOn.Advertisement, App_Web_344umpbq" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加广告</title>
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/Guide.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="/App_Themes/AdminDefaultTheme/main.css" />
<script src="/JS/Common.js" type="text/javascript"></script>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script type="text/javascript" language="javascript">
    function CheckImg(txtName) {
        window.open('../Flex/MyWorkList.aspx?txtName=' + txtName, 'newWin', 'modal=yes,width=570,height=480,resizable=yes,scrollbars=yes');
    }
</script>
    <style type="text/css">
        #Upload_Pic
        {
            width: 96%;
        }
    </style>
</head>
<body onload="changeBody(1)">
<form id="form1" runat="server">
<div class="r_navigation">后台管理&nbsp;&gt;&gt;扩展功能&nbsp;&gt;&gt;<a href="ADManage.aspx" title="网站广告管理">广告管理</a>&nbsp;&gt;&gt;广告编辑</div>
<table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
    <tr valign="middle">
        <td class="spacingtitle" colspan="2" style="height: 26px; text-align: center">
            <strong><asp:Label ID="Label1" runat="server" Text="添加广告内容"></asp:Label></strong>
        </td>
    </tr>
</table>
    <div style="float: left; width: 150px; height: 380px; overflow: hidden">
        <table border="0" cellpadding="2" cellspacing="1">
            <tr>
                <td valign="middle" class="tdbgleft" style="width: 100px;">
                    <b>所属版位</b>
                </td>
            </tr>
            <tr>
                <td style="width: 100%" class="tdbg">
                    <asp:ListBox ID="LstZoneName" runat="server" Height="360px" Width="150px" SelectionMode="multiple"></asp:ListBox>
                </td>
            </tr>
        </table>
    </div>
    <div style="float: left; height: 380px; width: 50%; overflow: hidden; text-align: left" id="addpart" class="tdbgleft">
        <table style="width: 100%; border-collapse: collapse">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td align="right" class="tdbgleft" style="width: 150px;">
                    <strong>选择广告内容：</strong>
                </td>
                <td align="left">
                    <a href="javascript:changeBody(1)" class="C_input" id="add">广告内容</a>&nbsp
                    <a href="javascript:changeBody(2)" class="C_input" id="con" style="background: red">过期内容</a>
                </td>
            </tr>
            <tbody id="tad1">
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right" class="tdbgleft" style="width: 150px">
                        <strong>广告类型：</strong>
                    </td>
                    <td align="left">
                        <asp:RadioButtonList ID="RadlADType" AutoPostBack="False" RepeatDirection="Horizontal" RepeatLayout="Flow" runat="server">
                            <asp:ListItem Selected="True" Value="1">图片</asp:ListItem>
                            <asp:ListItem Value="2">动画</asp:ListItem>
                            <asp:ListItem Value="3">文本</asp:ListItem>
                            <asp:ListItem Value="4">代码</asp:ListItem>
                            <asp:ListItem Value="5">页面</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                    <td align="right" class="tdbgleft" style="width: 150px;">
                        <strong>广告名称：</strong>
                    </td>
                    <td align="left" style="color: red;">
                        <asp:TextBox ID="TxtADName" class="l_input" Width="400px" MaxLength="150" runat="server"></asp:TextBox>*
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="广告名称不能为空！" ControlToValidate="TxtADName" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </tbody>
        </table>
        <div style="width: 100%; float: left" class="tdbgleft">
            <div id="type" style="float: left; width: 150px; text-align: right; vertical-align: middle;">
                <strong>广告内容：</strong></div>
            <div id="ADContent" runat="server" style="float: left; width: 70%">
                <div id="ADContent1" runat="server" width="100%">
                    <table border="0" cellpadding="2" cellspacing="1">
                        <tr valign="middle" class="tdbg2">
                            <td colspan="2" style="text-align: center; height: 22px;">
                                <strong>广告内容设置--图片</strong>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px; height: 55px;" class="tdbgleft">
                                图片上传：
                            </td>
                            <td style="height: 55px;">
                                <asp:TextBox ID="txtpic" class="l_input" runat="server" Width="194px" Height="19px"></asp:TextBox>
                                <span style="color: Red">*</span> 【<a href="javascript:void{};" onclick="CheckImg('pic')">从我的作品中提取</a>】
                                <asp:Label ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label><br />
                                <iframe id="Upload_Pic" src="../Common/Upload.aspx?CID=pic&ftype=4" 
                                    marginheight="0" marginwidth="0" frameborder="0" height="30" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px;" class="tdbgleft">
                                图片尺寸：
                            </td>
                            <td>
                                宽：<asp:TextBox ID="TxtImgWidth" class="l_input" MaxLength="5" Style="width: 40px" runat="server"></asp:TextBox>
                                像素 &nbsp; 高：<asp:TextBox ID="TxtImgHeight" class="l_input" MaxLength="5" Style="width: 40px" runat="server"></asp:TextBox>
                                像素
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px; height: 41px;" class="tdbgleft">
                                链接地址：
                            </td>
                            <td style="height: 41px;">
                                <asp:TextBox ID="TxtLinkUrl" class="l_input" Text="http://" runat="server" Width="341px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px; text-align: right" class="tdbgleft">
                                链接提示：
                            </td>
                            <td style="height: 16px">
                                <asp:TextBox ID="TxtLinkAlt" class="l_input" runat="server" MaxLength="255" Width="341px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px;" class="tdbgleft">
                                链接目标：
                            </td>
                            <td>
                                <asp:RadioButtonList ID="RadlLinkTarget" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0">原窗口</asp:ListItem>
                                    <asp:ListItem Value="1" Selected="True">新窗口</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="width:100%">
                            <td align="right" style="width: 70px;" class="tdbgleft">
                                广告简介：
                            </td>
                            <td>
                                <asp:TextBox ID="TxtADIntro" class="l_input" runat="server" TextMode="MultiLine" Height="87px" Width="341px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="ADContent2" runat="server" width="100%" style="display: none">
                    <table border="0" cellpadding="2" cellspacing="1">
                        <tr valign="middle" class="tdbg2">
                            <td colspan="2" style="text-align: center; height: 25px;">
                                <strong>广告内容设置--动画</strong>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" style="width: 70px; height: 49px;" class="tdbgleft">
                                动画上传：
                            </td>
                            <td style="height: 49px; color: red;">
                                <asp:TextBox ID="txtFlashPath" class="l_input" runat="server"></asp:TextBox>
                                *<asp:Label ID="LabFlashPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label>
                                <br />
                                <iframe id="Upload_Flash" src="../Common/../Common/Upload.aspx?CID=FlashPath&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no">
                                </iframe>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" style="width: 70px" class="tdbgleft">
                                动画尺寸：
                            </td>
                            <td>
                                宽：<asp:TextBox ID="TxtFlashWidth" class="l_input" runat="server" Style="width: 40px" MaxLength="5"></asp:TextBox>
                                像素 &nbsp; &nbsp;高：<asp:TextBox ID="TxtFlashHeight" class="l_input" Style="width: 40px" runat="server" MaxLength="5"></asp:TextBox>
                                像素
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" colspan="1" style="width: 70px; height: 6px" class="tdbgleft">
                                背景透明：
                            </td>
                            <td align="right" colspan="2" style="height: 6px; text-align: left;">
                                <asp:RadioButtonList ID="RadlFlashMode" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="0" Selected="True">不透明</asp:ListItem>
                                    <asp:ListItem Value="1">透明</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="ADContent3" runat="server" width="100%" style="display: none">
                    <table border="0" cellpadding="2" cellspacing="1">
                        <tr valign="middle" class="tdbg2">
                            <td colspan="2" style="text-align: left; padding-left: 50px;">
                                <strong>广告内容设置--文本</strong>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td valign="middle" colspan="2">
                                <asp:TextBox ID="TxtADText" class="l_input" TextMode="multiLine" runat="server" Height="90px" Width="380px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="ADContent4" runat="server" width="100%" style="display: none">
                    <table border="0" cellpadding="2" cellspacing="1">
                        <tr valign="middle" class="tdbg2">
                            <td style="text-align: left; padding-left: 50px;">
                                <strong>广告内容设置--代码</strong>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td valign="middle">
                                <asp:TextBox ID="TxtADCode" class="l_input" TextMode="multiLine" runat="server" Height="90px" Width="380px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="ADContent5" runat="server" width="100%" style="display: none">
                    <table border="0" cellpadding="2" cellspacing="1">
                        <tr valign="middle" class="tdbg2">
                            <td colspan="2" style="text-align: center;">
                                <strong>广告内容设置--页面</strong>
                            </td>
                        </tr>
                        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                            <td align="right" style="width: 70px" class="tdbgleft">
                                页面地址：
                            </td>
                            <td>
                                <asp:TextBox ID="TxtWebFileUrl" class="l_input" Style="width: 300px; height: 90px" runat="server"></asp:TextBox>
                                <br />
                                <span style="color: blue">注意：</span>页面地址需要加上http://
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div id="Table" style="display: none; margin-left: 150px;" class="tdbgleft">
            <div id="Table1" runat="server" width="100%">
                <table border="0" cellpadding="2" cellspacing="1">
                    <tr valign="middle" class="tdbg2">
                        <td colspan="2" style="text-align: center; height: 22px;">
                            <div id="shezhi1">
                                <strong>广告内容设置--图片</strong></div>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px; height: 55px;" class="tdbgleft">
                            图片上传：
                        </td>
                        <td style="height: 55px;">
                            <asp:TextBox ID="txtpic1" class="l_input" runat="server" Width="194px" Height="19px"></asp:TextBox>
                            <span style="color: Red">*</span> 【<a href="javascript:void{};" onclick="CheckImg('pic')">从我的作品中提取</a>】
                            <asp:Label ID="LabPicPath1" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label><br />
                            <iframe id="Upload_Pic1" src="../Common/Upload.aspx?CID=pic1&ftype=4" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px" class="tdbgleft">
                            图片尺寸：
                        </td>
                        <td>
                            宽：<asp:TextBox ID="TxtImgWidth1" class="l_input" MaxLength="5" Style="width: 40px" runat="server"></asp:TextBox>
                            像素 &nbsp; 高：<asp:TextBox ID="TxtImgHeight1" class="l_input" MaxLength="5" Style="width: 40px" runat="server"></asp:TextBox>
                            像素
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px; height: 41px;" class="tdbgleft">
                            链接地址：
                        </td>
                        <td style="height: 41px;">
                            <asp:TextBox ID="TxtLinkUrl1" class="l_input" Text="http://" runat="server" Width="341px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px; text-align: right" class="tdbgleft">
                            链接提示：
                        </td>
                        <td style="height: 16px">
                            <asp:TextBox ID="TxtLinkAlt1" class="l_input" runat="server" MaxLength="255" Width="341px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px" class="tdbgleft">
                            链接目标：
                        </td>
                        <td style="width: 352px">
                            <asp:RadioButtonList ID="RadlLinkTarget1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0">原窗口</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">新窗口</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 20%" class="tdbgleft">
                            广告简介：
                        </td>
                        <td>
                            <asp:TextBox ID="TxtADIntro1" class="l_input" runat="server" TextMode="MultiLine" Height="87px" Width="341px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Table2" runat="server" width="100%" style="display: none">
                <table border="0" cellpadding="2" cellspacing="1">
                    <tr valign="middle" class="tdbg2">
                        <td colspan="2" style="height: 23px; text-align: center;">
                            <strong>广告内容设置--动画</strong>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px; height: 49px;" class="tdbgleft">
                            动画上传：
                        </td>
                        <td style="height: 49px; color: red;">
                            <asp:TextBox ID="txtFlashPath1" class="l_input" runat="server"></asp:TextBox>
                            *<asp:Label ID="LabFlashPath1" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label>
                            <br />
                            <iframe id="Upload_Flash1" src="../Common/../Common/Upload.aspx?CID=FlashPath1&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no">
                            </iframe>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px" class="tdbgleft">
                            动画尺寸：
                        </td>
                        <td>
                            宽：<asp:TextBox ID="TxtFlashWidth1" class="l_input" runat="server" Style="width: 40px" MaxLength="5"></asp:TextBox>
                            像素 &nbsp; &nbsp;高：<asp:TextBox ID="TxtFlashHeight1" class="l_input" Style="width: 40px" runat="server" MaxLength="5"></asp:TextBox>
                            像素
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" colspan="1" style="width: 70px; height: 6px" class="tdbgleft">
                            背景透明：
                        </td>
                        <td align="right" colspan="2" style="height: 6px; text-align: left;">
                            <asp:RadioButtonList ID="RadlFlashMode1" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Value="0" Selected="True">不透明</asp:ListItem>
                                <asp:ListItem Value="1">透明</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Table3" runat="server" width="100%" style="display: none">
                <table border="0" cellpadding="2" cellspacing="1">
                    <tr valign="middle" class="tdbg2">
                        <td colspan="2" style="text-align: left; padding-left: 50px;">
                            <strong>广告内容设置--文本</strong>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td valign="middle" colspan="2">
                            <asp:TextBox ID="TxtADText1" class="l_input" TextMode="multiLine" runat="server" Height="90px" Width="380px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Table4" runat="server" width="100%" style="display: none">
                <table border="0" cellpadding="2" cellspacing="1">
                    <tr valign="middle" class="tdbg2">
                        <td style="text-align: left; padding-left: 50px;">
                            <strong>广告内容设置--代码</strong>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td valign="middle">
                            <asp:TextBox ID="TxtADCode1" class="l_input" TextMode="multiLine" runat="server" Height="90px" Width="380px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="Table5" runat="server" width="100%" style="display: none">
                <table border="0" cellpadding="2" cellspacing="1">
                    <tr valign="middle" class="tdbg2">
                        <td colspan="2" style="text-align: center;">
                            <strong>广告内容设置--页面</strong>
                        </td>
                    </tr>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style="width: 70px" class="tdbgleft">
                            页面地址：
                        </td>
                        <td>
                            <asp:TextBox ID="TxtWebFileUrl1" class="l_input" Style="width: 300px; height: 90px" runat="server"></asp:TextBox>
                            <br />
                            <span style="color: blue">注意：</span>页面地址需要加上http://
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div style="clear: both"></div>
    <table id="adv" width="100%">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px; height: 24px">
                <strong>审核状态：</strong>
            </td>
            <td align="left" style="height: 24px">
                <asp:CheckBox ID="ChkPassed" Checked="true" runat="server" />
                通过审核
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px;">
                <strong>广告权重：</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="TxtPriority" runat="server" class="l_input" TextMode="singleLine" MaxLength="3" Text="1" Style="width: 20px"></asp:TextBox>
                * 此项为版位广告随机显示时的优先权，权重越大显示机会越大。
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px;">
                <strong>广告统计：</strong>
            </td>
            <td align="left" style="height: 42px;">
                <asp:CheckBox ID="ChkCountView" runat="server" />
                统计浏览数 浏览数：<asp:TextBox ID="TxtViews" MaxLength="5" class="l_input" runat="server" Width="32px" Text="0"></asp:TextBox><br />
                <asp:CheckBox ID="ChkCountClick" runat="server" />
                统计点击数 点击数：<asp:TextBox ID="TxtClicks" class="l_input" runat="server" MaxLength="5" Width="35px" Text="0"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px">
                <strong>广告过期时间：</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="txtOverdueDate" class="l_input" Style="font-size: 9pt; height: 15px" MaxLength="10" runat="server" Text="2008-10-19"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px">
                <strong>出售价格(按天计)：</strong>
            </td>
            <td align="left">
                <asp:TextBox ID="Price" class="l_input" Style="font-size: 9pt; height: 15px" MaxLength="10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="tdbgleft" style="width: 350px; height: 24px">
                <strong>是否开放竟价：</strong>
            </td>
            <td align="left" style="height: 24px">
                <asp:CheckBox ID="ADBuy" Checked="true" runat="server" />
                开放竟价
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="1" width="100%">
        <tr>
            <td valign="middle" colspan="2" style="width: 100%; height: 25px" align="center">
                <asp:Button ID="EBtnSubmit" runat="server" class="C_input" Text="保存" OnClientClick="javascript:return CheckForm();" OnClick="EBtnSubmit_Click" />
                <input id="Cancel" name="Cancel" onclick="GoBack();" style="cursor: hand;" type="button" value="取消" class="C_input" />
                <asp:HiddenField ID="HdnID" runat="server" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
<script language="javascript" type="text/javascript">
    function CheckSelect() {
        var s = document.getElementById("<%= LstZoneName.ClientID %>");
        for (var i = 0; i < s.length; i++) {
            if (s.options[i].selected) {
                return true;
            }
        }
        return false;
    }
    function CheckUploadFile() {
        if (document.getElementById("<%=RadlADType.ClientID %>_0").checked) {
            var s = document.getElementById("<%=txtpic.ClientID %>");
            if (s.value == "") {
                alert("还没有上传图片！");
                return false;
            }
        }
        if (document.getElementById("<%=RadlADType.ClientID %>_1").checked) {
            s = document.getElementById("<%=txtFlashPath.ClientID %>");
            if (s.value == "") {
                alert("还没有上传Flash");
                return false;
            }
        }
        return true;
    }
    function GoBack() {
        window.location.href = "ADManage.aspx";
    }
    function Change_ADType() {
        for (var j = 1; j <= 5; j++) {
            var ot = document.getElementById("ADContent" + j);
            var ott = document.getElementById("Table" + j);
            if ($("<%=RadlADType.ClientID %>_" + (j - 1)).checked) {
                ot.style.display = '';
                ott.style.display = '';
                if (j == 1) {
                    $("<%=ChkCountClick.ClientID %>").disabled = false;
                    $("<%=TxtClicks.ClientID %>").disabled = false;
                }
                else {
                    $("<%=ChkCountClick.ClientID %>").disabled = true;
                    $("<%=TxtClicks.ClientID %>").disabled = true;
                }
            }
            else {
                ot.style.display = 'none';
                ott.style.display = 'none';
            }
        }
    }
    function ADTypeChecked(i) {
        $("<%=RadlADType.ClientID %>_" + (i - 1)).checked = true;
        Change_ADType();
    }
    function CheckForm() {
        if ($("<%=TxtADName.ClientID %>").value == '') {
            alert('广告名称不能为空！');
            $("<%=TxtADName.ClientID %>").focus();
            return false;
        }
        if (!CheckUploadFile()) {
            return false;
        }
        if ($("<%=RadlADType.ClientID %>_2").checked && $("<%=TxtADText.ClientID %>").value == '') {
            alert('广告文字不能空');
            $("<%=TxtADText.ClientID %>").focus();
            return false;
        }
        if ($("<%=RadlADType.ClientID %>_3").checked && $("<%=TxtADCode.ClientID %>").value == '') {
            alert('广告代码不能空');
            $("<%=TxtADCode.ClientID %>").focus();
            return false;
        }
        if ($("<%=TxtPriority.ClientID %>").value == '') {
            alert('权重系数不能空');
            $("<%=TxtPriority.ClientID %>").focus();
            return false;
        }
    }
    function changeBody(index) {
        switch (index) {
            case 1:
                {
                    document.getElementById('ADContent').style.display = "";
                    document.getElementById('Table').style.display = "none";
                    document.getElementById('adv').style.display = "";
                    document.getElementById('tad1').style.display = "";
                    document.getElementById('type').style.display = "";
                    document.getElementById('shezhi1').style.display = "";
                    document.getElementById('add').style.background = "#AACC12";
                }
                break;
            case 2:
                {
                    document.getElementById('ADContent').style.display = "none";
                    document.getElementById('Table').style.display = "";
                    document.getElementById('adv').style.display = "none";
                    document.getElementById('tad1').style.display = "none";
                    document.getElementById('type').style.display = "none";
                    document.getElementById('shezhi1').style.display = "none";
                    document.getElementById('add').style.background = "#8F9F56";
                }
                break;
        }
    }
    //页面大小
    var Width = document.body.offsetWidth;
    Width -= 155;
    document.getElementById("addpart").style.width = Width + "px";
</script>