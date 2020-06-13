<%@ page language="C#" autoeventwireup="true" inherits="upload, App_Web_vevnwosu" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
    <title>上传</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/interface.js"></script>
    <style type="text/css">
        *{ margin:0; padding:0; }
        
    </style>
    <script type="text/javascript">
        
	    var uploadSelect = function(el){
		    el.fadeOut("show");		
		    parent.uploading(document.getElementById("<%=file1.ClientID %>").value);
		    $("#<%=frmUpload.ClientID %>").submit();
	    };
 	    
    </script>
</head>
<body>
    <form runat="server" id="frmUpload" method="post" enctype="multipart/form-data">
        <input type="file" runat="server" id="file1" size="20" onchange="uploadSelect($(this));" />	    
    </form>
</body>
</html>
