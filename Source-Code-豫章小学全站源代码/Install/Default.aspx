<%@ page language="C#" autoeventwireup="true" inherits="Install_Default, App_Web_i4sz3kfo" responseencoding="utf-8" enableviewstatemac="false" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    
<title>欢迎进入Zoomla!逐浪CMS安装向导!</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script src="../JS/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    function ShowProgress() {
        var labelDoingID = document.getElementById("LblCreateDataProgress");
        var labelBeforeID = document.getElementById("LblCreateDataBaseBefore");

        if (labelDoingID != null) {
            labelDoingID.style.visibility = "visible";
        }
        if (labelBeforeID != null) {
            labelBeforeID.innerText = "正在创建数据库。";
        }
    }
    function ifchecked(obj) {
        if (obj.checked) {
            document.getElementById("WzdInstall_StartNextButton").disabled = false;
        }
        if (!obj.checked) {
            document.getElementById("WzdInstall_StartNextButton").disabled = true;
        }
        return false;

    }
    function isSelected(obj) {
        if (obj.checked) {
            document.getElementById("newDatabase").style.display = "block";
            document.getElementById("confirmPassword").style.display = "block";
            document.getElementById("checkedshi").style.height = "150px";
        }
        else {
            document.getElementById("newDatabase").style.display = "none";
            document.getElementById("confirmPassword").style.display = "none";
            document.getElementById("checkedshi").style.height = "";
        }
    }
    function checkid(obj, id) {
        var v = obj.value;
        if (v.length == 0)
            $('#isnull_' + id).show();
        else
            $('#isnull_' + id).hide();
    }
</script>
</head>

<body>
<form id="form2" runat="server"> 
<asp:scriptmanager ID="Scriptmanager1" runat="server"></asp:scriptmanager>
<div class="instop">
<div class="inslogo"><a href="http://www.zoomla.cn/" target="_blank"><img src="/Install/images/logo.jpg" alt="访问逐浪CMS官网" /></a></div>
<iframe src="http://www.zoomla.cn/Search/iSearch.aspx" marginwidth="1" marginheight="1" scrolling="no" border="0" frameborder="0"></iframe>
<ul>
<li><a href="http://www.zoomla.cn/" target="_blank">逐浪官网</a></li>
<li><a href="http://www.zoomla.cn/pub/" target="_blank">最新下载</a></li>
<li><a href="http://help.zoomla.cn/" target="_blank">帮助支持</a></li>
<li><a href="http://www.zoomla.cn/shop/" target="_blank">商业授权</a></li>
<li><a href="http://bbs.zoomla.cn/" target="_blank">技术论坛</a></li>
<li><a href="http://edu.zoomla.cn/" target="_blank">站长学院</a></li>
</ul>
</div>

<asp:Wizard ID="WzdInstall" OnNextButtonClick="WzdInstall_NextButtonClick" OnFinishButtonClick="WzdInstall_FinishButtonClick" runat="server" ActiveStepIndex="0" DisplaySideBar="False" Width="100%">
<WizardSteps><asp:WizardStep ID="WizardStep1" runat="server" Title="Step 1">

<div class="insbox">
<h1>第一步：<strong>阅读许可协议</h1>
<div class="insbox_txt">欢迎您安装Zoomla!逐浪CMS，本向导将引导您安装部署Zoomla!逐浪CMS系统。<br />
 建议您在运行本向导前仔细阅读程序包中的《安装说明》文档，如果您已经阅读过并确认<font color="yellow">非虚拟目录</font>(IIS7集成模式请取消web.config第95行注释)，请点击下一步。</div>
<textarea id="TxtLicense" cols="100" rows="12" runat="server" readonly></textarea>
<div class="lbot">
<asp:Button ID="StartNextButton" runat="server" Enabled="False" CommandName="MoveNext" Text="" class="netxpage" />
<span>
<asp:CheckBox ID="ChlkAgreeLicense"  Onclick="ifchecked(this);"	runat="server" /><label for="ChlkAgreeLicense">我已经阅读并同意此协议</label>
</span>
</div>

<div class="biao" style="margin-top:46px;">
<span style="margin-left:180px; "></span>
</div>

<div class="lstup">
<p>
<span class="lstrong">安装协议</span>
<span>运行环境检测</span>
<span>数据连接</span>
<span>创建数据库</span>
<span>配置网站信息</span>
<span>完成安装</span>
</p>
</div>

</div>
</asp:WizardStep>

<asp:WizardStep ID="WizardStep6" runat="server" Title="Step 2">
<div id="DivInstall6" runat="server">
<div class="insbox">
<h1>第二步:<strong>运行环境检测</strong></h1>
<table cellspacing="0" cellpadding="0" class="ins_table" align="center">
<tr>
    <td><asp:Label ID="Label1" runat="server"></asp:Label></td>
    <td><asp:Image  ID="Image1" runat="server" /></td>
    <td rowspan="4" style="padding:15px;"><div id="lable5" runat="server"></div></td>
    <td rowspan="4" style="padding:15px;"><div id="img5" runat="server"></div></td>
    <td rowspan="4" style="padding:15px;"><div id="lable6" runat="server"></div></td>
    <td rowspan="4" style="padding:15px;"><div id="img6" runat="server"></div></td>
</tr>
<tr>
    <td><asp:Label ID="Label2" runat="server"></asp:Label></td>
    <td><asp:Image  ID="Image2" runat="server" /></td>
</tr>
<tr>
    <td><asp:Label ID="Label3" runat="server"></asp:Label></td>
    <td><asp:Image  ID="Image3" runat="server" /></td>
</tr>
<tr>
    <td><div id="lable4" runat="server"></div></td>
    <td><div id="img4" runat="server" ></div></td>
</tr>
<tr><td id="Td1" colspan="2" runat="server">
<asp:Label ID="lbltip" runat="server" ForeColor="Red"></asp:Label></td></tr>
</table>
<asp:Button ID="Button1" runat="server" CommandName="MoveNext" OnClick="NextButtonStep3_Click"  class="netxpage" Text="" />
<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="MovePrevious" class="previouspage" Text="" OnClick="PreviousButtonStep3_Click" />
<div class="clear"></div>
<div class="biao" style="margin-top:36px;">
<span style="margin-left:300px; "></span>
</div>
<div class="lstup">
<p>
<span>安装协议</span>
<span class="lstrong">运行环境检测</span>
<span>数据连接</span>
<span>创建数据库</span>
<span>配置网站信息</span>
<span>完成安装</span>
</p>
</div>

</div>
</div>
</asp:WizardStep>

<asp:WizardStep ID="WizardStep2" runat="server" Title="Step 3">
<div id="DivInstall2" runat="server">
<div class="insbox">
<h1>第三步:<strong>配置数据库连接</strong></h1>
<div class="insbox_txt" style="padding-left:180px;padding-top:15px; line-height:15px;">请确保目标数据库中没有同名表和存储过程。<br />
</div>
<div id="checkedshi">
<table cellspacing="0" cellpadding="0" class="ins_date" height="290px">
    <tr>
      <td style="height:16px; width:90px;">数据库版本：</td>
        <td>
            <asp:DropDownList ID="DropSqlVersion" runat="server" Width="220px"><asp:ListItem Value="2000">Sql Server 2000</asp:ListItem>
            <asp:ListItem Selected="True" Value="2005">Sql Server 2005及更高版本</asp:ListItem>
            <asp:ListItem Value="Oracle10g">Oracle10g</asp:ListItem>
            </asp:DropDownList>
            <asp:HiddenField ID="HDSql" runat="server" />
      </td>
    </tr>
    <tr style="height:10px;">
    <td></td>
    <td></td>
    </tr>
    <tr>
     <td height="16px">数据源地址：</td>
      <td>
      <asp:TextBox ID="TxtDataSource" runat="server" style="width:220px" Text="(local)"></asp:TextBox>&nbsp;如本地:(local)或远程主机名!&nbsp;<asp:RequiredFieldValidator ID="ValrDataSource" runat="server" ControlToValidate="TxtDataSource" ErrorMessage="数据源不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr style="height:10px;">
    <td></td>
    <td></td>
    </tr>
    
    
    <!--创库begin -->
     <tr>
     <td colspan="2">
     <table id="newDatabase">
    <tr>
        <td colspan="2" class="insp">
        <img src="images/icon.gif" />
    如果您拥有SA权限可以在此直接创建数据库，SA是System Admin全局权限简称，MSSQL2000以上版本默认为禁止登陆模式请开启后进行操作，只有正确填写SA帐号信息才能创建相应的权限。<br />
        </td>
    </tr>

    <tr>
        <td class="insp"  style="display:inline-block;width:40px;" >SA帐号:</td>
        <td>
        <asp:TextBox ID="sqlmanager" name="sqlmanager" runat="server" style="width:220px" Text="sa"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="sqlmanager" ErrorMessage="帐号不能为空!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="insp">密码:</td>
        <td>
        <asp:TextBox ID="sqlmanagerpassword" runat="server" TextMode="Password" style="width:220px" onblur="checkid(this,'sql_managerpassword')"></asp:TextBox>
        <span id='isnull_sql_managerpassword' style="color:#ff0000;display:none">密码不能为空！</span>
        <asp:HiddenField ID="TxtsqlPwd" runat="server" />
        </td>
    </tr>
</table>
     
     </td>
    </tr>
    <!--创库end -->
    
    <tr>
      <td height="16px">数据库名称：</td>
       <td>
        <asp:TextBox ID="TxtDataBase" runat="server" Text="ZoomLa" style="width:220px"></asp:TextBox>&nbsp;
        <asp:CheckBox ID="cbnewDatabase" name="cbnewDatabase" runat="server" onclick="isSelected(this)"/>创建新数据库&nbsp;<%--<br />请确认是否该数据是否存在!--%>&nbsp;
        <asp:RequiredFieldValidator ID="ValrDataBase" runat="server" ControlToValidate="TxtDataBase" ErrorMessage="数据库名称不能为空!"></asp:RequiredFieldValidator>
       </td>
    </tr>
    <tr style="height:10px;">
    <td></td>
    <td></td>
    </tr>
    <tr>
     <td height="16px">数据库用户名：</td>
     <td>
    <asp:TextBox ID="TxtUserID" runat="server" style="width:220px" Text="ZoomLa"></asp:TextBox>&nbsp;有权限访问该数据库的用户名!&nbsp;<asp:RequiredFieldValidator ID="ValrUserID" runat="server" ControlToValidate="TxtUserID" ErrorMessage="数据库用户名称不能为空!"></asp:RequiredFieldValidator>
    </td>
    </tr>
    <tr>
    <td height="16px">数据库口令：</td>
    <td align="left">
<asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" style="width:220px" Text="ZoomLa" class="l_input"></asp:TextBox>
<asp:RequiredFieldValidator ID="ValrPassword" runat="server" ControlToValidate="TxtPassWord" ErrorMessage="数据库用户口令不能为空"></asp:RequiredFieldValidator>
<asp:HiddenField ID="TxtPwd" runat="server" /></td>
    </tr>
    <tr>
        <td colspan="2">
          <div class="center">
           <asp:Label ID="LblCheckConnectString" Visible="False" runat="server" ForeColor="Red">请检查数据库连接字符串设置是否正确或数据库服务器身份验证模式是否SQL Server和Windows混合模式！</asp:Label></div>
        </td>
    </tr>
    
    
    
   

        
</table>
<div class="clear"></div>
<asp:Button ID="NextButtonStep3" runat="server"  class="netxpage" CommandName="MoveNext" OnClick="NextButtonStep3_Click" Text="" />
<asp:Button ID="PreviousButtonStep3" runat="server" CausesValidation="False" class="previouspage" CommandName="MovePrevious" Text="" OnClick="PreviousButtonStep3_Click" />


<div class="clear"></div>


</div>
<div class="clear"></div>
<div class="biao"><span style="margin-left:410px;"></span>
</div>

<div class="lstup">
<p>
<span>安装协议</span>
<span >运行环境检测</span>
<span class="lstrong">数据连接</span>
<span>创建数据库</span>
<span>配置网站信息</span>
<span>完成安装</span>
</p>
</div>
</div>
</div>
</asp:WizardStep>

<asp:WizardStep ID="WizardStep3" runat="server" Title="Step 4">
<div id="DivInstall3" runat="server" class="left140">

<div class="insbox">
<h1>第四步：创建数据库表与存储过程</h1>
<div class="insbox_txt" style="padding-left:180px;">点击“<strong>开始创建</strong>”按钮开始后将创建数据库表单与存储过程，大约需要1～2分钟请耐心等候。</div>
<table cellspacing="0" cellpadding="0" class="ins_biao">
    <tr>
        <td style="height:33px;">
            <label id="LblCreateDataBaseBefore" runat="server" style="visibility: visible;">准备创建中...</label>
        </td>
        <td style="width: 20%;">
            <div class="center">
                <label id="LblCreateDataProgress" runat="server" style="visibility: hidden;">创建中...</label>  
            </div>
        </td>
    </tr>
</table>
<div class="ins_biao">
<asp:CheckBox ID="ChlkIsCreateDataBase" runat="server" AutoPostBack="True" OnCheckedChanged="ChlkIsCreateDataBase_CheckedChanged" />
<label style="color: yellow" for="ChlkIsCreateDataBase">如果数据库已创建好，可跳过这一步。</label>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate> 
<table>
<tr><td height="18px">
<asp:UpdateProgress ID="UpdateProgress1" runat="server">
<ProgressTemplate>
正在创建数据库...&nbsp;
</ProgressTemplate>
</asp:UpdateProgress>
</td></tr>
<tr><td>
<asp:Button ID="BtnCreateDateBase" class="C_input" runat="server" OnClientClick="ShowProgress();" Text="开始创建"  OnClick="BtnCreateDateBase_Click" /> 
</td></tr>
</table>
</ContentTemplate>
</asp:UpdatePanel>
</div>
<div class="clear"></div>
 <asp:Button ID="NextButtonStep4" runat="server" class="C_input"  Text="" CssClass="netxpage" />
 <asp:Button ID="PreviousButtonStep4" runat="server" CausesValidation="False" class="C_input" CommandName="MovePrevious" Text="" CssClass="previouspage" OnClick="PreviousButtonStep4_Click" />
<div class="biao"  style="margin-top:150px;*+margin-top:126px;_margin-top:109px;">
<span style="margin-left:520px; "></span>
</div>

<div class="lstup">
<p>
<span>安装协议</span>
<span>运行环境检测</span>
<span>数据连接</span>
<span class="lstrong">创建数据库</span>
<span>配置网站信息</span>
<span>完成安装</span>
</p>

</div>

</div>
</div>       
</asp:WizardStep>

<asp:WizardStep ID="WizardStep4" runat="server" Title="Step 5"><div id="DivInstall4" runat="server" class="left140">
<div class="insbox">
<h1>第五步：配置网站基本信息</h1>
<div class="insbox_txt" style="padding-left:190px;">您可以在安装好后，于网站后台重新配置网站基本信息及设置。</div>

<table cellspacing="0" cellpadding="0" class="table_date">
   <tr>
        <td style="width:30%">网站名称：</td>
        <td>
            <asp:TextBox ID="TxtSiteName" runat="server" Width="180px" Text="逐浪CMS" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtSiteName" ErrorMessage="网站名称不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">网站标题：</td>
        <td>
            <asp:TextBox ID="TxtSiteTitle" runat="server" Width="180px" Text="逐浪CMS" class="l_input"></asp:TextBox><asp:RequiredFieldValidator  ID="ValrSiteTitle" runat="server" ControlToValidate="TxtSiteTitle" ErrorMessage="网站标题不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="height: 23px">网站地址：</td>
        <td style="height: 23px">
            <asp:TextBox ID="TxtSiteUrl" runat="server" Width="180px" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="ValrSiteUrl" runat="server" ControlToValidate="TxtSiteUrl" ErrorMessage="网站地址不能为空!"></asp:RequiredFieldValidator></td>
    </tr>                                       
    <tr>
        <td>后台管理认证码：</td>
        <td>
            <asp:TextBox ID="TxtSiteManageCode" runat="server" Width="180px" Text="8888" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="ValrSiteManageCode" runat="server" ControlToValidate="TxtSiteManageCode" ErrorMessage="后台管理认证码不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
     <tr>
        <td>E-mail：</td>
        <td>
            <asp:TextBox ID="TxtEmail" runat="server" Width="180px" class="l_input"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email不能为空!" Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email格式不正确" ControlToValidate="TxtEmail" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="height: 15px" colspan="2">
        </td>
    </tr>
    <tr>
        <td>管理员名称：</td>
        <td>
        <asp:TextBox ID="TxtAdminName" runat="server" Width="180px" Enabled="False" class="l_input">admin</asp:TextBox></td>
    </tr>
    <tr>
        <td>管理员密码：</td>
        <td>
        <asp:TextBox ID="TxtAdminPassword" runat="server" Width="180px" TextMode="Password" class="l_input"></asp:TextBox> <asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="TxtAdminPassword"
                                            ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5\@\.]{6,40}$" SetFocusOnError="false"
                                             runat="server" Display="Dynamic" ErrorMessage="管理员密码不能少于六位"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="ValrAdminPassword" runat="server" ControlToValidate="TxtAdminPassword" ErrorMessage="管理员密码不能为空!"></asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td>确认密码：</td>
        <td>
            <asp:TextBox ID="TxtAdminPasswordAgain" runat="server" Width="180px" TextMode="Password" class="l_input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ValrAdminPasswordAgain" runat="server" ControlToValidate="TxtAdminPasswordAgain"
                ErrorMessage="确认密码不能为空!" Display="Dynamic"></asp:RequiredFieldValidator><asp:CompareValidator ID="ValcAdminPasswordAgain" runat="server" ErrorMessage="两次密码不相同" ControlToCompare="TxtAdminPassword" ControlToValidate="TxtAdminPasswordAgain"></asp:CompareValidator></td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
</table>
<asp:Button ID="NextButtonStep5" runat="server" class="C_input" CommandName="MoveNext"  OnClick="NextButtonStep5_Click" Text="" CssClass="netxpage" />
<asp:Button ID="PreviousButtonStep5" runat="server" class="C_input" CausesValidation="False" CommandName="MovePrevious" Text="" CssClass="previouspage" /> 
<div class="center"></div>
<div class="biao" style="margin-top:83px;*margin-top:66px">
<span style="margin-left:640px; "></span>
</div>

<div class="lstup">
<p>
<span>安装协议</span>
<span>运行环境检测</span>
<span>数据连接</span>
<span>创建数据库</span>
<span  class="lstrong">配置网站信息</span>
<span>完成安装</span>
</p>
</div>

</div>
</div> 
</asp:WizardStep>

<asp:WizardStep ID="WizardStep5" runat="server" Title="Step 6"><div id="DivIntallComplete" runat="server" class="left140">
<div class="insbox">
<h1>第六步：恭喜完成安装！</h1>
<div class="insbox_txt" style="padding-left:190px; margin-top:50px;">已经成功安装，<br />
 请点击“<strong>完成安装</strong>”按钮跳转到首页。<br />
<br /><br />
<input id="HdnPassword" type="hidden" visible="False" runat="server" />
<asp:Button ID="PreviousButtonFinish" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="重新配置" />
<input name="Finish" type="button" id="Finish" value="完成安装" onClick="javascript:window.location.href='../Default.aspx'" />
</div>

<div class="center"></div>
<div class="biao" style="margin-top:136px;">
<span style="margin-left:768px; "></span>
</div>

<div class="lstup">
<p>
<span>安装协议</span>
<span>运行环境检测</span>
<span>数据连接</span>
<span>创建数据库</span>
<span>配置网站信息</span>
<span  class="lstrong">完成安装</span>
</p>
</div>

</div>

</div>
</asp:WizardStep>
</WizardSteps>
<StepNavigationTemplate>
<center>
</center>
</StepNavigationTemplate>
<StartNavigationTemplate>

</StartNavigationTemplate>
<FinishNavigationTemplate>

</FinishNavigationTemplate>
</asp:Wizard> 

</form>
<div id="bottom">
 &copy; Copyright 2003-<Script type="text/javascript">
<!--
	var year = "";
	mydate = new Date();
	myyear = mydate.getYear();
	year = (myyear > 200) ? myyear : 1900 + myyear;
	document.write(year); 
--> 
</script>All rights reserved 逐浪软件zoomla.cn版权所有  经营许可证号:工商3601002021063<br />
网警备案号:3601040103  商业订购与技术支持热线：021-50391046/50391047/13177777714<br />
</div>
</body>
</html>