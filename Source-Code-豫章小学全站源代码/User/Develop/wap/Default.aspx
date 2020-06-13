<%@ page language="C#" autoeventwireup="true" inherits="Wap_index, App_Web_cvz3c3cu" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
<title>手机网站</title>
</head>
<body style="margin:0 auto">
<form name="Form1" method="post" action="" id="Form1">
  <div id="main" style=" border: 2px solid #0000FF; margin:0 auto; margin-top:40px; width:250px;">
      <div style="width:230px; margin:3px 0 0 10px;">
            <div style=" float:left"><img alt="" src="../images/phone/1.png"/></div>
            <div style="float:right"><img alt="" src="../images/phone/2.png"/></div>
      </div>
      <div id="PhoneTxt" style="border: 3px groove #0033CC; height:400px; margin:5px 10px 10px 10px;">
         <div class="title" style=" text-align:center; margin-top:5px;">
             <asp:Label ID="Lab_title" runat="server" Text=""></asp:Label>
             <a href="../Model/siteinfobase.aspx" style="display:block;text-decoration:none;">编辑</a>
             </div>
         <div class="content" style=" margin:10px;">
             <asp:Label ID="Lab_content" runat="server" Text=""></asp:Label></div>
      </div>
  </div>
  <div class="toolBar"></div>
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
        if (req.readyState == 4) {
            if (req.status == 200) //http状态200表示OK
            {
                AjAXflag = true;
                alert(req.responseText);
                var strTemp = req.responseText.split('&');
                if (strTemp[0] == "GetInit") {
                    alert(strTemp[1])
                    document.getElementById("PhoneTxt").innerHTML = strTemp[1];
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
    function GetInit() {
        alert("Wap/Default.aspx?status=GetInit&_dc=" + new Date().getTime());
        tjAjax("Wap/Default.aspx?status=GetInit&_dc=" + new Date().getTime());
    }
</script>