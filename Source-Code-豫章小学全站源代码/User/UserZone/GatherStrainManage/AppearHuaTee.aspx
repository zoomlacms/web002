<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="ZoomLa.GatherStrainManage.AppearHuaTee, App_Web_2fd1wrub" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="../WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc1" %>
<%@ Register Src="WebUserControlGztherLetf.ascx" TagName="WebUserControlGztherLetf" TagPrefix="uc2" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>我的空间</title>
<link rel="stylesheet" type="text/css" href="../../skin/user_main.css" />
<link rel="stylesheet" type="text/css" href="../../skin/user_user.css" />
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
        <div style="margin:auto; width:748px">
    		<div class="us_topinfo">
	  <div class="us_showinfo">
		  您现在的位置：<span id="YourPosition"><span><a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a></span><span> &gt;&gt; </span><span><a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a></span><span> &gt;&gt; </span><span><a title="我的空间" href="/User/Userzone/Default.aspx">我的空间</a></span></span>    
          
	  </div>
		<div class="cleardiv"></div>
                <uc1:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<uc2:WebUserControlGztherLetf ID="WebUserControlGztherLetf2" runat="server" /></div>
<div class="us_topinfo" style="margin-top:10px;"> 
    
        <table width="100%" border="0" cellspacing="0" cellpadding="4">
            <tr>
                <td >
                    <asp:Image ID="imgGSICQ" runat="server"  Width="150px" Height="100px" /></td>
            </tr>
            <tr>
                <td >
                <asp:Label ID="labGSName" runat="server"></asp:Label>
                    &gt;&gt;<a href="CreatHuaTee.aspx?GSID=<%=GSID %>">话题列表</a><hr /></td>
            </tr>
        </table>
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td align="center">
                    <table width="80%" border="0" cellspacing="0" cellpadding="8">
                        <tr>
                            <td colspan="2" align="left">
                                &nbsp; &nbsp;&nbsp;<strong>发表新话题</strong>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                标题：<span style="color: #d01e3b">*</span></td>
                            <td align="left">
                                <asp:TextBox ID="txtHuaTeeTitle" runat="server" MaxLength="25" Width="364px"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator
                                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHuaTeeTitle"
                                    ErrorMessage="请填写话题标题" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="right" valign="top">
                                内容：<span style="color: #d01e3b">*</span></td>
                            <td align="left">
                            <textarea cols="40" rows="5" ID="FreeTextBox1" runat="server"></textarea>
                                
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FreeTextBox1"
                                    ErrorMessage="请填写话题内容" Font-Size="10pt"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                &nbsp;&nbsp;<asp:Button ID="btnOK" runat="server" Text="发表" OnClick="btnOK_Click" />
                                <asp:Button ID="btnCal" runat="server" Text="取消" CausesValidation="False" OnClientClick="return confirm('取消话题内容将不保存，确定要取消吗？');" OnClick="btnCal_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </div>
</form>
</body>
</html>