<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_RegSite_Step1, App_Web_i3ago512" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head>
<title>选择模版</title>
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body { height: 700px; margin: 0 auto; }
li { list-style-type:none; }
a { text-decoration:none; }
.mar { width: 150px; height: 150px; border-width: 1px; border-color: #ccc; margin: 0 auto; }
.div1 { width: 240px; height: 200px; float: left; }
.div2 { margin: 0 auto; text-align: center; font-size: 12px; }
#proc td { background-color: #FFF; }
</style>
<style type="text/css">
TD, P, LI, SELECT, INPUT { font-size: 12px; font-family: "宋体"; }
.td_17 { line-height: 20px; }
.td_16 { line-height: 19px; }
.style7 { color: #666666; }
.STYLE11 { color: #ff3399; font-weight: bold; }
</style>
</head>
<body style="margin-top: 0px; background-color: #e5e5e5;" onload="ShowModel()">
<br />
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" valign="top" bgcolor="e5e5e5"><table width="980" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="10" background="../images/RegSite/peizhi_07.png"></td>
          <td width="960" valign="top"><table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="18" background="../images/RegSite/peizhi_08.png"></td>
              </tr>
            </table>
            <table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="37" bgcolor="#FFFFFF"><ul>
                    <li style="float: right"><a href="<%=ResolveUrl("~/User/logout.aspx") %>" style="width:80px">[退出登录]</a>&nbsp;&nbsp;</li>
                    <li style="float: right">&nbsp;&nbsp;<a href="/" style="width:80px">[进入首页]</a>&nbsp;&nbsp;</li>
                  </ul></td>
              </tr>
            </table>
            <table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr id="proc">
                <td width="234"><img alt="" src="../images/RegSite/peizhi_09.png" width="234" height="42" /></td>
                <td width="158"><img alt="" src="../images/RegSite/peizhi_10_01.png" name="Image2" width="158" height="42" border="0" id="Image2" /></td>
                <td width="158"><img alt="" src="../images/RegSite/peizhi_10_1.png" name="Image3" width="158" height="42" border="0" id="Image3" /></td>
                <td width="157"><img alt="" src="../images/RegSite/peizhi_10_2.png" name="Image4" width="157" height="42" border="0" id="Image4" /></td>
                <td width="253" background="../images/RegSite/peizhi_10_3.png">&nbsp;</td>
              </tr>
            </table>
            <table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td bgcolor="#FFFFFF"><table width="960" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="20" rowspan="4"></td>
                      <td height="20">&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left"><span class="STYLE11">提示：请从下方选择一个模板网站，系统将自动为您创建网站页面并添加测试数据。</span></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
                  <table width="960" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="740" valign="top" id="body1"><div id="app_mshop">
                          <asp:DataList ID="appList" runat="server" RepeatColumns="5" RepeatDirection="Horizontal"
                                                        DataKeyField="ID">
                            <ItemTemplate> <span><a href="/User/Develop/PayPage.aspx?LabelID=<%# DataBinder.Eval(Container.DataItem, "ID") %>">
                              <div style="text-align: center;"> <img alt="<%# DataBinder.Eval(Container.DataItem, "Alias") %>" src="../../<%# DataBinder.Eval(Container.DataItem, "Img") %>" /></div>
                              <div style="text-align: center;"> <%# DataBinder.Eval(Container.DataItem, "Alias") %></div>
                              <div style="text-align: center;"> ￥<%# DataBinder.Eval(Container.DataItem, "Price") %>元</div>
                              </a></span> </ItemTemplate>
                          </asp:DataList>
                        </div></td>
                    </tr>
                  </table>
                  <table width="960" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="20">&nbsp;</td>
                    </tr>
                  </table>
                  <table width="960" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="18" bgcolor="d1d1d1">&nbsp;</td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
          <td width="10" background="../images/RegSite/peizhi_07_0.png"></td>
        </tr>
      </table></td>
  </tr>
</table>
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
                if (strTemp[0] == "ShowModel") {
                    document.getElementById("body1").innerHTML = strTemp[1];
                }
            }
            else //http返回状态失败
            {
                alert("读取模板配置失败，请检查是否将根目录template文件夹Copy至Site/source下！");
            }
        }
        else //请求状态还没有成功，页面等待
        { }
    }
    function tjAjax(url) {
        if (!req) {
            createre();
        }
        req.onreadystatechange = callback; //指定回调函数
        req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.send(null); //
    }
    function ShowModel() {
        tjAjax(window.location.href + "?_dc=" + new Date().getTime() + "&status=ShowModel");
    }
</script>