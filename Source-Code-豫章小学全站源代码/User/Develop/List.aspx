<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_List, App_Web_2rhmbn3f" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>页面列表</title>
<script type="text/javascript" src="/JS/jquery.js"></script>
<style type="text/css">
*{margin:0px;padding:0px; font-size:12px;}
.tvNav_2 a{ display:block; width:100%; }
aa{height:21px; line-height:21px;border: #fff solid 1px; }
aa:hover{border: #e5c365 solid 1px; background-color: #ffefbb}
</style>
</head>
<body onload="GetNodeType(0)">
<div id="Menu" style="display:none;">
<select style="width:100%">
<option onclick="GetNodeType(0)" value="0">首页页面</option>
<option onclick="GetNodeType(1)" value="1">普通栏目页面</option>
<option onclick="GetNodeType(2)" value="2">论坛预置页面</option>
</select></div>
<div id="NodeList" style="display:none;"></div>
<form runat="server">
<asp:treeview runat="server" ID="tvNav" ImageSet="XPFileExplorer" NodeIndent="15" ShowLines="True">
    <%--<HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" BackColor="#ffefbb" BorderColor="#e5c365" BorderStyle="Solid" BorderWidth="1px" />--%>
    <NodeStyle Font-Names="Tahoma" Font-Size="12px" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" BorderWidth="1px" BorderColor="#ffffff" Width="100%"/>
    <ParentNodeStyle Font-Bold="False" />
    <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" />
</asp:treeview>
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
            try { req = new ActiveXObject("Msxml2.XMLHTTP"); }
            catch (e) {
                try { req = new ActiveXObject("Microsoft.XMLHTTP"); }
                catch (e) { }
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
                if (strTemp[0] == "GetNodeType") {
                    document.getElementById("NodeList").innerHTML = strTemp[1];
                }
            }
            //http返回状态失败
            else { alert("操作失败！"); }
        }
        else //请求状态还没有成功，页面等待
        {
        }
    }
    function tjAjax(url) {
        if (!req) { createre(); }
        req.onreadystatechange = callback; //指定回调函数
        req.open("get", url, true); //与服务端建立连接(请求方式post或get，地址,true表示异步)
        req.send(null); //
    }
</script>
<script type="text/javascript">
    function Clicked(pObj) {
        //控制栏目选中状态的样式
        $("#NodeList a").css("background", "");
        pObj.style.background = "#ffefbb";
    }
    function GetNodeType(pType) {
        var strUrl = "";
        strUrl += "List.aspx?status=GetNodeType&_dc=" + new Date().getTime() + "&NodeType=" + pType;
        //alert(strUrl)
        tjAjax(strUrl);
    }
</script>
<script type="text/javascript">
    $("#tvNav td:last-child a").hover(
      function () {
          $(this).addClass("hover");
          $(this).css({ "border": "#e5c365 solid 1px", "background-color": "#ffefbb" });
      },
  function () {
      $(this).css({ "height": "21px", "border": "#ffffff solid 1px", "line-height": "21px", "background-color": "" });
      $(this).removeClass("hover");
  }
);
  $("#tvNav td:last-child a").css({ "height": "21px", "border": "#fff solid 1px", "line-height": "21px" });
  //$("#tvNav td:nth-last-child(2) a img").remove();
  //$("#tvNav td:nth-last-child(2) a").setAttribute("disabled", "disabled");
</script>