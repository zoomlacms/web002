<%@ page language="C#" autoeventwireup="true" inherits="OnlineService_ShowForm, App_Web_hhmv0c5o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>在线客服</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body { margin:0px; font-size: 9pt; }
#cont { height: 134px; }
</style>
<script src="js/ajaxrequest.js" type="text/javascript"></script>
<script src="js/Action.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="Beditor/global.js"></script>
<script src="../js/ymPrompt.js"></script>
<link rel="stylesheet" id='skin' type="text/css" href="../App_Themes/AdminDefaultTheme/PromptSkin/ymPrompt.css" />
    <script type="text/javascript">
        function showContent() {
            if (document.getElementById("sessionid") != "") {
                var obj = document.getElementById("seatid").value;
                var sid = document.getElementById("sessionid").value;
                var type = document.getElementById("type").value;
                e_update_content(obj, sid, type);
                document.getElementById('message').scrollTop = document.getElementById('message').scrollHeight + 24;
            }
        }

        window.setInterval("showContent()", 1000);
        window.setInterval("update_name()", 3000);

        function e_ModifyName() {
            var sid = document.getElementById("sessionid").value;
            ymPrompt.win("ModifyName.aspx?sessionid=" + sid, 300, 300, "修改昵称", null, null, null, true);
            //ymPrompt.win("../OnlineService/ShowForm.aspx?type=0", 650, 580, "<%Call.Label("{$SiteName/}"); %>在线客服系统服务控制台<span style='font-weight:normal'>[ESC键退出当前操作]", null, null, null, true);
            //window.open("ModifyName.aspx?sessionid=" + sid, "newwindow", "height=200, width=300, top=200, left=200, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no");
        }

        function update_name() {
            var sid = document.getElementById("sessionid").value;
            var type = document.getElementById("type").value;
            if (sid != '') {
                e_update_name(type, sid);
            }
        }

        function show() {
            var sid = document.getElementById("sessionid").value;
            if (sid.length == 0) {
                if (typeof (document.getElementById("imageField")) != "undefined") {
                    document.getElementById("imageField").disabled = "disabled";
                }
                lblp.innerHTML = "<font color='red'>请选择交谈对象!</font>";
                document.getElementById("imageField").title = "请选择交谈对象!";
            } else {
                if (typeof (document.getElementById("imageField")) != "undefined") {
                    document.getElementById("imageField").disabled = "";
                }
            }
        }
        window.setTimeout("show()", 1);

        function actionsave() {
            var messagevalue = document.getElementById("message").innerHTML;
            document.getElementById("content").value = messagevalue;
            Form1.submit();
}
    </script>
</head>
<body>
<form id="Form1" action="ChattingRecord.aspx" method="post">
<input type="hidden" id="content" name="content" />
</form>
<form id="e_postf_p" onsubmit="return true;" action="SendApi.aspx?c=PostContent" method="post">
      <input name="Body" type="hidden" />
      <input type="hidden" id="seatid" runat="server" />
      <input id="type" type="hidden"
                                    runat="server" />
      <input type="hidden" runat="server" id="sessionid" />
      <div>
    <table border="0" cellpadding="0" cellspacing="0" width="640">
          <tr style="background: url(images/online_r1_c5.gif)">
        <td width="6" height="31"><img name="online_r1_c1" src="images/online_r1_c1.gif" width="6" height="31" border="0"
                        id="online_r1_c4" alt="" /></td>
        <td width="183" height="31" align="left" style="padding-left: 0px"><li title="逐浪官方论坛"><strong><a href="http://bbs.zoomla.cn" target="_blank" style="color:Black;">逐浪官方论坛</a></strong></li></td>
        <td width="7" height="31"></td>
        <td width="439" height="31" style="background: url(images/online_r1_c2.gif); padding-left: 25px; text-align:right"><img src="images/ico.gif" style="vertical-align: middle" /> <strong title="在线客服系统">在线客服系统</strong></td>
        <td width="5" height="31"><img name="online_r1_c7" src="images/online_r1_c7.gif" width="5" height="31" border="0"
                        id="online_r1_c3" alt="" /></td>
      </tr>
          <tr>
        <td width="6" height="448" valign="top" style="background: url(images/online_r6_c1.gif)"></td>
        <td width="183" valign="top"><!-- 右侧 -->
              
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                  <td valign="top">&nbsp;</td>
                </tr>
            <tr>
                  <td style="line-height: 20px; margin-top: 5px"><div id="left_main2" runat="server"> </div>
                <div id="left_main" runat="server">
                      <div> <strong>逐浪软件上海研发中心</strong><br />
                    公司地址：上海市浦东新区东方路1881弄东方城市花园79号703#<br />
                    售前咨询：021-50391046 50391047<br />
                    13918895839</div>
                      <div> <strong>逐浪软件南昌研发中心</strong></div>
                      <div> <strong>地址：</strong>南昌市站前西路89号天集大厦14F（火车站前南昌银行写字楼）</div>
                      <div> <strong>电话：</strong>0791-&nbsp;86161900&nbsp;&nbsp;86161700<br />
                    <strong>7×24小时客户服务热线：</strong>13177777714/13816455553</div>
                      <div> <strong>邮编：</strong>330029<br />
                  </div>
                      <div style="margin-top: 5px; margin-bottom: 5px"> <img name="online_r5_c6" src="images/online_r5_c6.gif" width="183" height="41" border="0"
                                            id="online_r5_c" alt="" /></div>
                      <div> 咨询QQ：69250566 184886758 745151353 515846139 544472213 779630567 785782963 184886759<br />
                    MSN：<a title="" href="msnim:chat?contact=wzff_3@hotmail.com" target="_blank">wzff_3@hotmail.com</a><br />
                    E-mail：<a href="mailto:web@hx008.com">web@hx008.com</a></div>
                    </div></td>
                </tr>
          </table>
              
              <!--  end --></td>
        <td width="7" valign="top" style="background: url(images/online_r6_c1.gif)">&nbsp;</td>
        <td width="439" valign="top"><table width="100%" height="445" border="0" align="right" cellpadding="0" cellspacing="0">
            <tr>
              <td height="34" style="background: url(images/online_r2_c2.gif); padding-left: 10px"><span id="inputer" title="" runat="server"></span>
                <input type="hidden" runat="server" id="Hidden1" />
                <input id="Hidden2" type="hidden"  runat="server" />
                <input type="hidden" id="Hidden3" runat="server" />
                <span style="float: right; margin-right:5px" id="upd" runat="server"><a href="javascript:void(0)"
                  onclick="e_ModifyName()">修改昵称</a></span> <span style="float: right; margin-right:5px" id="Span1"><a href="javascript:void(0)"
                   onclick="actionsave()">聊天记录保存到本地</a></span></td>
            </tr>
            <tr>
              <td width="438" align="left" valign="top" class="style2"><div style="height: 224px; margin: 2px; overflow-y: auto;" id="message" name="message"> </div></td>
            </tr>
            <tr>
              <td width="438" height="169" valign="bottom"><table width="100%" border="0" cellpadding="0" cellspacing="0"  style="height: 162px">
                  <tr>
                    <td colspan="2" align="left" valign="top" class="style1" style="height:148px;"><input name="Body" type="hidden" />
                      <script type="text/javascript" src="BEditor/Post.js"></script></td>
                  </tr>
                  <tr>
                    <td align="left" valign="top"><input type="radio" name="send" id="enter" value="1" title="按 Enter 键发送" />
                      <label  title="按 Enter 键发送" for="enter">按 Enter 键发送</label>
                      <input type="radio" name="send" id="enter2" value="2" checked="checked" title="按 Ctrl+Enter 键发送" />
                      <label  title="按 Ctrl+Enter 键发送" for="enter2">按 Ctrl+Enter 键发送 </label></td>
                    <td align="right" valign="top"><div id="lblp" runat="server" style="display: inline"> </div>
                      <input type="image" name="imageField" id="imageField" src="images/online_r9_c3.gif" title="发送信息" onfocus="this.blur()" onclick="e_PostContentf();return false;" width="91" height="29" /></td>
                  </tr>
                </table></td>
            </tr>
          </table></td>
        <td width="5" style="background: url(images/online_r11_c16.gif)"></td>
      </tr>
          <tr>
        <td width="4" height="8" ><img src="images/online_r11_c12.gif" width="7" height="9" /></td>
        <td width="183" height="8" ><img name="images/online_r11_c6" src="images/online_r11_c6.gif" width="183" height="8"
                        border="0" id="online_r11_c" alt="" /></td>
        <td width="7" height="8"  ><img src="images/online_r11_c14.gif" width="7" height="8" /></td>
        <td width="183" height="8" ><img src="images/online_r11_c13.gif" width="439" height="8"  /></td>
        <td width="4" height="8" ><img src="images/online_r11_c15.gif" width="4" height="8" /></td>
      </tr>
        </table>
  </div>
    </form>
</body>
</html>