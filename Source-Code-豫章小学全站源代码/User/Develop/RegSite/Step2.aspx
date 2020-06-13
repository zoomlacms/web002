<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_RegSite_Step2, App_Web_i3ago512" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>设定站点信息</title>
<style type="text/css">
TD, P, LI, SELECT, INPUT { font-size: 12px; font-family: "宋体"; }
.td_17 { line-height: 20px; }
.td_16 { line-height: 19px; }
.style7 { color: #666666; }
.STYLE13 { color: #f95901; }
.STYLE15 { color: #8a8a8a; font-size: 12px; }
.STYLE16 { color: #8a8a8a; }
.STYLE17 { font-size: 12px; color: #8a8a8a; }
.STYLE18 { font-size: 12px; color: #3b7eb3; }
body { margin: 0px; padding: 0px; background-color: #e5e5e5; }
#proc td { background-color: #FFF; }
</style>
</head>
<body>
<br />
<form name="form1" method="post" runat="server" action="step2.aspx" id="form1">
  <script type="text/javascript">
//<![CDATA[
    var theForm = document.forms['form1'];
    if (!theForm) {
        theForm = document.form1;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
//]]>
</script> 
  <script type="text/javascript">
//<![CDATA[
    function WebForm_OnSubmit() {
        if (typeof (ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
        return true;
    }
//]]>
</script>
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center" valign="top" bgcolor="e5e5e5"><table width="980" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="10" background="../images/RegSite/peizhi_07.png"></td>
            <td width="960" valign="top"><table width="960" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="18" background="../images/RegSite/peizhi_08.png"></td>
                </tr>
              </table>
              <table width="960" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td height="37" bgcolor="#FFFFFF">&nbsp;</td>
                </tr>
              </table>
              <table width="960" border="0" cellspacing="0" cellpadding="0">
                <tr id="proc">
                  <td width="234"><img src="../images/RegSite/peizhi_09.png" width="234" height="42" /></td>
                  <td width="158"><img src="../images/RegSite/peizhi_10_0.png" name="Image8" width="158" height="42" border="0" id="Image8" /></td>
                  <td width="158"><img src="../images/RegSite/peizhi_10_1_0.png" name="Image9" width="158" height="42" border="0" id="Image9" /></td>
                  <td width="157"><img src="../images/RegSite/peizhi_10_2.png" name="Image4" width="157" height="42" border="0" id="Image4" /></td>
                  <td width="253" background="../images/RegSite/peizhi_10_3.png">&nbsp;</td>
                </tr>
              </table>
              <table width="960" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td bgcolor="#FFFFFF"><table width="960" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="20"><table width="960" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="20" colspan="3">&nbsp;</td>
                            </tr>
                            <tr>
                              <td width="180"></td>
                              <td width="600"><table width="600" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td colspan="3" align="left"><span class="STYLE15">您选择的模板</span></td>
                                  </tr>
                                  <tr>
                                    <td height="3" colspan="3"></td>
                                  </tr>
                                  <tr>
                                    <td height="1" colspan="3" align="left" bgcolor="878787"></td>
                                  </tr>
                                  <tr>
                                    <td height="10" colspan="3" align="left"><table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="10" colspan="2"></td>
                                        </tr>
                                        <tr>
                                          <td width="160"><span id="hlDemoUrl" href="#" target="_blank"><img src="" alt="" id="imgSer" runat="server" style="border-width: 0px; width:150px;height:150px" /></span></td>
                                          <td width="440" valign="baseline"><table width="440" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="10" rowspan="3"></td>
                                                <td height="30">&nbsp;</td>
                                              </tr>
                                              <tr>
                                                <td align="left" class="td_16 STYLE15">模板名称：<span id="hlCPWName" style="color:#000;" runat="server"></span></td>
                                              </tr>
                                              <tr>
                                                <td align="left">&nbsp;</td>
                                              </tr>
                                            </table></td>
                                        </tr>
                                        <tr>
                                          <td height="25" colspan="2"></td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                  <tr>
                                    <td colspan="3"><table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr align="left">
                                          <td><table width="600" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td colspan="3"></td>
                                              </tr>
                                            </table></td>
                                        </tr>
                                      </table>
                                      <table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left"><span class="STYLE15">填写网站及联系信息：</span></td>
                                        </tr>
                                        <tr>
                                          <td height="3"></td>
                                        </tr>
                                        <tr>
                                          <td height="1" bgcolor="878787"></td>
                                        </tr>
                                      </table>
                                      <table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="10" colspan="3"></td>
                                        </tr>
                                        <tr>
                                          <td width="100" align="right"><span class="STYLE15"><span class="STYLE13">*</span>网站名称：</span></td>
                                          <td align="left" class="style4"><asp:TextBox ID="txtSiteName" runat="server"  maxlength="100" style="width: 150px;"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSiteName" Display="Dynamic" ErrorMessage="*">请填写网站名称</asp:RequiredFieldValidator></td>
                                          <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td height="10" colspan="3"><span class="STYLE12"></span></td>
                                        </tr>
                                        <tr>
                                          <td width="100" align="right"><span class="STYLE15">网站关键字：</span></td>
                                          <td align="left" class="style4"><input name="txtSiteKeywords" type="text" maxlength="100" id="txtSiteKeywords" style="width: 150px;" runat="server"/>
                                            <br /></td>
                                          <td align="left"><span class="STYLE12"></span></td>
                                        </tr>
                                        <tr>
                                          <td height="10" colspan="3"><span class="STYLE12"></span></td>
                                        </tr>
                                      </table>
                                      <table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="100" align="right"><span class="STYLE15">&nbsp;网站描述：</span></td>
                                          <td align="left"><textarea name="txtSiteCon" rows="2" cols="20" id="txtSiteCon" onkeyup="javascript:Mynetcn_chkInputLength(this,128);"   onfocus="javascript:ClearTip();" style="height: 70px; width: 319px;" runat="server"></textarea></td>
                                          <td align="left">&nbsp;</td>
                                        </tr>
                                        <tr>
                                          <td height="10" colspan="3" align="left"></td>
                                        </tr>
                                      </table>
                                      <div id="mynetpanel">
                                        <table width="600" border="0" cellspacing="0" cellpadding="0">
                                          <tr>
                                            <td width="100" align="right"><span class="STYLE15"><span class="STYLE13">*</span>联系人：</span></td>
                                            <td width="300" align="left"><asp:TextBox ID="txt_Contactor" runat="server"  maxlength="100" style="width: 150px;"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_Contactor" Display="Dynamic" ErrorMessage="*">请填写联系人</asp:RequiredFieldValidator></td>
                                            <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td height="10" colspan="3"><span class="STYLE12"></span></td>
                                          </tr>
                                          <tr>
                                            <td width="100" align="right"><span class="STYLE15"><span class="STYLE13">*</span>联系电话/手机：</span></td>
                                            <td align="left"><asp:TextBox ID="txt_Telephone" runat="server"  maxlength="100" style="width: 150px;"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_Telephone" Display="Dynamic" ErrorMessage="*">请输入联系电话/手机</asp:RequiredFieldValidator>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Display="Dynamic" ValidationExpression="((\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$)" ControlToValidate="txt_Telephone">请输入正确的手机号码</asp:RegularExpressionValidator></td>
                                            <td>&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td height="10" colspan="3"><span class="STYLE12"></span></td>
                                          </tr>
                                          <tr>
                                            <td align="right"><span class="STYLE15"><span class="STYLE13">*</span>省、市：</span></td>
                                            <td align="left"><iframe id="Drop_a" src="/User/Develop/Model/MultiDropList.aspx?CateID=1&FieldName=a&FValue=" runat="server" marginheight="0" marginwidth="0" frameborder="0" width="100%" height="30" scrolling="no"> </iframe></td>
                                            <td align="left"><div id="Area" style="display: none; color:Red">请选择地区</div></td>
                                          </tr>
                                          <tr>
                                            <td height="10" colspan="3" align="right"><span class="STYLE15"></span></td>
                                          </tr>
                                          <tr>
                                            <td align="right"><span class="STYLE15"><span class="STYLE13">*</span>市内地址：</span></td>
                                            <td align="left"><asp:TextBox ID="jAddress" runat="server"  maxlength="100" style="width: 150px;"></asp:TextBox>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="jAddress" Display="Dynamic" ErrorMessage="*">请填写市内地址</asp:RequiredFieldValidator></td>
                                            <td align="left">&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td height="10" colspan="3"><span class="STYLE12"></span></td>
                                          </tr>
                                          <tr>
                                            <td align="right"><span class="STYLE15">邮编：</span></td>
                                            <td align="left"><asp:TextBox ID="jCode" runat="server"  maxlength="100" style="width: 150px;"></asp:TextBox>
                                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ValidationExpression="[1-9]\d{5}(?!\d)" ControlToValidate="jCode">请输入正确的邮编</asp:RegularExpressionValidator></td>
                                            <td align="left">&nbsp;</td>
                                          </tr>
                                          <tr>
                                            <td height="15" colspan="3"></td>
                                          </tr>
                                        </table>
                                      </div>
                                      <table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="100"></td>
                                        </tr>
                                      </table>
                                      <table width="600" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td width="100" rowspan="2">&nbsp;</td>
                                          <td align="left"><table width="600" border="0" cellspacing="0" cellpadding="0">
                                              <tr>
                                                <td width="100" rowspan="2"></td>
                                                <td width="129" align="left"><a href="step1.aspx"> <img src="../images/RegSite/peizhi_icon1.png" border="0" /></a></td>
                                                <td width="20" align="left"></td>
                                                <td align="left"><asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="../images/RegSite/peizhi_icon3.png" OnClientClick="sub()" /></td>
                                              </tr>
                                              <tr>
                                                <td height="30" colspan="3">&nbsp;</td>
                                              </tr>
                                            </table></td>
                                        </tr>
                                        <tr>
                                          <td height="30">&nbsp;</td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                </table></td>
                              <td width="180"></td>
                            </tr>
                          </table></td>
                      </tr>
                    </table>
                    <table width="960" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="20">&nbsp;</td>
                      </tr>
                    </table>
                    <table width="960" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td height="18" bgcolor="d1d1d1">&nbsp;</td>
                      </tr>
                    </table></td>
                </tr>
              </table></td>
            <td width="10" background="../images/RegSite/peizhi_07_0.png"></td>
          </tr>
        </table></td>
    </tr>
  </table>
  <div id="hideArea" style="display:none;">
    <input name="status" value="Sub" />
    <input name="SkinID" id="SkinID" runat="server" />
    <input id="txt_a" name="txt_a" runat="server" />
  </div>
</form>
</body>
</html>
<script type="text/javascript">
    var Page_ValidationActive = false;
    if (typeof (ValidatorOnLoad) == "function") {
        ValidatorOnLoad();
    }
    function ValidatorOnSubmit() {
        if (Page_ValidationActive) {
            return ValidatorCommonOnSubmit();
        }
        else {
            return true;
        }
    }
</script>
<script type="text/javascript">
    function UpdateMultiDrop(values, id) {
        document.getElementsByName(id)[0].value = values;
    }
    function sub() {
        var strTemp = document.getElementById("txt_a").value;
        var arr = strTemp.split('|');
        if (arr.length == 2) {
            document.getElementById("Area").style.display = "none";
        }
        else {
            document.getElementById("Area").style.display = "block";
        }
        if (document.getElementById("Area").style.display == "none") {
            return true;
        }
        else {
            return false;
        }
    }
</script>