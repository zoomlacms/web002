<%@ page language="C#" autoeventwireup="true" inherits="User_file, App_Web_551hx03o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>文件下载</title>
    <link href="../App_Themes/UserThem/Default.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $.get('file.aspx?state=tr&time=' + Date() + '&FD=<%= Request.QueryString["FD"] %>', function (date) {
            //            alert(date);
            if (date != "0") {
                parent.$("iframe").eq(2).css({ "width": "400px", "height": "200px" });
                $("#fxurl").text(date);
                $("#fxurl").show();
                $("#ts").show().html("<font color='red'>已分享</font>");
                //                alert($("#Fx").val());
                $("#SeDown").show();
                $("#Fx").hide();
            }
        });

        $("#SeDown").click(function () {
            location = $("#fxurl").val();
        })
        var url;
        $("#SeDown").hide();
        $("#Fx").click(function () {

            $.get("file.aspx?ur=tr&FD=" + $("#hid").val() + "&time=" + Date(), function (da) {
                parent.$("iframe").eq(2).css({ "width": "400px", "height": "200px" });
                $("#fxurl").text(da);
                url = da;
                $("#fxurl").show();
                $("#ts").show();
                $("#SeDown").show();
            })
        })
    })
    function fcu(obj) {
        $(obj).select();
    }
    function Tc() {
        location = "file.aspx?code=" + $("#Fcode").val();
    }
    function aa() {
        window.clipboardData.setData('text', $("#fxurl").text());
        alert('复制成功');
        return false;
    }
  
</script>
</head>
<body onclick="a()">
    <form id="form1" runat="server">
    <%if (Request.QueryString["code"] == null && Request.QueryString["FD"]!=null)
      { %>
    <div id="Cbo" style="height:auto">
   <center>您即将分享[<span style="color:green"><%=Getfile()%></span>]给大众</center>
    <% if (Request.QueryString["T"] == "f")
       { %>
       <br />
    <div >
    <center id="ts" style="display:none;">分享成功</center>
        <textarea id="fxurl" cols="35" runat="server" style="display:none;overflow-y:hidden;overflow:visible;font-size:18px; border:1px solid gray" disabled="disabled" ></textarea>
        <center><br /><input type="button" id="Fx" value="立即分享" />
        <input type="button" id="Button1" value="复制分享地址" onclick="javascript:aa()" />
            <input type="button" id="SeDown"  value="查看下载"/>
        </center></div>
    <%} %>
    </div>
    <input type="hidden" id="hid" runat="server" value="" />
    <%} else  {
          if (Request.QueryString["code"] == "")
          {
          %>
    
        <center><input id="Fcode" onfocus="fcu(this)" type="text"  value="请输入文件提取码" /><br />
            <input type="button" onclick="Tc()" value="提取文件" />
        </center>
    <%}
          else if (Request.QueryString["code"] == null)
          {
              Response.Redirect("/User/login.aspx");
          }
          else
          { %>
          dsafdsf
       <%   }
      } %>
    </form>
</body>
</html>
