<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_ProductAdd, App_Web_er0gytxg" validaterequest="false" enableviewstate="False" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<%@ Register Src="WebUserControlTop.ascx" TagName="WebUserControlTop" TagPrefix="uc2" %>
<%@ Register Src="WebUserControlTop2.ascx" TagName="WebUserControlTop2" TagPrefix="uc1" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>添加商品</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link rel='stylesheet' type='text/css' href='/App_Themes/AdminDefaultTheme/doutime.css'>
<style>
#flotop{ width:100%;}
#flotop {height:30px;   background:url(../images/top_bg.gif) repeat-x;z-index:99; }/*顶部高为30px导航样式**/
#msgDiv,#mgDiv {z-index:10001;width:500px;height:750px; background:white; border:#CCC 1px solid;position:absolute;left:50%;top:20%;font-size:12px;margin-left:-225px; display: none;}
#bDiv{display: none;position: absolute;top: 0px;left: 0px;right:0px; background-color: #777; filter:progid:DXImageTransform.Microsoft.Alpha(style=3,opacity=25,finishOpacity=75)opacity: 0.6;}/*弹出层*/
#msgShut,#mgShut{ width:30px; height:20px; cursor:pointer; line-height:20px; text-align:center; float:right; color:#F00; font-weight:bold;}
</style>
<script src="/JS/RiQi.js" type="text/javascript"></script>
<script src="/JS/Common.js" type="text/javascript"></script>
<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
    <script src="../../JS/jquery-1.5.1.min.js" type="text/javascript"></script>
<script language="JavaScript" type="text/JavaScript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5", "TabTitle6", "TabTitle7");
    var arrTabs = new Array("Tabs0", "Tabs1", "Tabs2", "Tabs3", "Tabs4", "Tabs5", "Tabs6", "Tabs7");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
        }
    }
    function SelectProducer() {
        window.open('Producerlist.aspx', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }

    function SelectBrand() {
        window.open('Brandlist.aspx?producer=' + document.getElementById('Producer').value + '', '', 'width=600,height=450,resizable=0,scrollbars=yes');
    }

</script>

<script type="text/javascript">
    function GetPicurl(imgurl) {

    }

    function SetDisabled(checked) {
        document.getElementById('ProCode').disabled = checked;
    }

    function Setsmallimgs(checked) {
    }
    function show(checked) {

        if (checked.value == 1) {
            document.getElementById("pifaji").style.display = "";
        } else {
            document.getElementById("pifaji").style.display = "none";
        }
    }

    function showpf() {
        if (document.getElementById("Wholesales_0").checked == true) {
            document.getElementById("pifaji").style.display = "";
        } else {
            document.getElementById("pifaji").style.display = "none";
        }
    }

    function deleteRow(tableID, rowIndex, rowsid) {
        var ccd = confirm('确定删除此花材吗？');
        if (ccd) {
            var table = document.all[tableID]
            var bindstr = "," + document.getElementById("HiddenField1").value + ",";
            rowsid = "," + rowsid + ",";
            var reg = new RegExp(rowsid, "g");
            bindstr = bindstr.replace(reg, ",");
            reg = new RegExp(",,", "g")
            bindstr = bindstr.replace(reg, ",");
            document.getElementById("HiddenField1").value = bindstr;
            table.deleteRow(rowIndex);
            document.getElementById("HiddenField1").value = document.getElementById("HiddenField1").value.replace(reg, ",");
            if (document.getElementById("HiddenField1").value == "" || document.getElementById("HiddenField1").value == ",") {
                document.getElementById("ShiPrice").disabled = "";
                document.getElementById("LinPrice").disabled = "";
                document.getElementById("txtDayPrice").disabled = "";
                document.getElementById("txtBookPrice").disabled = "";
                document.getElementById("Span2").innerHTML = "";
                document.getElementById("HiddenField1").value = "";
            } else {
                numChange('0');
            }
        }
    }

    function ClearSelect() {
        document.getElementById("Span2").innerHTML = "";
        document.getElementById("HiddenField1").value = "";
        document.getElementById("ShiPrice").value = "";
        document.getElementById("LinPrice").value = "";
        document.getElementById("hfprice").value = "";
        document.getElementById("LinPrice").disabled = "";
        document.getElementById("ShiPrice").disabled = "";
        document.getElementById("txtDayPrice").value = "";
        document.getElementById("txtBookPrice").value = "";
        document.getElementById("hfBookprice").value = "";
        document.getElementById("hfFesPrice").value = "";
        document.getElementById("txtBookPrice").disabled = "";
        document.getElementById("txtDayPrice").disabled = "";
    }

    //花材数量改变
    function numChange(obj) {
        if (document.getElementById("HiddenField1").value != "") {
            if (obj != '0' && isNaN(document.getElementById("pronums" + obj).value)) {
                document.getElementById("ShiPrice").value = "";
                document.getElementById("LinPrice").value = "";
                document.getElementById("hfBookprice").value = "";
                document.getElementById("hfFesPrice").value = "";
                document.getElementById("txtDayPrice").value = "";
                document.getElementById("txtBookPrice").value = "";
                document.getElementById("hfprice").value = "";
                alert("请输入数字");
            } else {
                var hidPrice = 0;   //花材总价格
                var bookprices = 0;   //花材预订价
                var festprices = 0;   //花材节日价
                var hid = document.getElementById("HiddenField1").value;
                var hidNum = "";
                var hids = hid.split(',');
                for (i = 0; i < hids.length; i++) {
                    if (hids[i] != "") {
                        var num = 0;
                        var price = 0;
                        var bookprice = 0;  //预订价
                        var festprice = 0;   //节日价
                        if (document.getElementById("pronums" + hids[i]).value != "")
                            num = parseInt(document.getElementById("pronums" + hids[i]).value);
                        price = parseFloat(document.getElementById("prices" + hids[i]).innerText.substring(1));
                        bookprice = parseFloat(document.getElementById("bookprice" + hids[i]).innerText.substring(1));
                        festprice = parseFloat(document.getElementById("festprice" + hids[i]).innerText.substring(1));
                        hidNum = hidNum + "," + num;
                        hidPrice = hidPrice + (num * price);
                        bookprices = bookprices + (num * bookprice);
                        festprices = festprices + (num * festprice);
                    } else {
                        hidNum = hidNum + ",0";
                    }
                }
                document.getElementById("ShiPrice").value = hidPrice;
                document.getElementById("LinPrice").value = hidPrice;
                document.getElementById("hfBookprice").value = bookprices;
                document.getElementById("hfFesPrice").value = festprices;
                document.getElementById("txtDayPrice").value = bookprices;
                document.getElementById("txtBookPrice").value = festprices;
                document.getElementById("hfprice").value = hidPrice;
                document.getElementById("LinPrice").disabled = "disabled";
                document.getElementById("ShiPrice").disabled = "disabled";
                document.getElementById("txtDayPrice").disabled = "disabled";
                document.getElementById("txtBookPrice").disabled = "disabled";
                if (hidNum.substring(0, 1) == ",") {
                    hidNum = hidNum.substring(1);
                }
                if (hidNum.substring(hidNum.length - 1) == ",") {
                    hidNum = hidNum.substring(0, hidNum.length - 1);
                }
                document.getElementById("hidNum").value = hidNum;
            }
        }
    }

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
</script>
</head>
<body>
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<script>
	function SelectFlower() {
		//背景
		var bgObj = document.getElementById("bgDiv");
		bgObj.style.width = (document.body.offsetWidth) + "px";
		bgObj.style.height = screen.height + "px";

		//定义窗口
		var msgObj = document.getElementById("msgDiv");
		msgObj.style.marginTop = -75 + document.documentElement.scrollTop + "px";
		//关闭
		document.getElementById("msgShut").onclick = function () {
			bgObj.style.display = msgObj.style.display = "none";
		}
		msgObj.style.display = bgObj.style.display = "block";
		msgDetail.innerHTML = "<p align=center><iframe src='SelectFlower.aspx' width='500' height='750' scrolling='no' frameborder='0'></iframe></p>"

	}

</script>
<div id="flotop">
<div id="msgDiv">
<div id="msgShut">
	关闭</div>
<div id="msgDetail">
</div>
</div>
<div id="bgDiv">
</div></div>
<div style="width: 100%">
	<!-- str -->
	<uc1:WebUserControlTop2 ID="WebUserControlTop2_1" runat="server" />
	<uc2:WebUserControlTop ID="WebUserControlTop1" runat="server" />
	<div class="us_topinfo" style="margin-top: 10px; width: 98%">
		<a href="ProductList.aspx">商品管理</a> | <a href="ProductAdd.aspx">添加商品</a></div>
	<asp:Panel ID="Panel1" runat="server" Width="98%" class="us_topinfo" Style="margin-top: 10px;">
		<table width="100%" cellpadding="2" cellspacing="1" border="0" style="margin-top: 10px;">
			<tr>
				<td height="24" align="center" style="width: 33%">
					<asp:ListBox ID="class0" runat="server" Height="280px" Width="180px" AutoPostBack="True">
					</asp:ListBox>
				</td>
				<td height="24" align="center" style="width: 33%">
					<asp:ListBox ID="class1" runat="server" Height="280px" Width="180px" AutoPostBack="True">
					</asp:ListBox>
				</td>
				<td height="24" align="center" width="33%">
					<asp:ListBox ID="class2" runat="server" Height="280px" Width="180px" AutoPostBack="True">
					</asp:ListBox>
				</td>
				<td height="24" align="center" width="33%">
					<asp:ListBox ID="class3" runat="server" Height="280px" Width="180px" AutoPostBack="True">
					</asp:ListBox>
				</td>
			</tr>
			<tr>
				<td height="24" colspan="4" align="center">
					<asp:Label ID="Label3" runat="server"></asp:Label>
				</td>
			</tr>
		</table>
	</asp:Panel>
	<asp:Panel ID="Panel2" runat="server" Width="98%" Visible="false">
		<div class="us_topinfo" style="margin-top: 10px; width: 100%">
			<table width="100%" border="0" cellpadding="0" cellspacing="0">
				<tr align="center">
					<td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
						基本信息
					</td>
					<td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
						介绍及图片
					</td>
					<td id="TabTitle2" class="tabtitle" onclick="ShowTabs(2)" runat="server">
						选择花材
					</td>
					<td id="TabTitle3" class="tabtitle" onclick="ShowTabs(3)">
						其他信息
					</td>
					<td id="TabTitle4" class="tabtitle" onclick="ShowTabs(4)">
						价格设置
					</td>
					<td id="TabTitle5" class="tabtitle" onclick="ShowTabs(5)">
						促销方案
					</td>
					<td id="TabTitle6" class="tabtitle" onclick="ShowTabs(6)">
						商品属性
					</td>
					<td>
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="98%" border="0" cellpadding="5" cellspacing="1" class="border">
				<tr class="tdbg">
					<td valign="top" style="margin-top: 0px; margin-left: 0px; width: 604px;">
						<table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
							<tbody id="Tabs0">
								<asp:Label ID="nodename" runat="server"></asp:Label><asp:HiddenField ID="HdnNode"
									runat="server" />
								<asp:HiddenField ID="HdnModel" runat="server" />
								<asp:HiddenField ID="ClickType" runat="server" />
								<asp:HiddenField ID="ID" runat="server" Value="0" />
								<asp:HiddenField ID="Item" runat="server" />
								<asp:HiddenField ID="ComModelID" runat="server" />
								<asp:HiddenField ID="Categoryid" runat="server" />
								<asp:HiddenField ID="HdnSpec" runat="server" />
								<asp:HiddenField ID="HiddenField1" runat="server" />
								<asp:HiddenField ID="hidNum" runat="server" />
								<div id="lblSpec" runat="server">
								</div>
								<tr class="tdbg">
									<td width="20%" class="tdbgleft">
										<strong>所属分类：</strong>
									</td>
									<td>
										<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
									</td>
								</tr>
								<%--<tr class="tdbg">
						<td class="tdbgleft">
							<strong>所属专题：</strong></td>
					  <td>
							
						  <asp:Label ID="Categoryname" runat="server"></asp:Label>
						  
						  <input type="button" id="Button1" value="添加到专题" onclick="AddToSpecial()" />
						  &nbsp;                          </td>
					</tr>--%>
								<tr class="tdbg">
									<td class="tdbgleft" style="height: 26px">
										<strong>商品编号：</strong>
									</td>
									<td style="width: 592px; height: 26px;">
										<asp:TextBox ID="ProCode" runat="server" disabled="disabled" Width="155px" />
										<asp:CheckBox ID="CheckBox1" Text="自动编号" onclick="SetDisabled(this.checked)" runat="server"
											Checked="True" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>条形码：</strong>
									</td>
									<td>
										<asp:TextBox ID="BarCode" runat="server" Width="155px" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>商品名称：</strong>
									</td>
									<td>
										<asp:TextBox ID="Proname" runat="server" Width="442px" />
										<span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
											ControlToValidate="Proname" Display="Dynamic" ErrorMessage="商品名称不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator></span>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>自定义分类：</strong>
									</td>
									<td>
										<asp:DropDownList ID="UserClass" runat="server">
										</asp:DropDownList>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>关键字：</strong>
									</td>
									<td>
										<asp:TextBox ID="Kayword" runat="server" Width="155px" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>商品单位：</strong>
									</td>
									<td>
										<asp:TextBox ID="ProUnit" runat="server" Width="155px" />
										<span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
											ControlToValidate="Proname" Display="Dynamic" ErrorMessage="商品单位不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
										</span>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>商品重量：</strong>
									</td>
									<td>
										<asp:TextBox ID="Weight" runat="server" Width="91px" />
										千克（Kg）<asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
											ControlToValidate="Weight" ErrorMessage="商品重量必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
											SetFocusOnError="True"></asp:RegularExpressionValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" style="height: 26px">
										<strong>售后服务：</strong>
									</td>
									<td style="height: 26px">
										<asp:TextBox ID="ServerPeriod" runat="server" Width="53px" />
										<asp:DropDownList ID="ServerType" runat="server">
											<asp:ListItem Selected="True" Value="3">年</asp:ListItem>
											<asp:ListItem Value="2">月</asp:ListItem>
											<asp:ListItem Value="1">日</asp:ListItem>
										</asp:DropDownList>
										<asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
											ControlToValidate="ServerPeriod" ErrorMessage="服务期限必须是数字!" ValidationExpression="^\d+$"
											SetFocusOnError="True"></asp:RegularExpressionValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>商品类型：</strong>
									</td>
									<td>
										<asp:RadioButtonList ID="ProClass" runat="server" RepeatDirection="Horizontal" Width="179px">
											<asp:ListItem Selected="True" Value="1">正常销售</asp:ListItem>
											<asp:ListItem Value="2">特价处理</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>属性设置：</strong>
									</td>
									<td>
										<asp:CheckBox ID="isnew" runat="server" Text="新品" />
										<asp:CheckBox ID="ishot" runat="server" Text="热销" />
										<asp:CheckBox ID="isbest" runat="server" Text="精品" />
										<asp:CheckBox ID="isreach" runat="server" Text="二手闲置" />
										<asp:CheckBox ID="ismarked" runat="server" Text="一口价" />
										<asp:CheckBox ID="isprefer" runat="server" Text="优惠" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>交易状态：</strong>
									</td>
									<td>
										<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
											AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
											<asp:ListItem Value="0" Selected="True">销售</asp:ListItem>
											<asp:ListItem Value="1">团购</asp:ListItem>
											<asp:ListItem Value="2">竞拍</asp:ListItem>
										</asp:RadioButtonList>
										<asp:MultiView ID="MultiView1" runat="server">
											<asp:View ID="View1" runat="server">
												<table>
													<tr>
														<td>
															团购数量：
														</td>
														<td>
															<asp:TextBox ID="ColonelNumtxt" runat="server"></asp:TextBox>
														</td>
														<td>
															团购价格：
														</td>
														<td>
															<asp:TextBox ID="ColonelMoneytxt" runat="server"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															团购保证金：
														</td>
														<td>
															<asp:TextBox ID="CautionMoneytxt" runat="server"></asp:TextBox>
														</td>
														<td>
														</td>
														<td>
														</td>
													</tr>
													<tr>
														<td>
															开始时间：
														</td>
														<td>
															<asp:TextBox ID="ColonelStartTimetxt" runat="server" OnFocus="setday(this)"></asp:TextBox>
														</td>
														<td>
															结束时间：
														</td>
														<td>
															<asp:TextBox ID="ColonelendTimetxt" runat="server" OnFocus="setday(this)"></asp:TextBox>
														</td>
													</tr>
												</table>
												<asp:RadioButtonList ID="OnCalonelUsertxt" runat="server">
													<asp:ListItem Value="1" Selected="True" Text="达到团购数量，在指定的日期内订单自动转为可结算状态"></asp:ListItem>
													<asp:ListItem Value="0" Text="未达到团购数量，在指定的日期内订单自动转为可结算状态"></asp:ListItem>
												</asp:RadioButtonList>
											</asp:View>
											<asp:View ID="View2" runat="server">
												<table>
													<tr>
														<td>
															竞拍起始价格：
														</td>
														<td>
															<asp:TextBox ID="txtColonelMoneys" runat="server"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															竞拍保证金：
														</td>
														<td>
															<asp:TextBox ID="txtCautionMoney" runat="server"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															开始时间：
														</td>
														<td>
															<asp:TextBox ID="txtColonelStartTime" runat="server" Text="" OnFocus="setday(this)"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															结束时间：
														</td>
														<td>
															<asp:TextBox ID="txtColonelendTime" runat="server" OnFocus="setday(this)"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<asp:CheckBox ID="txtOnCalonelMoney" runat="server" Selected="True" Text="达到指定价格，在指定的日期内订单自动转为可结算状态" /><br />
															<asp:CheckBox ID="txtOnCalonelTime" runat="server" Selected="True" Text="达到指定日期，在指定的日期内订单自动转为可结算状态" /><br />
															<strong>注意：本商品的销售价格为竞拍的最低承受价格</strong>
														</td>
													</tr>
												</table>
												<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtColonelMoneys"
													ErrorMessage="请输入正确的价格" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator></asp:View>
										</asp:MultiView>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>交易操作：</strong>
									</td>
									<td>
										<asp:CheckBox ID="Sales" Text="打勾表示允许交易，否则不允许交易" runat="server" />
									</td>
								</tr>
							</tbody>
							<tbody id="Tabs1" style="display: none">
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>商品简介：</strong>
									</td>
									<td>
										用于首页及栏目页显示，不要超过255个字符<br />
										<asp:TextBox ID="Proinfo" runat="server" Height="50px" TextMode="MultiLine" Width="500px" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" width="20%" style="height: 24px">
										<strong>详细介绍：</strong>
									</td>
									<td style="height: 24px; width: 80%;">
										<textarea cols="80" id="Procontent" width="580px" height="200px" name="Procontent"
											rows="10" runat="server"></textarea>
										<script id="headscript" type="text/javascript">
//<![CDATA[
											CKEDITOR.replace('Procontent',
{
skin: 'v2',
enterMode: 2,
shiftEnterMode: 2,
toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink','Image', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
});
//]]>
										</script>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>商品清晰图：</strong>
									</td>
									<td>
										<asp:TextBox ID="Clearimg" runat="server" Width="80%" /><iframe id="bigimgs" style="top: 2px"
											src="../fileupload.aspx?menu=Clearimg" width="100%" height="25px" frameborder="0"
											marginheight="0" marginwidth="0" scrolling="no"></iframe>
									</td>
								</tr>
								<tr class="tdbg" id="addsmallimg">
									<td class="tdbgleft" width="20%">
										<strong>商品缩略图：</strong>
									</td>
									<td>
										<asp:TextBox ID="Thumbnails" runat="server" Width="80%" /><iframe id="smallimgs"
											style="top: 2px" src="../fileupload.aspx?menu=Thumbnails" width="100%" height="25px"
											frameborder="0" marginheight="0" marginwidth="0" scrolling="no"></iframe>
									</td>
								</tr>
							</tbody>
							<tbody id="Tabs2" style="display: none">
								<tr class="tdbg">
									<td class="tdbgleft" style="height: 26px">
										<strong>选择花材：</strong>
									</td>
									<td style="height: 26px;">
									<input ID="Button3" class="C_input" Style="width: 100px"  value="添加花材" onclick="SelectFlower()"/>
									<input ID="Text1" class="C_input" Style="width: 100px"  value="清空花材" onclick="ClearSelect()"/>
									 <br />
										<span runat="server" id="Span2"></span>
									</td>
								</tr>
							</tbody>
							<tbody id="Tabs3" style="display: none">
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>生 产 商：</strong>
									</td>
									<td>
										<asp:TextBox ID="Producer" runat="server" Width="214px"></asp:TextBox>
										【<a href="###" onclick="SelectProducer();">请选择</a>】
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>品牌/商标：</strong>
									</td>
									<td>
										<asp:TextBox ID="Brand" runat="server" Width="214px"></asp:TextBox>
										【<a href="###" onclick="SelectBrand();">请选择</a>】
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>缺货时允许购买：</strong>
									</td>
									<td>
										<asp:CheckBox ID="Allowed" runat="server" Text="打勾表示缺货时允许购买， 否则缺货时不允许购买" />
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>限购数量：</strong>
									</td>
									<td>
										<asp:TextBox ID="Quota" runat="server" Width="100px">10</asp:TextBox>
										<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Quota"
											ErrorMessage="限购数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>最低购买数量：</strong>
									</td>
									<td>
										<asp:TextBox ID="DownQuota" runat="server" Width="100px">1</asp:TextBox>
										<asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="DownQuota"
											ErrorMessage="最低购买数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" style="height: 24px">
										<strong>库存数量：</strong>
									</td>
									<td style="height: 24px">
									<asp:HiddenField ID="hfstock" runat="server" />
										<asp:TextBox ID="Stock" runat="server" Width="100px">0</asp:TextBox>
										<asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="Stock"
											ErrorMessage="库存数量必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" style="height: 24px">
										<strong>库存报警下限：</strong>
									</td>
									<td style="height: 24px; width: 592px;">
										<asp:TextBox ID="StockDown" runat="server" Width="100px">-1</asp:TextBox>
										<asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="StockDown"
											ErrorMessage="库存报警下限必须是数字!" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
									</td>
								</tr>
								<tr class="tdbg" style="display: none">
									<td class="tdbgleft">
										<strong>前台库存计算方式：</strong>
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td style="width: 32%">
													<asp:RadioButtonList ID="JisuanFs" runat="server" RepeatDirection="Horizontal">
														<asp:ListItem Selected="True" Value="0">实际库存</asp:ListItem>
														<asp:ListItem Value="1">虚拟库存</asp:ListItem>
													</asp:RadioButtonList>
												</td>
												<td width="89%">
													（实际库存－已订购数）
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>税率设置：</strong>
									</td>
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
									<td class="tdbgleft">
										<strong>商品税率：</strong>
									</td>
									<td>
										<asp:TextBox ID="Rate" runat="server" />
										%
										<asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
											ControlToValidate="Rate" ErrorMessage="商品税率必须是数字!" ValidationExpression="^(-?\d+)(\.\d+)?$"
											SetFocusOnError="True"></asp:RegularExpressionValidator>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>商品推荐等级：</strong>
									</td>
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
							<tbody id="Tabs4" style="display: none">
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>市场参考价：</strong>
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td style="width: 23%; height: 21px;">
													<asp:TextBox ID="ShiPrice" runat="server" Width="51px" />
													<asp:HiddenField ID="hfprice" runat="server" />
													<asp:HiddenField ID="hfFesPrice" runat="server" />
													<asp:HiddenField ID="hfBookprice" runat="server" />
													元 <font color="red">*</font>
												</td>
												<td width="76%" style="height: 21px">
													购买时参考的市场零售价，可以比当前零售价高。<asp:RegularExpressionValidator ID="RegularExpressionValidator13"
														runat="server" ControlToValidate="ShiPrice" ErrorMessage="市场价格格式不对!" ValidationExpression="\d+[.]?\d*"
														Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator
															ID="RequiredFieldValidator3" runat="server" ControlToValidate="ShiPrice" ErrorMessage="市场价不能为空!"
															SetFocusOnError="True"></asp:RequiredFieldValidator>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>当前零售价：</strong>
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td style="width: 23%; height: 20px;">
													<asp:TextBox ID="LinPrice" runat="server" Width="51px" />
													元 <font color="red">*</font>
												</td>
												<td width="78%" style="height: 20px">
													商店销售此商品时的价格。<asp:RegularExpressionValidator ID="RegularExpressionValidator14" runat="server"
														ControlToValidate="LinPrice" ErrorMessage="零售价格式不对!" ValidationExpression="\d+[.]?\d*"
														Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator><asp:RequiredFieldValidator
															ID="RequiredFieldValidator4" runat="server" ControlToValidate="LinPrice" ErrorMessage="零售价不能为空!"
															SetFocusOnError="True"></asp:RequiredFieldValidator>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								 <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
									<td class="tdbgleft"><strong>会员价:</strong></td>
									<td><asp:UpdatePanel ID="UpdatePanel1" runat="server">
										<ContentTemplate>
										<asp:RadioButtonList ID="rdoUserPrice" runat="server"  RepeatDirection="Horizontal" AutoPostBack="True" 
											onselectedindexchanged="rdoUserPrice_SelectedIndexChanged">
										<asp:ListItem Value="0" Selected="True">会员价</asp:ListItem>
										<asp:ListItem Value="1">会员组</asp:ListItem>
										</asp:RadioButtonList >
										<div id="userP" runat="server">会员价：<asp:TextBox id="userPrice" runat='server'  class="l_input" Width="35px"></asp:TextBox>元</div>
										<div id="divGroup" runat="server" visible="false">
										<asp:Repeater ID="repGroup" runat="server">
										<ItemTemplate>
										<asp:HiddenField ID="groupID" runat="server" Value='<%#Eval("GroupID") %>' />
											<%#Eval("GroupName")%>：<asp:TextBox ID="GroupPrice" runat='server' class="l_input" Width="30px"></asp:TextBox>元
										</ItemTemplate>
										</asp:Repeater>
									</div> </ContentTemplate></asp:UpdatePanel></td>
								</tr>
							   
									<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
									<td class="tdbgleft"><strong>节日价格:</strong></td>
									<td> <asp:TextBox ID="txtDayPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
										<asp:RegularExpressionValidator ID="RegularExpressionValidator1"  runat="server" ControlToValidate="txtDayPrice" ErrorMessage="节日价格格式不正确!"
											ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
								</tr>
									<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
									<td class="tdbgleft"><strong>节日时间:</strong></td>
									<td><div id='hotelDiv'><asp:TextBox id='CheckInDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox>至 
									<asp:TextBox id='CheckOutDate' runat="server" Text="yyyy-mm-dd" class="l_input"></asp:TextBox></div>
									<input id='IntervallCheckInAndChekOut' value='1' type='hidden' />
									<input id='CheckOut' type='hidden' runat="server" />
									<script type='text/javascript' src='/JS/systemall.js'></script><script type='text/javascript' src='/JS/homecn.js'></script>
									<asp:HiddenField ID="serverdate" runat="server"  value='2010-8-31' /><div id='m_contentend'></div>
										</td>
								</tr>
									<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
									<td class="tdbgleft"><strong>预订价格:</strong></td>
									<td> <asp:TextBox ID="txtBookPrice" runat="server"  class="l_input"  Height="19px"></asp:TextBox> 
										<asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="txtBookPrice" ErrorMessage="预订价格格式不正确!"
											ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
								</tr>
									<tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" width="100%">
									<td class="tdbgleft"><strong>预订时间:</strong></td>
									<td> <asp:TextBox ID="txtBookDay" runat="server"  class="l_input"  Height="19px"></asp:TextBox> <font color="red">节日时间提前N天为预订价</font>
										<asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="txtBookDay" ErrorMessage="预订时间格式不正确!"
											ValidationExpression="\d+" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>允许批发：</strong>
									</td>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>
													<asp:RadioButtonList ID="Wholesales" runat="server" RepeatDirection="Horizontal"
														Width="106px">
														<asp:ListItem Value="1" onclick="show(this);">是</asp:ListItem>
														<asp:ListItem Selected="True" Value="0" onclick="show(this);">否</asp:ListItem>
													</asp:RadioButtonList>
												</td>
											</tr>
											<tr id="pifaji" style="display: none">
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0">
														<tr>
															<td style="height: 24px">
																① 一次性购买此商品数量满
																<asp:TextBox ID="s1" runat="server" Text='10' Width="49px" />
																时，批发价为
																<asp:TextBox ID="j1" runat="server" Width="68px">0</asp:TextBox>
																元
															</td>
														</tr>
														<tr>
															<td height="24">
																② 一次性购买此商品数量满
																<asp:TextBox ID="s2" runat="server" Text='50' Width="49px" />
																时，批发价为
																<asp:TextBox ID="j2" runat="server" Width="68px">0</asp:TextBox>
																元
															</td>
														</tr>
														<tr>
															<td height="24">
																③ 一次性购买此商品数量满
																<asp:TextBox ID="s3" runat="server" Text='100' Width="49px" />
																时，批发价为
																<asp:TextBox ID="j3" runat="server" Width="68px">0</asp:TextBox>
																元
															</td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft">
										<strong>允许单独交易：</strong>
									</td>
									<td>
										<asp:RadioButtonList ID="Wholesaleone" runat="server" RepeatDirection="Horizontal"
											Width="106px">
											<asp:ListItem Selected="True" Value="1">是</asp:ListItem>
											<asp:ListItem Value="0">否</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>购买积分：</strong>
									</td>
									<td>
										购买一件此商品可以得到
										<asp:TextBox ID="Integral" runat="server" />
										积分
										<asp:RegularExpressionValidator ID="RegularExpressionValidator16" runat="server"
											ControlToValidate="Integral" ErrorMessage="积分必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator>
									</td>
								</tr>
							</tbody>
							<tbody id="Tabs5" style="display: none">
								<tr class="tdbg">
									<td class="tdbgleft" width="20%">
										<strong>促销方案：</strong>
									</td>
									<td valign="top">
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td rowspan="5" style="width: 2%" valign="top">
													<asp:RadioButtonList ID="Preset" runat="server">
														<asp:ListItem Value="1"></asp:ListItem>
														<asp:ListItem Value="2"></asp:ListItem>
														<asp:ListItem Value="3"></asp:ListItem>
														<asp:ListItem Value="4"></asp:ListItem>
														<asp:ListItem Value="5"></asp:ListItem>
													</asp:RadioButtonList>
												</td>
												<td width="96%" height="22">
													&nbsp;不促销
												</td>
											</tr>
											<tr>
												<td height="22">
													&nbsp;买&nbsp;<asp:TextBox ID="TextBox1" Text="1" runat="server" Width="26px"></asp:TextBox>
													送&nbsp;<asp:TextBox ID="TextBox2" runat="server" Text="1" Width="26px"></asp:TextBox>同样商品
												</td>
											</tr>
											<tr>
												<td style="height: 22px">
													&nbsp;买&nbsp;<asp:TextBox Text="1" ID="TextBox3" runat="server" Width="26px"></asp:TextBox>
													送其他商品 赠品名称：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
													<asp:Button ID="Button6" runat="server" Text="浏览..." />
													<asp:HiddenField ID="regproid" runat="server" />
												</td>
											</tr>
											<tr>
												<td height="22">
													&nbsp;送&nbsp;<asp:TextBox ID="TextBox5" runat="server" Text="1" Width="26px"></asp:TextBox>
													同样商品
												</td>
											</tr>
											<tr>
												<td height="22">
													&nbsp;送其他商品 赠品名称：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
													<asp:Button ID="Button7" runat="server" Text="浏览..." />
													<asp:HiddenField ID="regproidother" runat="server" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</tbody>
							<tbody id="Tabs6" style="display: none">
								<asp:Literal ID="ModelHtml" runat="server"></asp:Literal></tbody><tbody id="Tabs6"
									style="display: none"><tr class="tdbg">
										<td class="tdbgleft" width="20%" style="height: 24px">
											<strong>更新时间：</strong>
										</td>
										<td style="height: 24px; width: 592px;">
											<asp:TextBox ID="UpdateTime" runat="server" />
											<span class="STYLE1">*<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
												ControlToValidate="UpdateTime" Display="Dynamic" ErrorMessage="更新时间不能为空!" SetFocusOnError="True"></asp:RequiredFieldValidator>
											</span>
										</td>
									</tr>
									<tr class="tdbg">
										<td class="tdbgleft" width="20%">
											<strong>内容页模板：</strong>
										</td>
										<td>
											<asp:TextBox ID="ModeTemplate" runat="server" />
											<input type="button" value="选择模板" onclick="WinOpenDialog('../../manage/Template/TemplateList.aspx?OpenerText='+escape('ModeTemplate')+'&FilesDir=',650,480)"
												class="btn" />
										</td>
									</tr>
								</tbody>
							<tbody id="Tabs7" style="display: none">
								<tr class="tdbg">
									<td id="tdDeliverMoney" colspan="2" runat="server">
									</td>
								</tr>
							</tbody>
						</table>
						<asp:ValidationSummary ID="ValidationSummary1" runat="server" />
					</td>
				</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
				<tr>
					<td align="center" style="height: 59px">
						&nbsp; &nbsp;
						<asp:Button ID="EBtnSubmit" Text="保存商品信息" runat="server" CssClass="C_input" OnClientClick="numChange('0');" OnClick="EBtnSubmit_Click1" />
					</td>
				</tr>
			</table>
	</asp:Panel>
</div>
</form>
</body>
</html>