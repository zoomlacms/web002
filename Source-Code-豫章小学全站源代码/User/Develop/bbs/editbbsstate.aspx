<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_bbs_editbbsstate, App_Web_llowckx0" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title></title>
<style type="text/css">
TD,P,LI,SELECT,INPUT{font-size:12px;font-family:"宋体";}
.style20{color:#585858;}
.style21{color:#f00;}
A.l12_1E659D_b:link{color:#1E659D;font-weight:bold;text-decoration:underline;}
A.l12_1E659D_b:visited{color:#1E659D;font-weight:bold;text-decoration:underline;}
A.l12_1E659D_b:active{color:#f00;font-weight:bold;text-decoration:underline;}
A.l12_1E659D_b:hover{color:#f00;font-weight:bold;text-decoration:underline;}
</style>
</head>
<body>
    <div style="overflow: auto; margin:auto; clear:both; width:" id="siteadmin_content">
        <div style="width: 960px; margin:auto">
            <div>
                <div style='margin-top: 26px; width: 100%' class='VISubContentTitleList'>
                    <ul style ="display:none">
                        <li class="VISubContentTitleItemSelected VIExplainText">论坛设置管理</li>
                        <li class='VISubContentTitleItemNormalRight VIExplainText' onclick="window.location.href='~/plugin/doc/docadmin.aspx?doctypename=bbs_article'">论坛帖子管理</li>
                        <li class='VISubContentTitleItemNormalRight VIExplainText' onclick="window.location.href='~/plugin/bbs/BBSCategoryModerator.aspx'">论坛版主设置</li>
                    </ul>
                </div>
                <div style='clear: both; width: 100%;' class='VISubContentDiv'>
                    <table width="958" border="0" cellspacing="0" cellpadding="0" style="margin: auto;">
                        <tr>
                            <td width="15" rowspan="3"></td>
                            <td height="30"></td>
                            <td width="15" rowspan="3"></td>
                        </tr>
                        <tr>
                            <td width="928">
                                <table width="928" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td height="7" colspan="3">
                                            <table width="928" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="25">&nbsp;</td>
                                                    <td width="878">
                                                        <table width="878" style="height: 210px;" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td width="178">
                                                                    <img src="../images/glzx_ltgl_icon_5.gif" width="178" height="211" />
                                                                </td>
                                                                <td style="background-image: url(../images/glzx_ltgl_icon_7.gif);
                                                                    background-repeat: repeat-x;" align="center">
                                                                    <div style="text-align: left;">
                                                                        <span class="style20"><strong>论坛目前状态:</strong></span>
                                                                        <table id="ctl00_ContentPlaceHolderCenter_rdoltState" onclick="setRadioStyle();"
                                                                            border="0">
                                                                            <tr>
                                                                                <td>
                                                                                    <input id="ctl00_ContentPlaceHolderCenter_rdoltState_0" type="radio" name="ctl00$ContentPlaceHolderCenter$rdoltState"
                                                                                        value="0" /><label for="ctl00_ContentPlaceHolderCenter_rdoltState_0">开放</label>
                                                                                </td>
                                                                                <td>
                                                                                    <input id="ctl00_ContentPlaceHolderCenter_rdoltState_1" type="radio" name="ctl00$ContentPlaceHolderCenter$rdoltState"
                                                                                        value="1" checked="checked" /><label for="ctl00_ContentPlaceHolderCenter_rdoltState_1">关闭<span
                                                                                            class="style21">(维护时间设为关闭)</span></label>
                                                                                </td>
                                                                                <td>
                                                                                    <input id="ctl00_ContentPlaceHolderCenter_rdoltState_2" type="radio" name="ctl00$ContentPlaceHolderCenter$rdoltState"
                                                                                        value="2" /><label for="ctl00_ContentPlaceHolderCenter_rdoltState_2">禁止发帖<span class="style21">(开放状态下禁止会员发表新帖)</span></label>
                                                                                </td>
                                                                            </tr>
                                                                        </table>
                                                                    </div>
                                                                    <div style="margin-top: 10px; text-align: left;">
                                                                        <div class="style20">
                                                                            <strong>请输入提示信息 (当用户登录论坛时显示)</strong></div>
                                                                        <textarea name="ctl00$ContentPlaceHolderCenter$txtInfo" rows="5" cols="20" id="ctl00_ContentPlaceHolderCenter_txtInfo"
                                                                            onkeyup="hfInfo();" style="width: 483px;">
论坛维护中，暂时关闭！</textarea>
                                                                        <input type="hidden" name="ctl00$ContentPlaceHolderCenter$hfInfo" id="ctl00_ContentPlaceHolderCenter_hfInfo"
                                                                            value="论坛维护中，暂时关闭！" />
                                                                    </div>
                                                                    <div style="margin-top: 10px; text-align: left; padding-left: 200px;">
                                                                        <input type="submit" name="ctl00$ContentPlaceHolderCenter$btnSubmit" value="确认" id="ctl00_ContentPlaceHolderCenter_btnSubmit"
                                                                            class="VIButtonNoraml VIExplainText" onmouseover="this.className=&#39;VIButtonSelected VIExplainText&#39;"
                                                                            onmouseout="this.className=&#39;VIButtonNoraml VIExplainText&#39;" checkfunction="SupportBBS"
                                                                            style="width: 59px;" />
                                                                    </div>
                                                                </td>
                                                                <td width="24">
                                                                    <img src="../images/glzx_ltgl_icon_6.gif" width="24"
                                                                        height="211" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="25">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="454" align="right">
                                        </td>
                                        <td width="20">
                                            &nbsp;
                                        </td>
                                        <td width="454" align="left">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20" colspan="3" align="center">
                                            <table width="878" style="text-align: center;" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td width="20">
                                                        <img src="../images/luntanguanli_0.gif" width="20"
                                                            height="167">
                                                    </td>
                                                    <td width="838" valign="top" background="../images/luntanguanli_02.gif"
                                                        style="background-repeat: repeat-x;">
                                                        <table width="838" border="0" cellspacing="0" cellpadding="0">
                                                            <tr>
                                                                <td>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td align="left">
                                                                    <span class="style20"><strong>论坛页面:</strong></span>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <table width="838" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="5" colspan="9">
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td rowspan="2">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td width="100" align="center">
                                                                                <a href="#">
                                                                                    <img src="../images/luntanguanli_03.gif" width="100"
                                                                                        height="100" border="0"></a>
                                                                            </td>
                                                                            <td width="55" rowspan="2" align="center">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td width="100" align="center">
                                                                                <a href="#">
                                                                                    <img src="../images/luntanguanli_04.gif" width="100"
                                                                                        height="100" border="0"></a>
                                                                            </td>
                                                                            <td width="55" rowspan="2" align="center">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td width="100" align="center">
                                                                                <a href="#">
                                                                                    <img src="../images/luntanguanli_05.gif" width="100"
                                                                                        height="100" border="0"></a>
                                                                            </td>
                                                                            <td width="55" rowspan="2" align="center">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td width="100" align="center">
                                                                                <a href="#">
                                                                                    <img src="../images/luntanguanli_06.gif" width="100"
                                                                                        height="100" border="0"></a>
                                                                            </td>
                                                                            <td width="55" rowspan="2" align="center">
                                                                                &nbsp;
                                                                            </td>
                                                                            <td width="100" align="center">
                                                                                <a href="#">
                                                                                    <img src="../images/luntanguanli_08.gif" width="100"
                                                                                        height="100" border="0"></a>
                                                                            </td>
                                                                            <td rowspan="2">
                                                                                &nbsp;
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="center">
                                                                                <table width="100" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10" colspan="2">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="10">
                                                                                            <img src="http://res.mynet.cn/res/plugin/bbs/images/luntanguanli_07.gif" width="7"
                                                                                                height="7">
                                                                                        </td>
                                                                                        <td align="left">
                                                                                            <a href="#" class="l12_1E659D_b">开始设计</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td align="center">
                                                                                <table width="100" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10" colspan="2">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="10">
                                                                                            <img src="http://res.mynet.cn/res/plugin/bbs/images/luntanguanli_07.gif" width="7"
                                                                                                height="7">
                                                                                        </td>
                                                                                        <td align="left">
                                                                                            <a href="#" class="l12_1E659D_b">开始设计</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td align="center">
                                                                                <table width="100" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10" colspan="2">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="10">
                                                                                            <img src="http://res.mynet.cn/res/plugin/bbs/images/luntanguanli_07.gif" width="7"
                                                                                                height="7">
                                                                                        </td>
                                                                                        <td align="left">
                                                                                            <a href="#" class="l12_1E659D_b">
                                                                                                开始设计</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td align="center">
                                                                                <table width="100" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10" colspan="2">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="10">
                                                                                            <img src="http://res.mynet.cn/res/plugin/bbs/images/luntanguanli_07.gif" width="7"
                                                                                                height="7">
                                                                                        </td>
                                                                                        <td align="left">
                                                                                            <a href="#" class="l12_1E659D_b">开始设计</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                            <td align="center">
                                                                                <table width="100" border="0" cellspacing="0" cellpadding="0">
                                                                                    <tr>
                                                                                        <td height="10" colspan="2">
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="10">
                                                                                            <img src="http://res.mynet.cn/res/plugin/bbs/images/luntanguanli_07.gif" width="7"
                                                                                                height="7">
                                                                                        </td>
                                                                                        <td align="left">
                                                                                            <a href="#" class="l12_1E659D_b">开始设计</a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </table>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                    <table width="838" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td height="10">
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td width="20">
                                                        <img src="../images/luntanguanli_01.gif" width="20"
                                                            height="167">
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</body>
</html>