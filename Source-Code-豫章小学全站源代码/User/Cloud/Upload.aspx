<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_Default, App_Web_4tcoj2v3" stylesheettheme="CloudStyle" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>上传</title>
</head>
<body>
    <form id="form1" runat="server"  style="width:1px;float:left">     
    <div id="root" style="top: 10px; display: none;" onselectstart="javascript:return false;">
        <div id="handle">
            &nbsp;</div>
        <div id="container">
            <div class="info">
                &nbsp;状态:&nbsp;&nbsp;上传中</div>
            <div class="info">
                    &nbsp;文件:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <div class="progressBar">
                <div class="indicator" style="width: 0px">
                </div>
            </div>
            <div class="info">
                &nbsp;速度:&nbsp;&nbsp;</div>
            <div class="info">
                &nbsp;已用时间:&nbsp;&nbsp;</div>
        </div>
        <div class="info">
            &nbsp;<a id="btn_cancel" href="javascript:cancelUpload()">取消</a></div>
    </div>
    &nbsp;
    <input name="file1" type="file" 
        style="height: 22px;" />
    <asp:Button ID="btn_upload" Text="上传" runat="server"
        OnClick="btn_upload_Click" style="z-index: 100; left: 59px; " 
        Width="52px" Height="24px" />
    </form>
</body>
</html>
<script language="javascript" type="text/javascript">	
    var ProgressInfo = Class.create();
    ProgressInfo.prototype = {
        initialize: function (status, percent, file, speed, leftTime, fileCount) {
            this.Status = status;
            this.Percent = percent;
            this.File = file;
            this.Speed = speed;
            this.LeftTime = leftTime;
            this.FileCount = fileCount;
        },
        update: function () {
            if (this.Status == "Error") {
                document.location.href = document.location.href;
            }
            else {
                var html = "<div class=\"info\">&nbsp;状态:&nbsp;&nbsp;" + (this.Status == "Uploading" ? this.Percent + "% 完成" : this.Status) + "</div>";
                html += "<div class=\"info\"><nobr>&nbsp;文件:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + (this.Status == "Completed" ? this.FileCount + " fiel(s) uploaded successfully !" : this.File) + "</nobr></div>";
                html += "&nbsp;<div class=\"progressBar\"><div class=\"indicator\" style=\"width:" + (3 * this.Percent) + "px\"></div></div>";
                html += "<div class=\"info\">&nbsp;速度:&nbsp;&nbsp;" + (this.Status == "Initializing" ? "" : this.Speed) + "</div>";
                html += "<div class=\"info\">&nbsp;剩余时间:&nbsp;&nbsp;" + (this.Status == "Initializing" ? "" : this.LeftTime) + "</div>";
                var container = $("container");
                container.innerHTML = html;
            }
        }
    };
  
    function getProgressInfo() {
        var url = "CloudManage.aspx";
        var pars = "UploadID=<%=UploadID%>&cmd=Update&temp=" + Math.random();
        var myAjax = new Ajax.Request(url, { method: 'get', parameters: pars, onComplete: showResponse });
    }
    function cancelUpload() {
        var url = "CloudManage.aspx";
        var pars = "UploadID=<%=UploadID%>&cmd=Cancel&temp=" + Math.random();
        var myAjax = new Ajax.Request(url, { method: 'get', parameters: pars, onComplete: showResponse });
        this.disabled = true;
    }
    function showResponse(request) {
        eval(request.responseText);
    }
    function showProgressBar() {
        var ipts = document.getElementsByTagName('INPUT');
        var openBar = false;
        for (var i = 0; i < ipts.length; i++) {
            var obj = ipts[i];
            if (obj.type == 'file') {
                if (obj.value != '') {
                    openBar = true;
                    break;
                }
            }
        }
        if (openBar) {
            var theHandle = $("handle");
            var theRoot = $("root");
            Drag.init(theHandle, theRoot);
            theRoot.style.display = "";
            var internalUpdate = new PeriodicalExecuter(getProgressInfo, 1);
        }
    }			
		
    </script>