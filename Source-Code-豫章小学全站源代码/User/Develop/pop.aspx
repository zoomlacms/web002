<%@ page language="C#" autoeventwireup="true" inherits="User_Zone_pop, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>浮动窗</title>
<link type="text/css" rel="stylesheet" href="Css/popbox.css" />
<script type="text/javascript" src="/JS/jquery-1.4.js"></script>
<script type="text/javascript" src="Scripts/floatbox.js"></script>
</head>
<body>
    <div class="floatbox">
        <div class="ftitle">
            <span>添加控件：新文字</span><span class="ftclose" title="关闭"></span>
        </div>
        <div class="fmain">
            <ul class="titul">
                <li class="titliover">内容</li>
                <li class="titli">动态效果</li>
                <li class="titli">文字样式</li>
                <li class="titli">标题/边框</li>
                <li class="titli">漂浮</li>
                <li class="titli">显示</li>
            </ul>
            <div class="clear">
            </div>
            <div class="floattab0">
                <div id="LabelList" runat="server">
                    <%--<label for="" onclick=''><input id="" type="checkbox" /><label for="">abc</label>
                    --%></div>
            </div>
            <div class="floattab1">
                <div class="txtcontent" style="display:none;">
                    <textarea rows="10" cols="80" id="txt_content" name="txt_content" runat="server">{ZL.Label id="蓝色底部" /}</textarea>
                </div>
            </div>
            <div class="floattab2">
            </div>
            <div class="floattab3">
            </div>
            <div class="floattab4">
            </div>
            <div class="floattab5">
                <div id="editpanel5" style="display: block;">
                    <fieldset style="padding: 10px">
                        <legend>显示区设置</legend>
                        <br />
                        当显示内容超出显示区时：<br />
                        <span id="SysPanelDisplay_RadioButtonListOverflow">
                            <input id="SysPanelDisplay_RadioButtonListOverflow_0" type="radio" name="StyleOverflow"
                                value="visible" checked="checked" /><label for="SysPanelDisplay_RadioButtonListOverflow_0">全部显示</label><input
                                    id="SysPanelDisplay_RadioButtonListOverflow_1" type="radio" name="StyleOverflow"
                                    value="scroll" /><label for="SysPanelDisplay_RadioButtonListOverflow_1">使用滚动条</label><input
                                        id="SysPanelDisplay_RadioButtonListOverflow_2" type="radio" name="StyleOverflow"
                                        value="hidden" /><label for="SysPanelDisplay_RadioButtonListOverflow_2">隐藏超出部分内容（默认）</label></span>
                    </fieldset>
                    <fieldset style="padding: 10px">
                        <legend>显示/隐藏</legend>
                        <br />
                        何时显示该控件：<br />
                        <span id="SysPanelDisplay_RadioButtonListRenderMode">
                            <input id="SysPanelDisplay_RadioButtonListRenderMode_0" type="radio" name="StyleDisplay"
                                value="block" checked="checked" /><label for="SysPanelDisplay_RadioButtonListRenderMode_0">显示（默认）</label><input
                                    id="SysPanelDisplay_RadioButtonListRenderMode_1" type="radio" name="StyleDisplay"
                                    value="none" /><label for="SysPanelDisplay_RadioButtonListRenderMode_1">隐藏</label></span>
                    </fieldset>
                    <div id="SysPanelDisplay_PanelPosition">
                        <fieldset style="padding: 10px">
                            <legend>显示位置/大小</legend>
                            <br />
                            浮动时位置与大小：<br />
                            <table cellpadding="2" cellspacing="2">
                                <tr>
                                    <td>
                                        左边位置:
                                    </td>
                                    <td>
                                        <input name="SysPanelDisplay$TextBoxLeft" type="text" value="218" id="SysPanelDisplay_TextBoxLeft"
                                            style="width: 30px;" />
                                    </td>
                                    <td>
                                        上边位置:
                                    </td>
                                    <td>
                                        <input name="SysPanelDisplay$TextBoxTop" type="text" value="9" id="SysPanelDisplay_TextBoxTop"
                                            style="width: 30px;" />
                                    </td>
                                    <td>
                                        宽度:
                                    </td>
                                    <td>
                                        <input name="SysPanelDisplay$TextBoxWidth" type="text" value="184" id="SysPanelDisplay_TextBoxWidth"
                                            onkeyup="Mynetcn_chkInputNumber(this);" style="width: 30px;" />
                                    </td>
                                    <td>
                                        高度:
                                    </td>
                                    <td>
                                        <input name="SysPanelDisplay$TextBoxHeight" type="text" value="246" id="SysPanelDisplay_TextBoxHeight"
                                            onkeyup="Mynetcn_chkInputNumber(this);" style="width: 30px;" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
        <div class="ffoot">
            <span id="btnok" class="btnyellow fspan1" onclick="AddStyle();AddContent();">确定</span>
            <span id="btncancel" class="btnblack fspan2">取消</span>
        </div>
    </div>
</body>
</html>