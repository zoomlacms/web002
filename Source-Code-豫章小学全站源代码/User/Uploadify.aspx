<%@ page language="C#" autoeventwireup="true" inherits="Uploadify, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<title>swfFileUpload</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<link href="Cloud/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="Cloud/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="Cloud/jquery.uploadify.v2.1.4.min.js"></script>
<script type="text/javascript" src="Cloud/swfobject.js"></script>
<style type="text/css">
body{ background:#e8f5ff;}
.uploadifyQueue { border: 1px solid #ccc; width: 340px; height: 100px; overflow: auto; overflow-x: hidden; }
</style>
<script type="text/javascript">

var strDir = "/Print/Templates/-Images"; //文件保存路径
var maxFileSize = 1024 * <%=MaxSize %>; //文件最大限制1G 因为配置的单位是kb 这里的单位是b
$(document).ready(function () {
    $("#uploadify").uploadify({
        'uploader':'uploadify.swf',
        'script': 'UploadHandler.ashx?Dir=<%=Server.UrlEncode(dir) %>', //引用Handler
        'buttonImg': 'select.gif', //选择文件按钮
        'cancelImg': 'cancel.gif', //取消上传按钮
        'width': 60, //按钮宽度
        'height': 32, //按钮高度
        'wmode': 'transparent', //使浏览按钮的flash背景文件透明
        'folder': strDir, //上传路径
        'auto': false, //是否自动上传
        'multi': true, //是否多文件上传
        //'fileExt': '*.jpg;*.jpeg;*.gif;*.png;*.bmp;*.doc;*.docx;*.xls;*.xlsx;*.ppt;*.pptx;*.pdf;*.rar;*.zip',
        //'fileDesc': '*.jpg;*.jpeg;*.gif;*.png;*.bmp;*.doc;*.docx;*.xls;*.xlsx;*.ppt;*.pptx;*.pdf;*.rar;*.zip',
        'fileExt': '<%=type %>',
        'fileDesc': '<%=type %>',
        'sizeLimit': maxFileSize,
        'simUploadLimit': 1, //同时上传文件数
        'onSelect': function (e, queueId, fileObj) {
            if (fileObj.size > maxFileSize) {
                alert("你所选择的文件大小超过限制！");
            }
        }
    });
});
</script>
</head>
<body>
<div id="basic-demo" style="float: left; width: 360px;">
  <div style="margin: 0 auto;">
    <div id="fileQueue"></div>
    <input type="file" name="uploadify" id="uploadify" />
  </div>
  <input type="hidden" id="IsUpFile" />
</div>
<p style="float: left;">
  <input type="button" value="上传" class="C_input" onclick="javascript:$('#uploadify').uploadifyUpload();" />
 <%-- <br />
  <br />
  <input type="button" value="取消" class="C_input" onclick="javascript:$('#uploadify').uploadifyClearQueue();" />--%>
</p>
</body>
</html>
<script type="text/javascript">
    function SwfFileUpload(path) {
//        $.ajax({
//            type: "POST",
//            url: "Uploadify.aspx",
//            data: "action=add",
//            success: function (msg) {
//                alert("Data Saved: " + msg);
//            }
//        });
        window.parent.frames['main_right'].location.reload();
    }
</script>