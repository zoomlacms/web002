<%@ page language="C#" autoeventwireup="true" inherits="User_UserShop_SelectFlower, App_Web_x1ohhdfv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>选择花材</title>
<base target="_self" />
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
</head>
<script language="javascript" type="text/javascript">
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
function GetCheckvalue() {
	var spanChk = window.document.getElementById("CheckBox1");
	var elm = document.form1.elements;
	var listbox = "";
	var listheight = 0;
	var listnum = 0;
	var boxlist = 0;
	var innterhtml = "";
	var hiddenidvalue = window.parent.document.getElementById("HiddenField1").value; //获取已经存在的ID值
		hiddenidvalue = "," + hiddenidvalue + ","; //初始查询
   
	for (i = 0; i < elm.length; i++) {
		if (elm[i].type == "checkbox" && elm[i].id != spanChk.id) {
			boxlist = boxlist + 1;
			if (elm[i].checked == true) {
				var tempvalue = "," + elm[i].value + ","; //初始ID

				if (hiddenidvalue.indexOf(tempvalue) == -1) {
					listheight = listheight + 1;
					innterhtml = innterhtml + "<TR>" + form1.getElementsByTagName("tr").item(boxlist + 1, 0).innerHTML + "<td align=center onclick=deleteRow('txtTables',this.parentElement.rowIndex,'" + elm[i].value + "')><u style=cursor:pointer>删除</u></td></TR>";
				}
				else//修改父页中绑定的商品数量
				{
					var topinputvalue ="0";
					if (document.getElementById("pronums" + elm[i].value).value != "") {
						topinputvalue = document.getElementById("pronums" + elm[i].value).value;
					}
					var parentnum = "0";
					 if (parent.document.getElementById("pronums" + elm[i].value).value!="") {
						parentnum =parent.document.getElementById("pronums" + elm[i].value).value;
					}
					parent.document.getElementById("pronums" + elm[i].value).value = parseInt(parentnum) + parseInt(topinputvalue);
				}
			}
		}
	}

	for (i = 0; i < elm.length; i++) {
		if (elm[i].type == "checkbox" && elm[i].id != spanChk.id) {
			if (elm[i].checked == true) {
				var tempvalue = "," + elm[i].value + ","; //初始ID
				//判断是否存在此ID
				if (hiddenidvalue.indexOf(tempvalue) == -1) {
					//添加ID到隐藏控件
					listnum++;
					if (listnum == listheight) {
						listbox = listbox + elm[i].value;
					} else {
						listbox = listbox + elm[i].value + ',';
					}
				}
			}
		}
	}

	if (listbox != "") {
		var bindstr = parent.document.getElementById("HiddenField1").value;
		if (bindstr != "") { bindstr = bindstr + ","; }
		tempboxstrs = bindstr + listbox;
		var reg = new RegExp(",,", "g")
		tempboxstrs = tempboxstrs.replace(reg, ",");
		parent.document.getElementById("HiddenField1").value = tempboxstrs;
	}


	var topstr = "<table width=100% border=0 cellspacing=1 cellpadding=1 id=txtTables> <tr class=tdbgleft> <td width=5% height=24 align=center><strong>ID</strong></td> <td width=5% height=24 align=center> <span name=CheckBox1><input id=CheckAllCheckBox1 type=checkbox name=CheckAllCheckBox1 onclick=CheckAll(this); /></span></td>  <td width=15% height=24 align=center><strong>花材名称</strong></td> <td width=15% height=24 align=center><strong>花材数量</strong></td><td width=15% height=24 align=center><strong>花材价格</strong></td><td width=15% height=24 align=center><strong>花材预订价</strong></td><td width=15% height=24 align=center><strong>花材节日价</strong></td><td width=15% height=24 align=center><strong>操作</strong></td></tr>";
	if (innterhtml != "") {
		if (window.parent.document.getElementById("Span2").innerHTML == "") {
			if(innterhtml.indexOf("<TR><TD class=tdbgleft colSpan=5 align=middle>")>-1);
				innterhtml = innterhtml.split("<TR><TD class=tdbgleft colSpan=5 align=middle>")[0];

				window.parent.document.getElementById("Span2").innerHTML = topstr + innterhtml;
			window.parent.document.getElementById("Span2").innerHTML = parent.document.getElementById("Span2").innerHTML + "</TABLE>";
		}
		else {
			var tempstr = parent.document.getElementById("Span2").innerHTML;
			var reg = new RegExp("</TBODY>", "g")
			tempstr = tempstr.replace(reg, "");
			reg = new RegExp("</TABLE>", "g")
			tempstr = tempstr.replace(reg, "");

			if (innterhtml.indexOf("<TR><TD class=tdbgleft colSpan=5 align=middle>") > -1);
				innterhtml = innterhtml.split("<TR><TD class=tdbgleft colSpan=5 align=middle>")[0];

			tempstr = tempstr + innterhtml;
			window.parent.document.getElementById("Span2").innerHTML = tempstr + "</TBODY></table>";
		}
	}
	var hidPrice = 0;   //花材总价格
	var bookprices = 0;   //花材预订价
	var festprices = 0;   //花材节日价
	var hid = window.parent.document.getElementById("HiddenField1").value;
	var hids = hid.split(',');
	for (i = 0; i < hids.length; i++) {
		var num = 0;
		var price = 0;
		var bookprice = 0;  //预订价
		var festprice = 0;   //节日价

		if (hids[i] != "") {
			if (window.parent.document.getElementById("pronums" + hids[i]) != null) {
				if (window.parent.document.getElementById("pronums" + hids[i]).value != "") {
					num = parseInt(window.parent.document.getElementById("pronums" + hids[i]).value);
				}
				price = parseFloat(window.parent.document.getElementById("prices" + hids[i]).innerText.substring(1));
				bookprice = parseFloat(window.parent.document.getElementById("bookprice" + hids[i]).innerText.substring(1));
				festprice = parseFloat(window.parent.document.getElementById("festprice" + hids[i]).innerText.substring(1));

			} else {
				if (document.getElementById("pronums" + hids[i]).value != "") {
					num = parseInt(document.getElementById("pronums" + hids[i]).value);
				}
				price = parseFloat(document.getElementById("prices" + hids[i]).innerText.substring(1));
				bookprice = parseFloat(document.getElementById("bookprice" + hids[i]).innerText.substring(1));
				festprice = parseFloat(document.getElementById("festprice" + hids[i]).innerText.substring(1));
			}
			hidPrice = hidPrice + (num * price);
			bookprices = bookprices + (num * bookprice);
			festprices = festprices + (num * festprice);
		   
		}
   }
	window.parent.document.getElementById("ShiPrice").value = hidPrice;
	window.parent.document.getElementById("LinPrice").value = hidPrice;
	window.parent.document.getElementById("hfBookprice").value = bookprices;
	window.parent.document.getElementById("hfFesPrice").value = festprices;
	window.parent.document.getElementById("txtDayPrice").value = bookprices;
	window.parent.document.getElementById("txtBookPrice").value = festprices;
	window.parent.document.getElementById("LinPrice").disabled = "disabled";
	window.parent.document.getElementById("ShiPrice").disabled = "disabled";
	window.parent.document.getElementById("txtDayPrice").disabled = "disabled";
	window.parent.document.getElementById("txtBookPrice").disabled = "disabled";
	window.parent.document.getElementById("hfprice").value = hidPrice;
}


function numChange(obj)  //数量改变
{
	var num = document.getElementById("pronum" + obj).value;
	if (isNaN(num)) {
		alert("请输入数字");
	}
} 
</script>
<body>
<form id="form1" runat="server">
<table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
    <tr>
        <td valign="top" colspan="2">
            <table width="100%" border="0" cellspacing="1" cellpadding="1">
                <tr class="tdbgleft">
                    <td width="5%" height="24" align="center">
                        <strong>ID</strong>
                    </td>
                    <td width="5%" height="24" align="center">
                        <asp:CheckBox ID="CheckBox1" name="CheckBox1" runat="server" onclick="CheckAll(this);"  />
                    </td>
                    <td width="20%" height="24" align="center">
                        <strong>花材名称</strong>
                    </td>
                    <td width="15%" height="24" align="center">
                        <strong>花材数量</strong>
                    </td>
                    <td width="15%" height="24" align="center">
                        <strong>花材价格</strong>
                    </td>
                    <td width="20%" height="24" align="center">
                        <strong>花材预订价</strong>
                    </td>
                        <td width="20%" height="24" align="center">
                        <strong>花材节日价</strong>
                    </td>
                </tr>
                <asp:Repeater ID="Pagetable" runat="server">
                    <ItemTemplate>
                        <tr class="tdbg">
                            <td height="24" align="center">
                                <%#Eval("ID") %>
                            </td>
                            <td height="24" align="center">
                                <input name="Items" id="Items<%#Eval("ID") %>" type="checkbox" value='<%#Eval("ID") %>'>
                            </td>
                            <td height="24" align="center">
                                <%#Eval("Flo_Name")%>
                            </td>
                            <td height="24" align="center">
                                <input name="pronums<%#Eval("ID") %>" type="text" class="l_input" value="1" id="pronums<%#Eval("ID") %> "
                                    onchange="numChange('<%#Eval("ID") %>')"  style="width: 54px;" />
                            </td>
                            <td height="24" align="center">
                                <span class="l_input" id="prices<%#Eval("ID") %>"><%#Eval("Flo_Price", "{0:c}")%></span>
                            </td>
                            <td height="24" align="center">
                                <span class="l_input" id="bookprice<%#Eval("ID") %>"><%#GetPrice(Eval("Flo_BookPrice", "{0:c}"))%></span>
                            </td>
                            <td height="24" align="center">
                                <span class="l_input" id="festprice<%#Eval("ID") %>"><%#GetPrice(Eval("Flo_FestlPrice", "{0:c}"))%></span>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
                <!--page--->
                <tr class="tdbg">
                    <td class="tdbgleft" colspan="7" align="center">
                        共
                        <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                        条信息
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />
                        页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:TextBox ID="txtPage" runat="server"  AutoPostBack="true" class="l_input" Width="16px" Height="16px" OnTextChanged="txtPage_TextChanged"></asp:TextBox>
                        条信息/页 转到第<asp:DropDownList ID="DropDownList1"
                            runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                        页
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" class="C_input" Text="添加花材" OnClientClick="GetCheckvalue();return false;" />
        </td>
    </tr>
</table>
</form>
</body>
</html>