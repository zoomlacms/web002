<%@ page language="C#" autoeventwireup="true" inherits="ManageSite_Config_Ationupload, App_Web_1uo1gqqt" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>上传文件配置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script type="text/javascript">
    function add(lb,hb, str) {
        var left;
        a = prompt('请输入' + str + '类型，用“，”隔开', "");
        var right = document.getElementById(lb);
        if (a != null) {
            var arr = a.split(',');
            for (var i = 0; i < arr.length; i++) {
                //判断该项是否已经存在
                for (j = 0; j < right.length; j++) {
                    if (right.options[j].value == arr[i]) {
                        return;
                    }
                }
                right.add(new Option(arr[i], arr[i]));
            }
            left = document.getElementById(hb);
            left.value = "";
            for (j = 0; j < right.length; j++) {
                left.value += right.options[j].value+"|";
            } 
        }
    }


    function del(lb,hb) {
        right = document.getElementById(lb);
        for (i = right.length - 1; i >= 0; i--) {
            if (right.options[i].selected) {
                right.remove(i);
            }
        }
        var  left = document.getElementById(hb);
        left.value = "";
        for (j = 0; j < right.length; j++) {
            left.value += right.options[j].value + "|";
        }
        
    }

</script>
</head>
<body>
<form id="myForm" runat="server">
  <div class="column">
    <div class="columntitle"> 当前位置：功能导航 >>上传文件配置</div>
    <table width="100%" align="center" cellpadding="3" cellspacing="3">
      <tr>
        <td align="center" style="width: 200px; background-color: #F0F6FC"><strong>上传文件夹名称：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"  Columns="25" MaxLength="50" ID="UploadDirectoryName" runat="server">zoomla</asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="UploadDirectoryName"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="UploadDirectoryName"  ValidationExpression="[^']+" ErrorMessage="*" Display="Dynamic" /></td>
      </tr>
      <tr>
        <td align="center" style="width: 190px; background-color: #F0F6FC"><strong>上传图片类型：</strong></td>
        <td align="left" style="width: 200px"><asp:ListBox ID="lbImage" runat="server" Height="170px" Width="145px" SelectionMode="Multiple"></asp:ListBox>
          <%--<asp:ListBox ID="lbImage" runat="server" Height="130px" Width="145px" SelectionMode="Multiple">
                    </asp:ListBox>--%>
          <asp:HiddenField ID="hfImage" runat="server" /></td>
        <td align="left"><input id="Button5" type="button" class="button" value="添加图片类型" onclick="add('lbImage','hfImage','图片')" />
          <br />
          <br />
          <input id="Button1" type="button" class="button" value="删除图片类型" onclick="del('lbImage','hfImage')" /></td>
      </tr>
      <tr>
        <td width="190" align="center" style="background-color: #F0F6FC"><strong>上传图片最大大小：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        Columns="10" MaxLength="50" ID="UploadImageTypeMaxSize" runat="server">2</asp:TextBox>
          <asp:DropDownList ID="UploadImageTypeUnit" runat="server">
            <asp:ListItem Value="0" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="1" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="UploadImageTypeMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="UploadImageTypeMaxSize" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="上传图片最大大小必须为整数" runat="server" /></td>
        <td></td>
      </tr>
      <tr>
        <td width="190" align="center" style="background-color: #F0F6FC"><strong>上传媒体类型：</strong></td>
        <td align="left" style="width: 200px"><asp:ListBox ID="lbmedia" runat="server" Height="170px" Width="145px" SelectionMode="Multiple"> </asp:ListBox>
          <asp:HiddenField ID="hfMedia" runat="server" /></td>
        <td align="left"><input id="Button2" type="button" class="button" value="添加媒体类型" onclick="add('lbmedia','hfMedia','媒体')" />
          <br />
          <br />
          <input id="Button6" type="button" class="button" value="删除媒体类型" onclick="del('lbmedia','hfMedia')" /></td>
      </tr>
      <tr>
        <td width="190" align="center" style="background-color: #F0F6FC"><strong>上传媒体最大大小：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';"
                        Columns="10" MaxLength="50" ID="UploadMediaTypeMaxSize" runat="server">5</asp:TextBox>
          <asp:DropDownList ID="UploadMediaTypeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="UploadMediaTypeMaxSize"  ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="UploadMediaTypeMaxSize" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="上传媒体最大大小必须为整数" runat="server" /></td>
        <td></td>
      </tr>
      <tr>
        <td width="190" align="center" style="background-color: #F0F6FC"><strong>上传文件类型：</strong></td>
        <td align="left" style="width: 200px"><asp:ListBox ID="lbfile" runat="server" Height="170px" Width="145px" SelectionMode="Multiple"> </asp:ListBox>
          <asp:HiddenField ID="hfFile" runat="server" /></td>
        <td align="left"><input id="Button3" type="button" class="button" value="添加文件类型" onclick="add('lbfile','hfFile','文件')" />
          <br />
          <br />
          <input id="Button4" type="button" class="button" value="删除文件类型" onclick="del('lbfile','hfFile')" /></td>
      </tr>
      <tr>
        <td width="190" align="center" style="background-color: #F0F6FC"><strong>上传文件最大大小：</strong></td>
        <td align="left"><asp:TextBox class="colorblur" onfocus="this.className='colorfocus';" onblur="this.className='colorblur';" Columns="10" MaxLength="50" ID="UploadFileTypeMaxSize" runat="server">5</asp:TextBox>
          <asp:DropDownList ID="UploadFileTypeUnit" runat="server">
            <asp:ListItem Value="KB" Text="KB" Selected="true"></asp:ListItem>
            <asp:ListItem Value="MB" Text="MB"></asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="UploadFileTypeMaxSize" ErrorMessage="*" Display="Dynamic" runat="server" />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="UploadFileTypeMaxSize" ValidationExpression="\d+" Display="Dynamic" ErrorMessage="上传文件最大大小必须为整数" runat="server" /></td>
        <td></td>
      </tr>
      <!--  <tr>
                <td align="center" style="width: 200px; background-color: #F0F6FC">
                    <strong>上传图片默认宽度：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="iwidth" runat="server"></asp:TextBox>像素&nbsp;&nbsp;设为0时，将以高度为准按比例缩小。
                </td>
            </tr>
            <tr class="tdbg">
                <td align="center" style="width: 200px; background-color: #F0F6FC">
                   <strong> 上传图片默认高度：</strong>
                </td>
                <td align="left">
                    <asp:TextBox ID="iheight" runat="server"></asp:TextBox>像素&nbsp;&nbsp;设为0时，将以宽度为准按比例缩小。都为0时，则为原图大小。
                </td>
            </tr>-->
        <td colspan="2" align="center"><asp:Button class="button" ID="Submit" Text="保 存" runat="server" OnClick="Submit_Click" /></td>
    </table>
  </div>
</form>
</body>
</html>