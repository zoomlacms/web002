<%@ page language="C#" autoeventwireup="true" inherits="SelNum_getNum, App_Web_axekkmnr" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上自主编排号牌号码系统</title>
<link href="/Skin/scss.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
    //<!--
    if (self != top) { top.location = self.location; }
    function ShowSoftKeyboard(obj) {
        if ((typeof (CheckLoaded) == "function")) {
            password1 = obj;
            showkeyboard();
            Calc.password.value = '';
        }
        else {
            return false;
        }
    }
    function onfocus() {
        document.getElementById('TxtUserName').focus();
    }
    function getnum(str,ido) {
        document.getElementById('Label1').innerHTML = "恭喜，你选取的号码为：鲁E·";

        document.getElementById('Label2').innerHTML = str + "，点击确认提交<br /><br /><br /><br />";

        document.getElementById('HiddenNum').value = ido;
    }
    // -->
</script>
<script type="text/javascript" src="../JS/softkeyboard2.js"></script>
</head>
<body>
 <form id="Login" runat="server" >
<div id="mainTop">
<div style="position:absolute; top: 117px; left: 50px;">选取号码</div>
</div>
<div id="mainMid">
<br />
    
    <p style=" text-align:center; font-size:16px; font-weight:600">
       选取号码</p>
<div style="width:450px; margin-left:auto; margin-right:auto; line-height:22px; color:Red; border:1px red dotted; padding:5px;">
    　　查找号码时，?号代表一个随机值，例子输入1？222.则查找出所有关于第一位是1，第2位为随机，后面紧接222的号码
</div>
<br />
<div style="text-align:center" id="login">

 鲁E·<asp:TextBox ID="TxtPassword"  runat="server" MaxLength="18" CssClass="password"
                        Style="width: 129px;" TabIndex="2"></asp:TextBox>
 
    </div>
<div style="text-align:center; padding-top:5px;"> <asp:Image ID="VcodeLogin" runat="server" ImageUrl="/Common/ValidateCode.aspx"
                        Height="20px" />
                    <asp:TextBox ID="TxtValidateCode" runat="server"  Style="width: 52px;"
                        TabIndex="4"></asp:TextBox>
                        </div>
                        <ul class="list">
                        <asp:Repeater ID="gvCard" runat="server">       
                        <ItemTemplate>
                        
                        <li><%# getName(Eval("Sname"))%><%# getsuo(Eval("SUserID"), Eval("Sname"), Eval("s_id"))%></li>
                        </ItemTemplate>
                        </asp:Repeater>

                      
                        </ul>   
                         <div style="clear:both"></div>
                         <div style="text-align:center; font-size:16px; font-weight:600";> 
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label><asp:Label ID="Label2"
            runat="server" Text=""></asp:Label>
            </div>
             <div style="clear:both"></div>
                         <div style="text-align:center">
        共
        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
        个信息
        <asp:Label ID="Toppage" runat="server" Text="" />
        <asp:Label ID="Nextpage" runat="server" Text="" />
        <asp:Label ID="Downpage" runat="server" Text="" />
        <asp:Label ID="Endpage" runat="server" Text="" />
        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
            Text="" />页
        <asp:Label ID="pagess" runat="server" Text="" />个信息/页 转到第<asp:DropDownList ID="DropDownList1"
            runat="server" AutoPostBack="True">
        </asp:DropDownList>
        页
      </div>
                        <div style="clear:both"></div>
                        <div style="text-align:center; padding-top:5px;" id="bbn"> 
                            <asp:Button ID="Button1" runat="server" Text="查找近似号码" 
                                onclick="Button1_Click"  />&nbsp;
                          <asp:Button ID="Button2" runat="server" Text="清除" onclick="Button2_Click"  />&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="请确认提交预选号码" onclick="Button3_Click" />
                            <asp:HiddenField ID="HiddenNum" runat="server" /><asp:HiddenField 
        ID="HiddenSid" runat="server" />
                        </div>
    

</div>
<div id="mainBottom">
<img src="/images/bottom.gif" width="801" height="37" />
&nbsp;</div>
</form>
</body>
</html>
