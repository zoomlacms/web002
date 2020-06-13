<%@ page language="C#" autoeventwireup="true" inherits="manage_User_ServiceCode, App_Web_tskucmgh" validaterequest="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>生成客服代码</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<style type="text/css">
.style1 { width:158x; }
</style>
</head>
<script type="text/javascript">
    function show(id) {
        for (var i = 1; i <= 4; i++) {
            if (i == id) {
                document.getElementById("cho_c" + i).style.display = "block";
            } else {
                document.getElementById("cho_c" + i).style.display = "none";
            }
        }
    }
    function getCode_onclick() {
        var companyname = document.getElementById("biz_name").value;
        var welcomemsg = document.getElementById("msg").value;
        var vt = null;
        if (companyname.length != 0 || companyname != "") {
            if (document.getElementById("style1").checked == true) {
                vt = " <img  style=\"CURSOR: pointer\" onclick=\"javascript:window.open('OnlineService/ShowForm.aspx', '_blank', 'height=489, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');\"  border=\"0\" SRC=\"/OnlineService/images/btn_2.gif\">";
                document.getElementById("txtCode").innerText = vt;
            }
            if (document.getElementById("style2").checked == true) {
                vt = "<script type=\"text/javascript\"> var companyname=\"" + companyname + "\"; var type=\"" + 0 + "\";var welcomemsg=\"" + welcomemsg + "\";<\/script>";
                vt = vt + "\n<script type=\"text/javascript\" src=\"OnlineService/js/kf.js\">\<\/script>";
                document.getElementById("txtCode").innerText = vt;
            }
            if (document.getElementById("style3").checked == true) {
                vt = "<script type=\"text/javascript\"> var companyname=\"" + companyname + "\"; var type=\"" + 1 + "\";var welcomemsg=\"" + welcomemsg + "\";<\/script>";
                vt = vt + "\n<script type=\"text/javascript\" src=\"OnlineService/js/kf.js\">\<\/script>";
                document.getElementById("txtCode").innerText = vt;
            }
            if (document.getElementById("style4").checked == true) {
                vt = "<script type=\"text/javascript\"> var companyname=\"" + companyname + "\"; var type=\"" + 2 + "\";var welcomemsg=\"" + welcomemsg + "\";<\/script>";
                vt = vt + "\n<script type=\"text/javascript\" src=\"OnlineService/js/kf.js\">\<\/script>";
                document.getElementById("txtCode").innerText = vt;
            }
        } else {
            alert("请输入您的公司名称！");
        }
    }

</script>
<body>
<form id="form1" runat="server">
<div class="r_navigation">后台管理&gt;&gt;附件管理&gt;&gt;客服管理&gt;&gt;生成在线界面</div>
  <table border="0" width="100%" cellpadding="0" cellspacing="0">
    <tr class="spacingtitle">
      <td align="center" colspan="2">调用代码</td>
    </tr>
    <tr>
      <td class="style1" style="height:220px;"><p> 1、选择在线状态图片风格</p>
        <br />
        <div onmouseover="show(1)">
          <input type="radio" class="radio" value="cho_c1" name="style" id="style1" checked="checked" onclick="show(1)" />
          风格一</div>
        <br />
        <div onmouseover="show(2)">
          <input type="radio" class="radio" value="cho_c2" id="style2" name="style" onclick="show(2)" />
          风格二</div>
        <br />
        <div onmouseover="show(3)">
          <input type="radio" class="radio" value="cho_c3" id="style3" name="style" onclick="show(3)" />
          风格三</div>
        <br />
        <div onmouseover="show(4)">
          <input type="radio" class="radio" value="cho_c4" id="style4" name="style" onclick="show(4)" />
          风格四</div></td>
      <td><div id="cho_c1" class="cho_c"> 在线交谈（固定）<br />
          <img src="../../OnlineService/images/btn_2.gif" alt="在线咨询" /></div>
        <div id="cho_c2" class="cho_c dis" style="display: none"> 在线交谈（浮动）<br />
          <img src="../../OnlineService/images/wp_2.png" alt="在线客服" /></div>
        <div id="cho_c3" class="cho_c dis" style="display: none"> 在线交谈（浮动+弹出）<br />
          <img src="../../OnlineService/images/wp_2.png" alt="在线客服" /><img src="../../OnlineService/images/wp_1.png" alt="在线客服" /></div>
        <div id="cho_c4" class="cho_c dis" style="display: none"> 在线交谈（浮动+弹出）<br />
          <img src="../../OnlineService/images/OnLine.png" alt="在线客服" style="height: 120px" /><img src="../../OnlineService/images/OnLine2.png" alt="在线客服" style="height: 190px; width: 120px" /></div></td>
    </tr>
    <tr>
      <td colspan="2"><p> 2、填写您的文字提示信息</p>
        <div class="cho_s dis" id="cho_s_name" style=" padding-top:5px;"> <span>企业名称：</span>
          <input id="biz_name" type="text" class="text" maxlength="18" value="" />
          例如：逐浪软件</div>
        <div class="cho_wel dis" id="cho_s_wel" style=" padding-top:5px;"> <span>欢迎语：</span>
          <textarea cols="" rows="" id="msg" class="textarea"></textarea>
          例如：您好，请问有什么可以效劳吗？</div>
        <div class="cho_b" style=" padding-top:5px;">
          <input type="button" class="bn" id="getCode" value="生成代码" onclick="return getCode_onclick()" />
        </div></td>
    </tr>
    <tr style="height: 100px" class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="center" colspan="2"><asp:TextBox ID="txtCode" TextMode="MultiLine" Rows="4" Width="600px" runat="server"  CssClass="x_input"></asp:TextBox></td>
    </tr>
  </table>
</form>
</body>
</html>