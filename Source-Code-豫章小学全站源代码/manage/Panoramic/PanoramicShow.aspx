<%@ page language="C#" autoeventwireup="true" inherits="manage_Panoramic_PanoramicShow, App_Web_c4rklp3o" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>三维全景预览</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" media="screen" charset="utf-8" rel="stylesheet" href="/App_Themes/UserThem/user.css" />
<script type="text/javascript" src="../../js/ymPrompt.js"></script>
<script type="text/javascript">
    function runDm(obj) {
        var winname = window.open('', "_blank", '');
        winname.document.open('text/html', 'replace');
        winname.opener = null;
        winname.document.write(obj.value);
        winname.document.close();
    }

    function saveDm(obj) {
        var winname = window.open('', '_blank', 'top=10000');
        winname.document.open('text/html', 'replace');
        winname.document.write(obj.value);
        winname.document.execCommand('saveas', '', 'Zoomla!逐浪CMS实例.html');
        winname.close();
    }

    function copyDm(obj) {
        obj.select();
        js = obj.createTextRange();
        js.execCommand("Copy");
        ymPrompt.succeedInfo({ title: '网页代码站', message: '恭喜您！代码已经被成功复制！' });
    }
</script>
</head>
<body>
<form id="form1" runat="server">
  <div style="margin: 20px auto; width: 600px; height: 400px;">
    <asp:Literal ID="show3d" runat="server"></asp:Literal>
    <div style="margin-top: 10px;">
      <center>
        <a href="PanoramicShow.aspx?id=<%=Request.QueryString["id"] %>" target="_blank">新窗口打开本页</a>
      </center>
      标签调用：
      <textarea name="tb_Dmcontent1" rows="2" cols="20" id="tb_Dmcontent1" class="tb_dm scrollbar" style="height: 20px">{ZL:Panoramic(<%=Request.QueryString["id"] %>,600,500)/}</textarea>
      <div class="user_ac">
        <input type="button" name="btn_action" value="运行代码" class="user_btn" onclick="runDm(tb_Dmcontent1)" />
        <input type="button" name="btn_allselect" value="全选代码" class="user_btn" onclick="tb_Dmcontent1.select()" />
        <input type="button" name="btn_copy" value="复制代码" class="user_btn" onclick="copyDm(tb_Dmcontent1)" />
        <input type="button" name="btn_save" value="保存代码" class="user_btn" onclick="saveDm(tb_Dmcontent1)" />
      </div>
    </div>
    <div style="margin-top: 10px;"> iframe调用：
      <textarea name="tb_Dmcontent" rows="2" cols="20" id="tb_Dmcontent" class="tb_dm scrollbar" style="height: 40px">
&lt;iframe src="<asp:Literal ID="Literal1" runat="server"></asp:Literal>/Panoramic3D/LoadPanoramic.aspx?id=<%=Request.QueryString["id"] %>" width="600" height="500" &gt;&lt;/iframe&gt;
 </textarea>
      <div class="user_ac">
        <input type="button" name="btn_action" value="运行代码" class="user_btn" onclick="runDm(tb_Dmcontent)" />
        <input type="button" name="btn_allselect" value="全选代码" class="user_btn" onclick="tb_Dmcontent.select()" />
        <input type="button" name="btn_copy" value="复制代码" class="user_btn" onclick="copyDm(tb_Dmcontent)" />
        <input type="button" name="btn_save" value="保存代码" class="user_btn" onclick="saveDm(tb_Dmcontent)" />
      </div>
    </div>
  </div>
</form>
</body>
</html>