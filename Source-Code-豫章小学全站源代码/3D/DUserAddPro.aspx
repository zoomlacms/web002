<%@ page language="C#" autoeventwireup="true" inherits="_3D_DUserAddPro, App_Web_qpzgofad" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>添加商品</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
        }
    }
    function CheckAll(spanChk)//CheckBox全选
    {
        var oItem = spanChk.children;
        var theBox = (spanChk.type == "checkbox") ? spanChk : spanChk.children.item[0];
        xState = theBox.checked;
        elm = theBox.form.elements;
        for (i = 0; i < elm.length; i++)
            if (elm[i].type == "checkbox" && elm[i].id != theBox.id && elm[i].id.indexOf("Item", false) > -1) {
            if (elm[i].checked != xState)
                elm[i].click();
        }
    }
    function SelectProducer() {
        window.open('Producerlist.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }
    function ClearSelect() {
        document.getElementById("Span1").innerHTML = "";
        document.getElementById("Hiddenbind").value = "";
    }
    function CheckCinese(uid) {
        str = document.getElementById("Proname").value;
        if (str.match(/[\u4e00-\u9fa5]/)) {
            alert("Sorry! Please do not enter Proname in Chinese!");
            return false;
        } 
    }
    function Clearoption() {
        var hiddenidvalue = document.getElementById("OtherProject"); //获取已经存在的ID值

        for (var i = hiddenidvalue.options.length - 1; i >= 0; i--) {
            if (hiddenidvalue[i].selected == true) {
                hiddenidvalue[i] = null;
            }
        }
    }
</script>
<style type="text/css">
    <!-- 
	.STYLE1{color: #FF0000;}
    -- >
    .style1{height: 21px;width: 352px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation"><span> 3D 展厅 >> 产品 信息</span></div>
    <div class="clearbox"></div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">基本信息</td>
            <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">详情</td>
            <td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)" style="display:none">其他信息</td>
            <td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">价格</td>
            <td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)" style="display:none"><div id="result_box" dir="ltr">促销</div></td>
            <td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)" style="display:none">属性</td>
            <td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6)" style="display:none">设置</td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
        <tr class="tdbg">
            <td valign="top" style="margin-top: 0px; margin-left: 0px;">
                <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
                    <tbody id="Tabs0">
                        <asp:HiddenField ID="HiddenShopid" runat="server" />
                        <asp:HiddenField ID="HdnNode" runat="server" />
                        <asp:HiddenField ID="HdnModel" runat="server" />
                        <asp:HiddenField ID="ClickType" runat="server" />
                        <asp:HiddenField ID="ID" runat="server" Value="0" />
                        <asp:HiddenField ID="I_tem" runat="server" />
                        <asp:HiddenField ID="ComModelID" runat="server" />
                        <asp:HiddenField ID="Hiddenbind" runat="server" />
                        <asp:HiddenField ID="HiddenUserName" runat="server" />
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 26px"><strong>编号：</strong></td>
                            <td style="width: 592px; height: 26px;">
                                <asp:TextBox ID="ProCode" runat="server" disabled="disabled" Width="155px" />
                                <asp:CheckBox ID="CheckBox1" Text="自动识别" onclick="SetDisabled(this.checked)" runat="server" Checked="True" />
                            </td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft"><strong>条形码：</strong></td>
                            <td><asp:TextBox ID="BarCode" runat="server" Width="155px" /></td>
                        </tr>
                        <tr class="tdbg">
							<td class="tdbgleft"><strong>产品名称：</strong></td>
                            <td>
                                <asp:TextBox ID="Proname" runat="server" Width="442px" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Proname" Display="Dynamic" ErrorMessage="Product name can not be empty!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft"><strong>关键字：</strong></td>
                            <td><asp:TextBox ID="Kayword" runat="server" Width="155px" /></td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft"><strong>商品单位：</strong></td>
                            <td><asp:TextBox ID="ProUnit" runat="server" Width="155px" Text="" /><span class="STYLE1"></span></td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft"><strong>重量的货物：</strong></td>
                            <td>
                                <asp:TextBox ID="Weight" runat="server" Width="91px" />
                                （Kg）<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="Weight" ErrorMessage="Weight must be the number of commodities!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft" style="height: 26px"><strong>售后服务：</strong></td>
                            <td style="height: 26px">
                                <asp:TextBox ID="ServerPeriod" runat="server" Width="53px" />
                                <asp:DropDownList ID="ServerType" runat="server">
								<asp:ListItem Selected="True" Value="3">year</asp:ListItem>
							    <asp:ListItem Value="2">month</asp:ListItem>
                                <asp:ListItem Value="1">day</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="ServerPeriod" ErrorMessage="Length of service must be the number of!" ValidationExpression="^\d+$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display:none">
                            <td class="tdbgleft"><strong>商品类型：</strong></td>
                            <td>
                                <asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" Width="179px">
                                <asp:ListItem Selected="True" Value="1">正常销售</asp:ListItem>
                                <asp:ListItem Value="2">特别处理</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs1" style="display: none">
                        <tr class="tdbg" style="display: none">
                            <td class="tdbgleft" width="20%"><strong>商品简介：</strong></td>
                            <td>显示主页和栏目，但不超过255个字符<br />
                                <asp:TextBox ID="Proinfo" runat="server" Height="50px" TextMode="MultiLine" Width="500px" />
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" width="20%" style="height: 24px"><strong>产品：</strong></td>                            
                            <td style="height: 24px; width: 592px;">
                                <asp:HiddenField ID="Procontent" runat="server" />
                                <iframe id="infoeditor" src="../../editor/fckeditor_1.html?InstanceName=Procontent&Toolbar=Default" width="580px" height="150px" frameborder="no" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" width="20%"><strong>产品图片：</strong></td>
                            <td>
                                <asp:TextBox ID="Clearimg" runat="server" Width="300px" /><span class="STYLE1">&nbsp;*</span><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Can not be empty" ControlToValidate="Clearimg"></asp:RequiredFieldValidator><span class="STYLE1"><br />
                                (Photo must be JPG, GIF or BMP)</span><iframe id="bigimgs" style="top: 2px" src="FileUpload.aspx?menu=Clearimg" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                            </td>
                        </tr>
                        <tr class="tdbg" id="addsmallimg">
                            <td class="tdbgleft" width="20%"><strong>缩图相片：</strong></td>
                            <td>
                                <asp:TextBox ID="Thumbnails" runat="server" Width="300px" /><span class="STYLE1">*</span>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Can not be empty" ControlToValidate="Thumbnails"></asp:RequiredFieldValidator><br />
                                大小的图像“ 30KB ， （图片必须是JPG ， GIF）<iframe id="smallimgs" style="top: 2px" src="fileupload.aspx?menu=Thumbnails" width="100%" height="25px" frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs2" style="display: none">
                        <tr class="tdbg">
                            <td class="tdbgleft" width="20%"><strong>制造商：</strong></td>
                            <td><asp:TextBox ID="Producer" runat="server" Width="214px"></asp:TextBox>【<a href="###" onclick="SelectProducer();">请选择		</a>】</td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>Brand / Trademark：</strong></td>
                            <td><asp:TextBox ID="Brand" runat="server" Width="214px"></asp:TextBox>
                                【<a href="###" onclick="SelectBrand();">请选择</a>】</td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>Allowing the purchase of out-of-stock:</strong></td>
                            <td><asp:CheckBox ID="Allowed" runat="server" Text="检查，允许购买脱销，或脱销时购买是不允许的" /></td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>销售限额:</strong></td>
                            <td>
                                <asp:TextBox ID="Quota" runat="server" Width="100px">-1</asp:TextBox>
                                -1Do not limit the number of 0 Is not allowed to buy
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Quota" ErrorMessage="销售数据的数量必须是" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>Minimum purchase quantity:</strong></td>
                            <td>
                                <asp:TextBox ID="DownQuota" runat="server" Width="100px">-1</asp:TextBox>
                                -1Do not limit the number of 0 Is not allowed to buy
                                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DownQuota" ErrorMessage="必须有一个最低购买数量的数字" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 24px"><strong>Stock number:</strong></td>
                            <td style="height: 24px">
                                <asp:TextBox ID="Stock" runat="server" Width="100px">10</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Stock" ErrorMessage="库存必须的一些数字！" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft" style="height: 24px"><strong>库存下限报警：</strong></td>
                            <td style="height: 24px; width: 592px;">
                                <asp:TextBox ID="StockDown" runat="server" Width="100px">1</asp:TextBox>
                                <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="StockDown" ErrorMessage="库存必须有一个最低数目的警钟" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>存货的计算方法的未来</strong></td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="25%">
                                            <asp:RadioButtonList ID="JisuanFs" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem Selected="True" Value="0">Actual stock</asp:ListItem>
                                                <asp:ListItem Value="1">Virtual Stock</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td width="89%">（实物盘点-已订购的数量）</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>税费:</strong></td>
                            <td>
                                <asp:RadioButtonList ID="Rateset" runat="server">
                                    <asp:ListItem Selected="True" Value="1">含税，不开发票时有税率优惠 </asp:ListItem>
                                    <asp:ListItem Value="2">含税，不开发票时没有税率优惠</asp:ListItem>
                                    <asp:ListItem Value="3">不含税，开发票时需要加收税费</asp:ListItem>
                                    <asp:ListItem Value="4">不含税，开发票时不需要加收税费</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>商品税率:</strong></td>
                            <td>
                                <asp:TextBox ID="Rate" runat="server" Text="0" />
                                %
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="Rate" ErrorMessage="商品税率必须数目" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td class="tdbgleft"><strong>推荐等级:</strong></td>
                            <td>
                                <asp:DropDownList ID="Dengji" runat="server">
                                    <asp:ListItem Value="5">★★★★★</asp:ListItem>
                                    <asp:ListItem Value="4">★★★★</asp:ListItem>
                                    <asp:ListItem Selected="True" Value="3">★★★</asp:ListItem>
                                    <asp:ListItem Value="2">★★</asp:ListItem>
                                    <asp:ListItem Value="1">★</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs3" style="display: none">
                        <tr class="tdbg"><td class="tdbgleft" width="20%"><strong>单价：</strong></td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td class="style1">USD<asp:TextBox ID="ShiPrice" runat="server" Width="93px" />&nbsp;<font color="red">*</font></td>
                                        <td width="10px" style="height: 21px">.</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display: none">
                            <td class="tdbgleft"><strong>目前的零售价：</strong></td>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td style="width: 23%; height: 20px;"><asp:TextBox ID="LinPrice" runat="server" Width="93px" Text="1" />元</td>
                                        <td width="78%" style="height: 20px">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display: none">
                            <td class="tdbgleft"><strong>这个价格的商品时，商店销售</strong></td>
                            <td>
                                <asp:TextBox ID="txtRecommend" runat="server" Text="0" Width="93px" />%
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtRecommend" ErrorMessage="折扣率必须的数量!" ValidationExpression="^(-?\d+)(\.\d+)?$" SetFocusOnError="True"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr class="tdbg" style="display: none">
                            <td class="tdbgleft"><strong>允许批发：</strong></td>
                            <td>
                                <asp:RadioButtonList ID="Wholesaleone" runat="server" RepeatDirection="Horizontal" Width="106px">
                                    <asp:ListItem Selected="True" Value="1">是</asp:ListItem>
                                    <asp:ListItem Value="0">否</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                    </tbody>
                    <tbody id="Tabs4" style="display: none">
                        <tr class="tdbg">
                            <td class="tdbgleft" width="20%"><strong>购物积分：</strong></td><td>
                                购买&nbsp;<asp:TextBox ID="IntegralNum" runat="server" Text="1" Width="26px"></asp:TextBox>
								&nbsp;件此商品可以得到
                                <asp:TextBox ID="Integral" runat="server" Width="53px" />积分
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
                                    ControlToValidate="Integral" ErrorMessage="积分必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
							</td>
                        </tr> 
                    </tbody>
                    <tbody id="Tabs5" style="display: none"><asp:Literal ID="ModelHtml" runat="server"></asp:Literal></tbody>
					<tbody id="Tabs6" style="display: none">
						<tr class="tdbg">
                            <td class="tdbgleft" width="20%" style="height: 24px"><strong>购买商品积分：</strong></td>
                            <td style="height: 24px; width: 592px;">
                                <asp:TextBox ID="UpdateTime" runat="server" />
                                <span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="UpdateTime" Display="Dynamic" ErrorMessage="更新时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                </span>
                            </td>
					    </tr>
                  </tbody>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </td>
        </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
        <tr>
            <td align="center" style="height: 59px">&nbsp; &nbsp;
                <asp:Button ID="EBtnSubmit" Text="储存产品信息" runat="server"  OnClick="EBtnSubmit_Click1" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>