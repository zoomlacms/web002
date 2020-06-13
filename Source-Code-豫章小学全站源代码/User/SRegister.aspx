<%@ page language="C#" autoeventwireup="true" inherits="ZoomLa.WebSite.User.User_Registers, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head>
<title>注册会员</title>
<link href="../App_Themes/UserThem/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="form1" runat="server">
<script type="text/javascript" src="/js/RiQi.js"></script> 
<div id="main" class="reg">


    <div class="s_bright">
      <div class="rg_inout">
        <asp:Literal ID="LitControlTreeInfo" runat="server"></asp:Literal>
        <asp:Panel ID="PnlRegStep0" runat="server" Visible="false" Width="100%">
          未开放注册，请和网站管理员联系！
          </asp:Panel>
        <asp:Panel ID="PnlRegStep1" runat="server" Visible="false" Width="100%">
          <h21> 第一步：服务条款和声明<img src="/user/images/regl1.gif" /></h1>
          <textarea name="textarea" cols="20" rows="2" readonly="readonly" style="font-weight: normal; font-size: 9pt; width: 98%; line-height: normal; font-style: normal; height: 310px; font-variant: normal"><asp:Literal ID="LitProtocol" runat="server"></asp:Literal>
			  </textarea>
          <ul>
            <li></li>
            <li style="width: 100%; text-align: center;">
              <div style="text-align: center">
                <asp:Button ID="BtnRegStep1" runat="server" Text="同意" OnClick="BtnRegStep1_Click" />
                <asp:Button ID="BtnRegStep1NotApprove" runat="server" Text="不同意" OnClick="BtnRegStep1NotApprove_Click" />
              </div>
            </li>
          </ul>
          <div class="cleardiv"> </div>
          <!--第二轮开始 --> 
          
          <script type="text/javascript" language="javascript">	
                <!--
                        var secs = 9;
                        var wait = secs * 1000;
                        var btnId = "<%= BtnRegStep1.ClientID %>";
                        document.getElementById(btnId).value = "我同意 [" + secs + "]";
                        document.getElementById(btnId).disabled = true;
                        for (i = 1; i <= secs; i++) {
                            window.setTimeout("Update(" + i + ")", i * 1000);
                        }
                        window.setTimeout("Timer()", wait);

                        function Update(num) {
                            if (num != secs) {
                                printnr = (wait / 1000) - num;
                                document.getElementById(btnId).value = "我同意 [" + printnr + "]";
                            }
                        }

                        function Timer() {
                            document.getElementById(btnId).disabled = false;
                            document.getElementById(btnId).value = " 我同意 ";
                        }
                    
                    
                //-->
                    </script>
          </asp:Panel>
        <asp:Panel ID="PnlRegStep2" runat="server" Visible="false" Width="100%">
          <script type="text/javascript" language="javascript">
                    function CheckUser()
                    {
                        var userName = document.getElementById("<%= TxtUserName.ClientID %>");
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");                        
                        if(userName.value=="")
                        {
                            checkUserNameMessage.innerHTML = "用户名为空";
                            checkUserNameMessage.className = "d_err";
                        }
                        else
                        {
                            CallTheServer(userName.value,"");
                        }
                    }
                    
                    function CallTheServer(arg,context)
                    {
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
                        checkUserNameMessage.className = "";
                        checkUserNameMessage.innerHTML = "<img src=\"images/loading.gif\" align=\"absmiddle\" />";                        
                        <%= CallBackReference %>
                    }
                    
                    function ReceiveServerData(result)
                    {
                        var checkUserNameMessage = document.getElementById("CheckUserNameMessage");
                        if(result == "true")
                        {
                            checkUserNameMessage.innerHTML = "用户名已经被注册了";
                            checkUserNameMessage.className = "d_err";
                        }
                        if(result == "disabled")
                        {
                            checkUserNameMessage.innerHTML = "该用户名禁止注册";
                            checkUserNameMessage.className = "d_err";
                        }
                        if(result == "false")
                        {
                            checkUserNameMessage.innerHTML = "恭喜您，用户名可以使用！";
                            checkUserNameMessage.className = "d_ok";
                        }
                    }
                    
                    function SwicthSelectFill()
                    {

                    }

                    
//                    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(EndRequestHandler);
                    function EndRequestHandler(sender, args)
                    {
                        if (args.get_error() != undefined){
                        alert("检测到表单中存在HTML代码！");
                        args.set_errorHandled(true);
                        }
                    }
                    </script>
          <h1> 第二步：填写会员信息<img src="/user/images/regl2.gif" /></h1>
          <div id="reg" style="width: 90%; height: auto">
            <table id="TableRegisterMust" runat="server" style="border-collapse: collapse" cellspacing="1" cellpadding="2" width="100%" border="0">
              <tr>
                <td class="tdbgleft" style="width: 15%"><b>真实姓名：</b></td>
                <td valign="middle" style="width: 221px"><asp:TextBox ID="TxtUserName" class="input1" runat="server" onmouseup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
                                        onkeydown="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onmouseout="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"
                                        onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onblur="value=value.replace(/[^\u4E00-\u9FA5]/g,'')"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="ReqTxtUserName" runat="server" ControlToValidate="TxtUserName"
                                        SetFocusOnError="false" ErrorMessage="用户名不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="ValgTextMaxLength" ControlToValidate="TxtUserName"
                                        ValidationExpression="^[a-zA-Z0-9_\u4e00-\u9fa5]{2,4}$" SetFocusOnError="false"
                                        Display="None" runat="server"></asp:RegularExpressionValidator>
                  <font color=red>*</font></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"></td>
                <td valign="middle" style="width: 85%"><input id="CheckUserName" style="float: left; width:140px;" type="button" value="检查真实姓名是否可用" onclick="CheckUser()" />
                  <span
                                        class="d_default" id="CheckUserNameMessage"></span></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><b>密码：</b></td>
                <td valign="middle" style="width: 221px"><asp:TextBox ID="TxtPassword" class="input1" TextMode="Password" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" runat="server"
                                        ControlToValidate="TxtPassword" ValidationExpression="[\S]{6,}" 
                                        ErrorMessage="密码至少6位" Display="Dynamic"></asp:RegularExpressionValidator>
                  <asp:RequiredFieldValidator ID="ReqTxtPassword" runat="server" ControlToValidate="TxtPassword"
                                        SetFocusOnError="false" ErrorMessage="密码不能为空" Display="Dynamic"></asp:RequiredFieldValidator>
                  <font color=red>*</font></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><strong>确认密码：</strong></td>
                <td style="width: 221px"><asp:TextBox ID="TxtPwdConfirm" class="input1" TextMode="Password" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="ReqTxtPwdConfirm" runat="server" ControlToValidate="TxtPwdConfirm"
                                        SetFocusOnError="false" Display="Dynamic" ErrorMessage="确认密码不能为空"></asp:RequiredFieldValidator>
                  <asp:CompareValidator
                                            ID="ValCompPassword" runat="server" ControlToValidate="TxtPwdConfirm" ControlToCompare="TxtPassword"
                                            Operator="Equal" SetFocusOnError="false" ErrorMessage="两次密码输入不一致" Display="Dynamic"></asp:CompareValidator>
                  <font color=red>*</font></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><strong>防注册机问题：</strong></td>
                <td style="width: 221px"><asp:Label ID="regtxt" runat="server" Text=""></asp:Label>
                  <asp:TextBox ID="regnum" class="input1" runat="server" Width="67px"></asp:TextBox>
                  <asp:TextBox ID="hidnum" class="input1" runat="server" Width="67px" style="display:none"></asp:TextBox>
                  防止注册机注册请将答案
                  <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                  输入输入框
                  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="regnum" ControlToValidate="hidnum" 
                                        ErrorMessage="防注册机问题答案错误！请输入正确答案"></asp:CompareValidator></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><strong>密码问题：</strong></td>
                <td style="width: 221px"><asp:TextBox ID="TxtQuestion" class="input1" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><strong>问题答案：</strong><br /></td>
                <td style="width: 221px"><asp:TextBox ID="TxtAnswer" class="input1" runat="server"></asp:TextBox></td>
              </tr>
              <tr>
                <td class="tdbgleft" style="width: 15%"><strong>电子邮件：</strong></td>
                <td style="width: 221px"><asp:TextBox ID="TxtEmail" class="input1" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail"
                                        ErrorMessage="邮件地址不规范" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator></td>
              </tr>
              <tr id="tr2">
                <td style="width: 15%" class="tdbgleft"><b>目前住址：</b></td>
                <td><asp:TextBox ID="TxtAddress" runat="server" class="input1"></asp:TextBox></td>
              </tr>
              <tr id="tr3">
                <td style="width: 15%" class="tdbgleft"><b>固定电话：</b></td>
                <td><asp:TextBox ID="TxtOfficePhone" runat="server" class="input1"></asp:TextBox></td>
              </tr>
              <tr id="trMobile">
                <td style="width: 15%" class="tdbgleft"><b>手机号码：</b></td>
                <td><asp:TextBox ID="TxtMobile" runat="server" class="input1"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="手手机号码不能为空" ControlToValidate="TxtMobile" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ControlToValidate="TxtMobile" ErrorMessage="手机号码格式不正确" 
                                        ValidationExpression="1[3,5]{1}[0-9]{1}[0-9]{8}|01[3,5]{1}[0-9]{1}[0-9]{8}" Display="Dynamic"></asp:RegularExpressionValidator>
                  <font color=red>*</font></td>
              </tr>
              <tr id="trIDCard">
                <td style="width: 15%" class="tdbgleft"><b>身份证号码：</b></td>
                <td><asp:TextBox ID="TxtIDCard" runat="server" class="input1"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="身份证号码不能为空" ControlToValidate="TxtIDCard" Display="Dynamic"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ErrorMessage="身份证号码格式不规范" 
                                        ValidationExpression="\d{18}|\d{15}|\d{17}[a-zA-Z]" ControlToValidate="TxtIDCard" 
                                        Display="Dynamic"></asp:RegularExpressionValidator>
                  <font color=red>*</font></td>
              </tr>
              <tr id="usergroupss" runat="server">
                <td style="width: 15%" class="tdbgleft"><strong>用户类型：</strong></td>
                <td><asp:RadioButtonList ID="UserGroup" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="UserGroup_SelectedIndexChanged"
                                        RepeatColumns="4" AutoPostBack="True"> </asp:RadioButtonList></td>
              </tr>
              <tr id="Tr1" runat="server">
                <td class="tdbgleft" colspan="2"><table id="DivCompany" runat="server" style="border-collapse: collapse; display: none"
                                        cellspacing="1" cellpadding="2" width="100%" border="0">
                    <tr>
                      <td style="width: 15%" class="tdbgleft"><strong>企业名称：</strong></td>
                      <td><asp:TextBox ID="txtCompanyName" class="input1" runat="server">未填写企业名</asp:TextBox>
                        <asp:RequiredFieldValidator
                                                    ID="RFCompanyName" runat="server" ErrorMessage="请输入企业名称" ControlToValidate="txtCompanyName"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                      <td style="width: 15%" class="tdbgleft"><strong>企业简介：</strong></td>
                      <td><asp:TextBox ID="txtCompanyDescribe" class="input1" runat="server" TextMode="MultiLine"
                                                    Height="60"></asp:TextBox></td>
                    </tr>
                  </table></td>
              </tr>
            </table>
            <table style="border-collapse: collapse" cellspacing="1" cellpadding="2" width="100%"
                            border="0">
              <tr id="trVcodeRegister" runat="server" visible="false">
                <td style="width: 15%" class="tdbgleft"><b>验 证 码：</b></td>
                <td style="width: 221px"><asp:TextBox ID="TxtValidateCode" class="input1" MaxLength="6" runat="server" onfocus="this.select();"></asp:TextBox>
                  <asp:Image ID="Image1" runat="server" ImageUrl="~/Common/ValidateCode.aspx"
                        Height="20px" ToolTip ="点击刷新验证码" style="cursor:pointer;border:0;vertical-align:middle;" onclick="this.src='../Common/ValidateCode.aspx?t='+Math.random()" /></td>
              </tr>
            </table>
            <table style="border-collapse: collapse" cellspacing="1" cellpadding="2" width="100%"
                            border="0">
              <tr class="tdbgleft" style="width: 15%" align="center">
                <td style="height: 30px;"><span style="color: #ff0000">以上所有信息除选填项都必须先正确填写后才能成功注册。</span></td>
              </tr>
              <tr class="tdbgleft" style="width: 15%" align="center">
                <td style="height: 30px;"><asp:Button ID="BtnSubmit" runat="server" Text="提交" OnClick="BtnSubmit_Click" />
                  <input id="Reset" type="reset" value=" 重新填写 " name="Reset" />
                  <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
                                        ShowSummary="False" /></td>
              </tr>
            </table>
          </div>
          </asp:Panel>
        <asp:Panel ID="PnlStep3" runat="server" Visible="false" Width="100%">
          <h1> 注册会员</h1>
          <h2> 第三步：注册结果<img src="/user/images/regl3.gif" width="242" height="14" alt="" /></h2>
          <asp:Literal ID="LitRegResult" runat="server"></asp:Literal>
          </asp:Panel>
      </div>
    </div>
    <!-- 右边结束 --> 
  </div>
  <div class="cleardiv"> </div>
</form>
</body>
</html>