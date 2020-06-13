<%@ page language="C#" autoeventwireup="true" inherits="_3D_EditDUser, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>3D 展厅</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js"></script>
<script language="javascript">
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
    function checkChinese() {
        var arr = new Array('Dcorp', 'Dmetier', 'Daddress', 'TextBox1');
        var str = "";
        for (var i = 0; i < arr.length; i++) {
            if (document.getElementById(arr[i]).value.match(/[\u4e00-\u9fa5]/)) {
                str = str +"Please do not enter " + arr[i] + " in Chinese!\n";
            }
        }
        if (str.length > 0) {
            alert(str);
            return false;
        }
    }
</script>
 <script src="/JS/Common.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">三维展厅 &gt;&gt; <a href="ADDUser.aspx"><asp:Label ID="Label1" runat="server" Text=""></asp:Label>&nbsp;</a>展览的信息</div>
    <div class="clearbox"></div>
    <asp:HiddenField ID="HiddenDuserid" runat="server" />    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
        <tbody id="Tbody1">
            <tr class="tdbg">
                <td align="center" colspan="2" class="title" style="width:5%">参展商资料</td>
            </tr>
             <tr class="tdbg" style="display:none">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">用户类型：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:RadioButtonList ID="Dutype" runat="server" RepeatDirection="Horizontal" 
                        AutoPostBack="true" onselectedindexchanged="Dutype_SelectedIndexChanged" 
                        Enabled="False">
					    <asp:ListItem Value="0">买家</asp:ListItem>
						<asp:ListItem Value="1" Selected="True">参展商</asp:ListItem>
                    </asp:RadioButtonList>
				</td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; width: 30%; padding-right: 20px; font-weight: bold">用户名：</td>
                <td align="left" class="tdbg" style="height: 24px; width:70%">
                    <asp:TextBox ID="UserName" runat="server" Width="191px" Enabled="False"></asp:TextBox>
                    <font color=red>*</font></td>
            </tr>            
            <tr class="tdbg" id="tw" runat="server" style="display:none">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">展位号：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False"></asp:DropDownList>
				</td>
            </tr>
             <tr class="tdbg" id="cj" runat="server" style="display:none">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">约束力的情景：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
                    </asp:DropDownList>
              </td>
            </tr>            
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">密码：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:TextBox ID="UserPwd" runat="server" Width="136px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="UserPwd2" ControlToValidate="UserPwd" ErrorMessage="这两个密码不匹配" Display="Dynamic"></asp:CompareValidator>
                    <font color=red>*</font></td>
            </tr>
           <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">重复密码：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:TextBox ID="UserPwd2" runat="server" Width="136px" TextMode="Password"></asp:TextBox>
                    <font color=red>*</font></td>
           </tr>
             <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">密码问题：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Question" runat="server" Width="266px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">答案：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Answer" runat="server" Width="266px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">性别：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:RadioButtonList ID="Usersex" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1" Selected>Male</asp:ListItem>
                    <asp:ListItem Value="0">Female</asp:ListItem>
                    </asp:RadioButtonList>
              </td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">电邮地址：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:TextBox ID="DEmail" runat="server" Width="213px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DEmail" ErrorMessage="Email不能为空！" Display="Dynamic"></asp:RequiredFieldValidator>
                    <font color=red>*</font></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">移动电话号码：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dmobile" runat="server" Width="136px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">电话：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dphone" runat="server" Width="136px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">传真：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dfax" runat="server" Width="136px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg" style="display:none">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">货物的数量可以被释放：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dupicnum" runat="server" Width="63px" Enabled="False">20</asp:TextBox>
              </td>
            </tr>
           
            <tr class="tdbg" style="display:none">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">有效截止日期：</td>
                <td align="left" class="tdbg" style="height: 24px;">
                    <asp:TextBox ID="Dexpiry" runat="server" Width="205px" onclick="calendar()" Enabled="False"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" ImageUrl="/App_Themes/AdminDefaultTheme/images/Calendar.gif" /></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">公司名称：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dcorp" runat="server" Width="282px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">位置：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Dmetier" runat="server" Width="274px"></asp:TextBox></td>
            </tr>
            <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">邮寄地址：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="Daddress" runat="server" Width="276px"></asp:TextBox></td>
            </tr>
             <tr class="tdbg">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">背景：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox></td>
            </tr>
			<tr class="tdbg" id="selectlogo" runat="server">
                <td align="right" class="tdbgleft" style="height: 24px; padding-right: 20px; font-weight: bold">Logo：</td>
                <td align="left" class="tdbg" style="height: 24px;"><asp:TextBox ID="txtDboothLogo" runat="server" Width="342px"></asp:TextBox>*
                  <asp:Label ID="LabPicPath" runat="server" Text="请选择上传路径！" Visible="False"></asp:Label><br />
                   <iframe id="Upload_Pic" src="../Common/DshowUpload.aspx?CID=DboothLogo&ftype=1" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"></iframe></td>
            </tr>
            <asp:Literal ID="lblHtml" runat="server"></asp:Literal>
            <tr class="tdbg">
                <td colspan="2" align="center" class="tdbg" style="height: 24px;">
                    <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;          
                    <asp:HiddenField ID="HiddenMenu" runat="server" />
                </td>
            </tr>            
        </tbody>
    </table>
</ContentTemplate></asp:UpdatePanel></form>
</body>
</html>