<%@ page language="C#" autoeventwireup="true" inherits="ShopCart_InputPassengers, App_Web_qwhmn0xp" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>

<html>
<head runat="server">
<title>填写客户信息</title>
<meta http-equiv="Content-Type" content="text/html" />
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/index.css" />
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/main.css" />
<link rel="stylesheet" type="text/css" href="../App_Themes/AdminDefaultTheme/style.css"/>
<style type="text/css">
.text{ height:15px;width:180px;padding-top:3px}
</style>
   <script language="javascript" type="text/javascript">
       function check() {
           var name = document.getElementById("hfName");
           var creID = document.getElementById("hfCreID");

           var val = name.value.split(',');
           var cre = creID.value.split(',');
           if (val.length > 0) {
               for (var i = 0; i < val.length; i++) {
                   var va = document.getElementById(val[i]);
                   var creid = document.getElementById(cre[i]);
                   if (va.value == "") {
                       alert("姓名不能为空!");
                       return false;
                   }
                   if (!isNaN(va.value)) {
                       alert("请输入正确的姓名!");
                       return false;
                   }
                   if (creid.value == "") {
                       alert("证件号码不能为空!");
                       return false;
                   }
                   if (checkCreID(creid)) {
                       return false;
                   }
               }
           }
           return true;
       }

       function checkCreID(obj) {
           var creID = document.getElementById("hfCreID");
           var creType = document.getElementById("hfCreType");

           var creid = creID.value.split(',');
           var cretype = creType.value.split(',');

           var exp = new RegExp(/^([\d]{15}|[\d]{18}|[\d]{17}[x|X])$/);  //身份证正则表达式

           if (creid.length > 0) {
               for (var i = 0; i < creid.length; i++) {
                   var id = document.getElementById(creid[i]);
                   var type = document.getElementById(cretype[i]);
                   if (type.value == "0") {
                       if (!exp.test(id.value) && id==obj) {
                          alert("请输入正确的身份证号码!");
                           return false;
                       }
                   }
               }
           }
           return true;
       }

       function CheckPhone() {
           var mobile = document.getElementById("txtMobile");
           var phone = document.getElementById("txtPhone");
           
           if (mobile.value!= "" && isNaN(mobile.value)) {
               alert("手机号码必须是数字!");
               return false;
           }
           if (phone.value != ""&& isNaN(phone.value)) {
               alert("联系电话必须是数字!");
               return false;
           }
       }
       
       function load() {
           var type = document.getElementById("hftype");
           var isConst = document.getElementsByName("isConst");
           var mobile = document.getElementsByName("mobile");
           if (type.value == "2")  //航班
           {
               for (var i = 0; i < isConst.length; i++) {
                   isConst[i].style.display = "";
                   mobile[i].style.display = "none";
               }
           }
           if (type.value == "3")  //旅游
           {
               for (var i = 0; i < isConst.length; i++) {
                   isConst[i].style.display = "none";
                   mobile[i].style.display = "";
               }
           }
           DelDiv();
       }

       function checkArrive() {
           var arrive = document.getElementById("txtArrive");
           var lblTip = document.getElementById("lblTip");
           if (arrive.value == "") {
               lblTip.value = "请输入抵用劵";
               return false;
           }
           return true;
       }

       function DelDiv() {
           var constVal = document.getElementById("hfConstVlaue");
           var val = constVal.split(',');
           if (val.length > 0) {
               for (var i = 0; i < val.length; i++) {
                   var div = document.getElementById(val[i].value);
                   form1.removeChild(div);
               }
           }

       }

   </script>
</head>
<body onload="load()">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <div>
    <p></p>
     <div><asp:Label ID="lblInfo1" runat="server" Text="航班信息:" Font-Size="Medium" Font-Bold="true"></asp:Label>
     (总金额:<asp:Label ID="lblAllMoney" runat="server"></asp:Label>)</div>
  <%-- <div style="width:100%">
    <div style="width:75%;float:left">--%>
    <table width="80%" align="center">
      <tr>
            <td width="20%"><asp:Label ID="lblNo1" runat="server"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblDate1" runat="server"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblPrice1" runat="server" Text="价格"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblJiJian1" runat="server"></asp:Label></td>
            <td  width="20%"><asp:Label ID="lblStock1" runat="server" Text="人数"></asp:Label></td>    
        </tr>
        <tr>
            <td width="20%"><asp:Label ID="lblNo" runat="server" Text="Label"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblPrice" runat="server" Text="Label"></asp:Label></td>  
            <td  width="20%"><asp:Label ID="lblJiJian" runat="server" Text="Label"></asp:Label></td>
            <td  width="20%"><asp:Label ID="lblStock" runat="server" Text=""></asp:Label></td>    
        </tr>
    </table>
     <asp:HiddenField ID="hftype"  runat="server"/>
     <asp:HiddenField ID="hfcity"  runat="server"/>
     <asp:HiddenField ID="hfComdate" runat="server" /> <!-- 起飞 -->
     <asp:HiddenField ID="hfArriveTime" runat="server" /><!-- 到达 -->
     <asp:HiddenField ID="AirOilTax" runat="server" />  <!-- 燃油 -->
     <asp:HiddenField ID="AirPortTax" runat="server" /> <!-- 机建 -->
     <asp:HiddenField ID="countRate" runat="server" /> <!-- 折扣数 -->
     <asp:HiddenField ID="hfProinfo" runat="server" />
      <asp:HiddenField ID="hfPeNum" runat="server" /> <!-- 成人数 -->
     <asp:HiddenField ID="hfChNum" runat="server" /><!-- 儿童数 -->
  <%--  </div>
    <div style="width:25%;float:right"><font style="font-size:large;"><strong>总价格:</strong></font>--%>
    </div>
    
    <div id="baoxian" runat="server">
        <strong><font style="font-size:large">保险数量:</font></strong>
        <%--<input type="text" id="txtInsu" onchange="txtChange()" runat="server" />--%>
        <asp:TextBox ID="txtIns" runat="server" ontextchanged="txt_TextChanged" 
            AutoPostBack="True" />
        (保险价格:￥ <asp:Label ID="lblInsurance" runat="server"></asp:Label>)
    </div>
  <%--   </div>
    <br />--%>
    <div align="left">
     <div id="Hotels" runat="server"><font style="font-size:large"><strong>入住人:</strong></font>
     <asp:Label ID="lblHotel" runat="server"></asp:Label></div>
    <asp:Label ID="lblInfo2" runat="server" Text="乘客信息:" Font-Size="Medium" Font-Bold="true"></asp:Label></div>
    <!-- 确认乘客信息 -->
        <asp:Repeater ID="repPass" runat="server" Visible="false" 
            onitemdatabound="repPass_ItemDataBound">
        <ItemTemplate>
            <asp:HiddenField ID="hfKey" runat="server" Value='<%#Eval("key") %>' />
         <table width="70%" align="center">
        <tr>
            <td width="25%"><asp:Label ID="lblName" runat="server" Text=""> </asp:Label></td>  
            <td  width="25%"><asp:Label ID="lblCreType" runat="server" Text="Label"></asp:Label></td>  
            <td  width="25%"><asp:Label ID="lblCreID" runat="server" Text="Label"></asp:Label></td>  
            <td  width="25%"><asp:Label ID="lblTicType" runat="server" Text="Label"></asp:Label></td>
            <asp:HiddenField ID="hftype"  runat="server"/>
            <asp:HiddenField ID="hfcity"  runat="server"/></td>    
     </tr>
    </table>
        </ItemTemplate>
        </asp:Repeater>
        <!-- end  -->
        <!-- 常用联系人 -->
       <div id="isConsts" runat="server" style="width:98%; height:50px; border: 1px solid #00F; overflow-x:hidden; text-align:center;" align="center">
        <asp:CheckBoxList ID="cbConst" name="constCb" Width="100%"  runat="server"  
            RepeatDirection="Horizontal" RepeatColumns="5" AutoPostBack="True" 
               onselectedindexchanged="cbConst_SelectedIndexChanged">
        </asp:CheckBoxList>
        </div>
        <!--  end -->
    <asp:Repeater ID="repPassener" runat="server" 
        onitemdatabound="repPassener_ItemDataBound" 
        onitemcommand="repPassener_ItemCommand">
    <ItemTemplate>
    <asp:HiddenField ID="hfId"  runat="server" Value='<%#Eval("Key") %>' />
    <div id='<%# GetId(Eval("value"))%>' style="margin:10px; background-color:#ccccff;" name="ConstId">
    <table width="70%">
        <tr>
        <td>购买类型: </td>
        <td>
      <%--  <asp:UpdatePanel ID="udpa" runat="server">
            <ContentTemplate>--%>
                <asp:DropDownList ID="ddType" runat="server" OnSelectedIndexChanged="ddType_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="1" Selected="True">成人票</asp:ListItem>
                <asp:ListItem Value="2" >儿童票</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblChPrice" runat="server" Text="(儿童票为原价的5折)" ></asp:Label>
          <%--  </ContentTemplate>
        </asp:UpdatePanel>--%></td>
        <td align="right">
           <asp:Button ID="btnDel" runat="server" Text="删除" CommandName="Del" CommandArgument='<%#Eval("Key") %>' CausesValidation="False"  />
            <asp:Button ID="Button1" runat="server" Text="添加" CommandName="Add" CausesValidation="False"  />
                <asp:CheckBox ID="chAdd" runat="server" /><strong>添加到常用客户</strong></td>
        </tr>
        <tr>
        <td>姓名:</td>
        <td>
        <asp:HiddenField id="passID"  runat="server" />
        <input ID="txtName" name="txtName" runat="server" /><font color="red">*</font>(中文名:中文或拼音/英文名:last/first middle)</td>
        </tr>
        <tr><td>证件类型:</td>
        <td colspan="2"><select ID="ddlCreID" name="ddlCreID" runat="server">
            <option Value="0" Selected="Selected">身份证</option>
            <option Value="1">护照</option>
            <option Value="2">军人证</option>
            <option Value="3">港澳通行证</option>
            <option Value="4">台胞证</option>
            <option Value="5">回乡证</option>
            <option Value="6">国际海员证</option>
            <option Value="7">外国人永久居留证</option>
             <option Value="8">旅行证</option>
            <option Value="9">其他</option>
            </select></td>
        </tr>
        <tr><td>证件号码:</td>
        <td  colspan="2"><input ID="txtCreID" name="txtCreID" runat="server" onblur="checkCreID(this)" /><font color="red">*</font></td>
        </tr>
        <tbody id="isConst" name="isConst">
            <tr> <td>东航常旅客卡</td>
            <td  colspan="2"><asp:TextBox ID="txtFlyerCart" runat="server"></asp:TextBox></td>
            </tr></tbody>
        <tbody id="mobile" name="mobile">
            <tr> <td>联系电话</td>
            <td  colspan="2"><asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
            </tr></tbody>
    </table>
    </div>
    </ItemTemplate>
    </asp:Repeater>
     <asp:HiddenField ID="hfName" runat="server" />
     <asp:HiddenField ID="hfClientID" runat="server" />
     <asp:HiddenField ID="hfCreType" runat="server" />
     <asp:HiddenField ID="hfCreID" runat="server" />
     <asp:HiddenField ID="hfConstVlaue" runat="server"/>
    <div id="add" align="right" style="width:70%" runat="server">
    </div>
    
    <!-- 添加联系人 -->
    <asp:UpdatePanel runat="server" ID="ud"><ContentTemplate>
    <div id="arrive" runat="server" ><strong>使用优惠劵:</strong><asp:TextBox ID="txtArrive" runat="server" Width="170px" ></asp:TextBox>
    <asp:Label ID="lblTip" runat="server" Text="不存在该优惠劵!" Visible="false"></asp:Label>
    <asp:Button ID="btnUser" Text="使用" runat="server" Width="80px" Height="20px" CausesValidation="false"
            OnClientClick="if(checkArrive()) return true;else return false;" onclick="btnUser_Click" />
   </div></ContentTemplate></asp:UpdatePanel><br />
    <div id="Contact" runat="server">
        <div><h3>联系人信息:</h3></div>
        <table width="40%">
        <tr>
            <td>联系人:</td>
            <td><input runat="server" ID="txtNecName"/><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNecName" 
                    ErrorMessage="联系人姓名不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>联系电话:</td>
            <td><input runat="server" ID="txtPhone" onblur="CheckPhone()"/><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhone" 
                    ErrorMessage="联系电话不能为空!"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>配送地址:</td>
            <td><input runat="server" ID="txtAddress"/></td>
        </tr>
         <tr>
            <td>邮政编码:</td>
            <td><input runat="server" ID="txtZipCode" /><asp:RequiredFieldValidator 
                    ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtZipCode"
                     Display="Dynamic" ErrorMessage="邮政编码不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>E-Mail:</td>
            <td><input runat="server" ID="txtMail" /></td>
        </tr>
         <tr>
          <td colspan="2" align="center">
            <asp:Button ID="btnCommit" Text="预订" Height="20px" 
                    Width="80px" runat="server" onclick="btnCommit_Click" OnClientClick="if(check())return true;else return false;" />
            &nbsp;&nbsp;<asp:Button ID="btnCan" Text="取消" runat="server"  Height="20px" 
                  Width="80px" onclick="btnCan_Click" CausesValidation="False" />
            </td>
        </tr>
        </table>
    </div>
    <div id="commit" runat="server" align="center" style="width:50%" >
        <asp:Button ID="btnOK" runat="server" Text="确认" Height="20px" Width="80px" 
            onclick="btnOK_Click" CausesValidation="False"  />
        <asp:Button ID="btnCa" Text="取消" runat="server"  Height="20px" Width="80px" 
            onclick="btnCan_Click" CausesValidation="False" />
    </div>
    </form>
   
</body>
</html>
