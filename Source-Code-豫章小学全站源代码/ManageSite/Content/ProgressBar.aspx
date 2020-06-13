<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Content_ProgressBar, App_Web_t3qayxfc" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>生成首页</title>
 <link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<style type="text/css">
    .style1
    {
        width: 95%;
        height: 72px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div  style="background-color:#FFFFA6; font-size: 14px;" class="style1" >温馨提示：模板或包含文件中未包含 Powered by SiteServer CMS 支持信息 {Stl.PoweredBy}(复制)。<br/>
        您可以将 ZoomLa CMS 应用于非商业用途，而不必支付软件版权授权费用，仅需保留 ZoomLa CMS 支持信息链接即可(设置)。<br />
        详细协议请阅读 Zoomla CMS 最终用户授权协议。 </div>
    <div class="column">
        <div class="columntitle">
         当前位置：功能导航 >><a href="ProgressBar.aspx">生成首页</a> </div>
        <table cellpadding="3" width="95%" align="center">
            <tr>
                <td>
                    <div id="progressBar" style="margin: 1em 2em 2em 2em;">
                        <div id="theMeter">
                            <div id="progressBarText" style="font-weight: bold; padding: 5px;">
                                进度: <span id="Percetage">0</span>%</div>
                            <div id="progressBarBox" style="width: 350px; height: 20px; border: 1px inset; background: #eee;">
                                <div id="progressBarBoxContent" style="width: 0; height: 20px; border-right: 1px solid #444;
                                    background: #9ACB34;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="uploadError" style="position: relative; margin: 2em; display: none;">
                        <p style="padding-left: 25px; padding-bottom: 5px; color: red; text-align: left;
                            vertical-align: middle; background: url(../Pic/icon/error.jpg) no-repeat left top;">
                            执行出错，错误信息为：<br />
                            <span id="uploadErrorText"></span>
                        </p>
                    </div>
                    <div id="uploadWarning" style="position: relative; margin: 2em;">
                        <p style="padding-left: 25px; padding-bottom: 5px; text-align: left; vertical-align: middle;
                            background: url(../Pic/icon/warn.jpg) no-repeat left top;">
                            进度：<span id="uploadWarningText"></span>(1/1)...<br />
                            任务完成前请不要离开此窗口，您可以打开新窗口进行其他操作！</p>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
