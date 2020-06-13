<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_Business_Question, App_Web_ldfwx3fz" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8"/> 
<title>表单内容管理</title>
<link type="text/css" rel="stylesheet" href="../Css/global.css" />
 
    <script type="text/javascript">
        function nextStep() {
            var aa = document.getElementById("RequiredFieldValidator1").style.display.toString();
            var bb = document.getElementById("RequiredFieldValidator2").style.display.toString();
            var cc = document.getElementById("RequiredFieldValidator3").style.display.toString();
            var dd = document.getElementById("txtTitle").value;
            var ee = document.getElementById("txtExplain").value;
            var ff = document.getElementById("Email").value;
            if (dd != "" && ee != "" && ff != "") {
                if (aa == "none" && bb == "none" && cc == "none") {
                    document.getElementById("xinxi").style.display = "none";
                    document.getElementById("cont").style.display = "";
                }

            }
            else {
                alert("请填写完整的信息！");
            }
        }
        function quxiao() {
            document.getElementById("cont").style.display = "none";
            document.getElementById("xinxi").style.display = "";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="xinxi" class="Whole">
        <div class="que_top">请填写表单信息</div>
        <div class="que_Content">
            <div class="que_left">
                <img src="../images/tupian.jpg" />&nbsp;
            </div>
            <div class="que_right">
                    <table class="que_table" width="100%" cellpadding="0">
                        <tr>
                            <td width="30%">表单标题：</td>
                            <td><asp:TextBox ID="txtTitle" runat="server" Width="150px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" Display="Dynamic" ErrorMessage="*">标题不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>表单说明：</td>
                            <td><asp:TextBox ID="txtExplain" runat="server" Width="150px" Height="50px"  TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtExplain" Display="Dynamic" ErrorMessage="*">说明不能为空</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>提交成功后提示文字：</td>
                            <td><asp:TextBox ID="txtTips" runat="server" Width="150px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>接收结果的邮箱：</td>
                            <td><asp:TextBox ID="Email" runat="server" Width="150px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="*">邮箱不能为空</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">输入格式错误</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="3">访客提交表单设置：</td>
                            <td>         
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="FormsSet" 
                                Text="需填写Email，一个Email只能使用一次"  value="1" /> 
                        
                     </td>
                        </tr>
                         <tr><td><asp:RadioButton ID="RadioButton2" runat="server"  GroupName="FormsSet" 
                                Text="需填写Email，一个Email可以使用多次"  value="2"/> 
                        </td></tr>
                        <tr><td> <asp:RadioButton ID="RadioButton3" runat="server"  GroupName="FormsSet" 
                                Text="无需填写Email"  value="3"/> </td></tr>
                       <tr>
                            <td>表单权限设置：</td>
                            <td><asp:CheckBox ID="chbPermissions" runat="server" Text="仅登录会员可填" /></td>
                        </tr>
                    </table>
            </div>
        </div>
       <div class="que_down">
           <asp:Button ID="Button4" runat="server" Text="下一步"  OnClientClick="nextStep(); return false" />&nbsp;&nbsp;<input id="Button2" type="button" value="取消" onclick="location.href='../busiDefault.html'" />
    </div>
    <div style=""></div>
    </div>

     <div id="cont" style=" display:none">
     <div class="Whole">
        <div class="que_top">选择表单内容</div>
        <div class="que_Content">
            <div class="que_left_1" style="width: 300px; height: 300px; overflow: auto;">
               <ul>
                    <li class="quekong"><asp:RadioButton ID="RadioButton4" runat="server" GroupName="fname"  value="1" /><span>空白表单 </span> </li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton5" runat="server" GroupName="fname"  value="2" /><span>询价单</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton6" runat="server" GroupName="fname"  value="3" /><span>客户反馈</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton7" runat="server" GroupName="fname"  value="4" /><span>酒店客房预订单</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton8" runat="server" GroupName="fname"  value="5" /><span>网站用户调查问卷</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton9" runat="server" GroupName="fname"  value="6" /><span>市场调查问卷</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton10" runat="server" GroupName="fname"  value="7" /><span>会员登记表</span></li>
                    <li class="queopt"><asp:RadioButton ID="RadioButton11" runat="server" GroupName="fname" value="8" /><span>广告词和海报征集</span></li>
               </ul>
            </div>
            <div class="que_right">
            </div>
        </div>
         <div class="que_down">
            <asp:Button ID="Button3" runat="server" Text="提交" onclick="Button3_Click"  />&nbsp;&nbsp;<input id="Button1" type="button" value="取消" onclick="quxiao()"  />
    </div>
    </div>

    </div>
    </form>
</body>
</html>
