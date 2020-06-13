<%@ page language="C#" autoeventwireup="true" inherits="SelNum_index, App_Web_axekkmnr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上自主编排号牌号码系统</title>
<link href="/Skin/scss.css" rel="stylesheet" type="text/css" />
</head>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/checkSelNum.js" type="text/javascript"></script>
<script>  
        function checko() {
            return true;
            var reg = /[\u4E00-\u9FA5]/gi;

            var TextBox1 = document.Login.TextBox1.value;
            var TextBox2 = document.Login.TextBox2.value.toUpperCase();
            var TextBox3 = document.Login.TextBox3.value;
            var TextBox33 = document.Login.TextBox3;
            var TextBox4 = document.Login.TextBox4.value;
            var DropDownList1 = document.Login.DropDownList1.value;
          
            if (TextBox1 == null || TextBox1 == "") {
                alert("姓名或单位名称不能为空！");
                document.Login.TextBox1.focus();
                return false;
            }
            if (DropDownList1 == null || DropDownList1 == "0") {
                alert("请选择身份证明名称！");
                document.Login.DropDownList1.focus();
                return false;
            }
            
            if (TextBox2 == null || TextBox2 == "") {
                alert("身份证明号码不能为空！");
                document.Login.TextBox2.focus();
                return false;
            }
            if (DropDownList1 == "1") {
                if (checkIdcard(TextBox2) != "验证通过!") {
                    alert(checkIdcard(TextBox2));
                    return false;
                }
            }
            if (DropDownList1 == "2") {
                if (TextBox2.length != 10) {
                    alert("身份证明号码输入有误！");
                    return false;
                }
                if (checkStr(TextBox2) != "验证通过!") {
                    alert(checkStr(TextBox2));
                    return false;
                }

            }

            //车辆识别号验证
            if (TextBox3 == null || TextBox3 == "") {
                alert("车辆识别代号不能为空！");
                return false;
            }
            if (TextBox4 == null || TextBox4 == "") {
                alert("发票号不能为空！");
                return false;
            }
           
            //验证发票号长度
            if (TextBox4.length != 8 || isNaN(TextBox4)) {
                alert("发票号输入有误！");
                return false;
            }
            if (chech_clshdh_Jyw(TextBox33) == 0) {
                return false;
            }

            if (!reg.test(TextBox1)) {
                alert("车主姓名/单位名称只能输入中文！");
                return false;
            }
            //身份证验证
            return true;
        } 
        function checkthree() {
            var TextBox13 = document.Login.TextBox13.value;

            if (TextBox13 == null || TextBox13 == "") {
                alert("日期不能为空！");
                document.Login.TextBox13.focus();
                return false;
            }
        }
        function checkTwo() {
            var TextBox8 = document.Login.TextBox8.value;
            var TextBox16 = document.Login.TextBox16.value;
            var TextBox17 = document.Login.TextBox17.value;
            var TextBox18 = document.Login.TextBox18.value;
            var TextBox19 = document.Login.TextBox19.value;
            var DropDownList1 = document.Login.DropDownList1.value;

            if (TextBox8 == null || TextBox8 == "") {
                alert("固定电话不能为空！");
                document.Login.TextBox8.focus();
                return false;
            }
            if (TextBox16 == null || TextBox16 == "") {
                alert("移动电话不能为空！");
                document.Login.TextBox16.focus();
                return false;
            }
            if (TextBox17 == null || TextBox17 == "") {
                alert("住所地址不能为空！");
                document.Login.TextBox17.focus();
                return false;
            }
            if (TextBox18 == null || TextBox18 == "") {
                alert("邮寄地址不能为空！");
                document.Login.TextBox18.focus();
                return false;
            }
            if (TextBox19 == null || TextBox19 == "") {
                alert("邮政编码不能为空！");
                document.Login.TextBox19.focus();
                return false;
            }
            if (TextBox19.length != 6) {
                alert("邮政编码长度不对！");
                document.Login.TextBox19.focus();
                return false;
            }
        }
 
</script>

<body>
 <form id="Login" runat="server" >
<div id="mainTop">
<div style="position:absolute; top: 117px; left: 50px;"><asp:Label ID="Label1" runat="server" Text="身份验证"></asp:Label></div>
</div>
<div id="mainMid">
<br />
    <asp:Panel ID="Panel1" runat="server" >
    <p style=" text-align:center; font-size:16px; font-weight:600">身份验证</p>
<div style=" width:450px; margin-left:auto; margin-right:auto; line-height:22px; color:Red; border:1px red dotted; padding:5px;">
　　请机动车所有人认真填写验证信息，确保验证信息填写准确，否则互联网所选号码无效。
　　<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机动车所有人为个人的请按照身份证信息录入，机动车所有人为单位的请按照组织机构代码证书录入。
</div>
<br />
<div>
  <table width="60%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_back">
       <tr height="25">
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">姓名或单位名称</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="244px" ></asp:TextBox></td>
        </tr>
        <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">身份证明名称</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD" >&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="240px" >
                <asp:ListItem Value="0">请选择...</asp:ListItem>
                <asp:ListItem Value="1">A:居民身份证</asp:ListItem>
                <asp:ListItem Value="2">B:组织机构代码证书</asp:ListItem>
            </asp:DropDownList>
       </td>
        </tr>
      <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">身份证明号码</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
        
          <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
          </td>
        </tr>
      <tr height="25">
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">车辆识别代号</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; <asp:TextBox ID="TextBox3" 
                runat="server" Width="170px"></asp:TextBox>&nbsp;</td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">发票号码</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; <asp:TextBox ID="TextBox4" 
                runat="server" Width="168px"></asp:TextBox>&nbsp;</td>
      </tr>
      
    </table>
    </div>
<div style="text-align:center; padding-top:5px;"> <asp:Image ID="VcodeLogin" runat="server" ImageUrl="/Common/ValidateCode.aspx"
                        Height="20px" />
                    <asp:TextBox ID="TxtValidateCode" runat="server"  Style="width: 52px;"
                        TabIndex="4"></asp:TextBox></div>
                        <div style="text-align:center; padding-top:5px;"> 
                            <asp:Button ID="Button1" runat="server" Text="下一步" OnClientClick="return checko()" onclick="Button1_Click"  />
                        
                        </div>
    </asp:Panel>
 <asp:Panel ID="Panel2" runat="server" Visible="false" >
   <p style=" text-align:center; font-size:16px; font-weight:600">机动车所有人信息录入</p>

  <table width="60%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_back">
       <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">车主姓名或单位名称</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="244px" ></asp:TextBox></td>
        </tr>
        <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">身份证明号码</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD" >&nbsp;
            <asp:TextBox ID="TextBox15" runat="server" TextMode="Password" Width="239px" Text="aaaaaaaa" ></asp:TextBox>
       </td>
        </tr>
      <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">确认身份证明号码</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
        
          <asp:TextBox ID="TextBox6" runat="server" Width="239px"></asp:TextBox>
          </td>
        </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">居住暂住证号码</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; 
            <asp:TextBox ID="TextBox7" 
                runat="server" Width="170px" style="margin-bottom: 0px"></asp:TextBox>&nbsp;</td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">固定电话</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; <asp:TextBox ID="TextBox8" 
                runat="server" Width="168px"></asp:TextBox>&nbsp;</td>
      </tr>
       <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">移动电话</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; <asp:TextBox ID="TextBox16" 
                runat="server" Width="168px"></asp:TextBox>&nbsp;</td>
      </tr>
       <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">住所地址</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; 
            <asp:TextBox ID="TextBox17" 
                runat="server" Width="227px" Height="55px" TextMode="MultiLine"></asp:TextBox>&nbsp;</td>
      </tr>
       <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">邮寄地址</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; 
            <asp:TextBox ID="TextBox18" 
                runat="server" Width="226px" Height="45px" TextMode="MultiLine"></asp:TextBox>&nbsp;</td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">邮政编码</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; 
            <asp:TextBox ID="TextBox19" 
                runat="server" Width="226px" ></asp:TextBox>&nbsp;</td>
      </tr>
      
    </table>
<div style="text-align:center; padding-top:5px;"> <asp:Image ID="Image1" runat="server" ImageUrl="/Common/ValidateCode.aspx"
                        Height="20px" />
                    <asp:TextBox ID="TextBox9" runat="server"  Style="width: 52px;"
                        TabIndex="4"></asp:TextBox></div>
                        <div style="text-align:center; padding-top:5px;"> 
                             <asp:Button ID="Button4" runat="server" Text="上一步" onclick="Button4_Click"  />&nbsp;<asp:Button 
                                 ID="Button2" runat="server" Text="下一步" onclick="Button2_Click"  OnClientClick="return checkTwo()" />
                        
                        </div>
 </asp:Panel>
<asp:Panel ID="Panel3" runat="server" Visible="false" >
   <p style=" text-align:center; font-size:16px; font-weight:600">机动车信息录入</p>

<br />
  <table width="60%" border="0" align="center" cellpadding="1" cellspacing="1" class="table_back">
       <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">车辆识别代号</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
            <asp:TextBox ID="TextBox10" runat="server" Width="167px" TextMode="Password" ></asp:TextBox>
            </td>
        </tr>
        <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">确认车辆识别代号</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD" >&nbsp;
            <asp:TextBox ID="TextBox20" runat="server" Width="244px"></asp:TextBox>
       </td>
        </tr>
      <tr>
        <td width="40%" height="25" bgcolor="#FFFFFF" class="tableheader1">发票号</td>
        <td width="60%" height="25" align="left" bgcolor="#F1F9FD">&nbsp;
        
          <asp:TextBox ID="TextBox11" runat="server" Width="168px" TextMode="Password"></asp:TextBox>
          </td>
        </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">确认发票号</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; 
            <asp:TextBox ID="TextBox12" 
                runat="server" Width="244px"></asp:TextBox>&nbsp;</td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">开票日期</td>
        <td height="25" align="left" bgcolor="#F1F9FD">&nbsp; <asp:TextBox ID="TextBox13" 
                runat="server" Width="168px" onclick="setday(this);" ></asp:TextBox>&nbsp;</td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF" class="tableheader1">是否属于海关进口车辆</td>
        <td height="25" align="left" bgcolor="#F1F9FD"><asp:RadioButtonList 
                ID="RadioButtonList1" runat="server" RepeatColumns="2">
            <asp:ListItem Value="1">是</asp:ListItem>
            <asp:ListItem Value="0" Selected="True">否</asp:ListItem>
            </asp:RadioButtonList>
          </td>
      </tr>
    </table>
<div style="text-align:center; padding-top:5px;">
<asp:Image ID="Image2" runat="server" ImageUrl="/Common/ValidateCode.aspx"
                        Height="20px" />
                    <asp:TextBox ID="TextBox14" runat="server"  Style="width: 52px;"
                        TabIndex="4"></asp:TextBox></div>
                        <div style="text-align:center; padding-top:5px;"> 
                        <asp:Button ID="Button5" runat="server" Text="上一步" onclick="Button5_Click"  />&nbsp; &nbsp;    <asp:Button ID="Button3" runat="server" Text="提交" onclick="Button3_Click"  />
                        </div>
 </asp:Panel>
</div>
<div id="mainBottom">
<img src="/images/bottom.gif" width="801" height="37" />
</div>
</form>
</body>
</html>
