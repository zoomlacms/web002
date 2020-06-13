<%@ page language="C#" autoeventwireup="true" inherits="Edit_Contents, App_Web_xjtgjvon" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE html>

<html>
<head>
    <title>参考源</title>
    <link href="../App_Themes/UserThem/edit.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="../JS/jquery.js"></script>
</head>
<script type="text/javascript">
    var text = "";

    function getActiveText(e) {
        text = (document.all) ? document.selection.createRange().text : document.getSelection();
        //alert(text)
        if (text == "") {
            $("#move").attr("disabled", "disabled")
        }
        else {
            $("#move").attr("disabled", "")
        }
        document.Contents.text.value = text;
        return true;
    }
    document.onmouseup = getActiveText;
    if (!document.all) document.captureEvents(Event.MOUSEUP);

    function copetxt() {
        parent.copy($("#mytxt").val());

    }
    
    //禁用鼠标
    document.oncontextmenu = function () { return false; }

   
    document.onkeydown = keydown;

    function keydown(e) {
        if (isFirefox = navigator.userAgent.indexOf("Firefox") > 0) {
            //屏蔽ctrl+s +c
            e.preventDefault();
            e.returnValue = false;
        } 
    }

</script>
<body style="overflow-x:hidden" oncontextmenu="window.event.returnValue=false" onkeypress="window.event.returnValue=false" onkeydown="window.event.returnValue=false" onkeyup="window.event.returnValue=false" ondragstart="window.event.returnValue=false">
    <form id="Contents" runat="server">
  <div style="height:680px;">
    <iframe src="/NodePage.aspx?NodeID=78" id="frmlist"  scrolling="no" frameborder="0" style=" width:98%; height:98%; overflow: auto;"></iframe>
       </div>
    </form> 
</body>
</html>
