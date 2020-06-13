
<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_TGALL, App_Web_yc1b2kmm" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
    <title>团购商品</title>
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
        var hiddenidvalue = opener.document.getElementById("Hiddenbind").value; //获取已经存在的ID值
        hiddenidvalue = "," + hiddenidvalue + ","; //初始查询

        for (i = 0; i < elm.length; i++) {
            if (elm[i].type == "checkbox" && elm[i].id != spanChk.id) {
                boxlist = boxlist + 1;
                if (elm[i].checked == true) {
                    var tempvalue = "," + elm[i].value + ","; //初始ID
                    if (hiddenidvalue.indexOf(tempvalue) == -1) {
                        listheight = listheight + 1;
                        innterhtml = innterhtml + "<TR>" + form1.getElementsByTagName("tr").item(boxlist + 2, 0).innerHTML + "<td align=center onclick=deleteRow('txtTables',this.parentElement.rowIndex,'" + elm[i].value + "')><u style=cursor:pointer>删除</u></td></TR>";
                    }
                    else//修改父页中绑定的商品数量
                    {
                        var topinputvalue = document.getElementById("pronum" + elm[i].value).value;
                        opener.document.getElementById("pronum" + elm[i].value).value = parseInt(opener.document.getElementById("pronum" + elm[i].value).value) + parseInt(topinputvalue);
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
            var bindstr = opener.document.getElementById("Hiddenbind").value;
            if (bindstr != "") { bindstr = bindstr + ","; }
            var tempboxstrs = bindstr + listbox;
            var reg = new RegExp(",,", "g")
            tempboxstrs = tempboxstrs.replace(reg, ",");
            opener.document.getElementById("Hiddenbind").value = tempboxstrs;
        }

        var topstr = "<table width=100% border=0 cellspacing=1 cellpadding=1 id=txtTables> <tr class=tdbgleft> <td width=5% height=24 align=center><strong>ID</strong></td> <td width=5% height=24 align=center> <span name=CheckBox1><input id=CheckAllCheckBox1 type=checkbox name=CheckAllCheckBox1 onclick=CheckAll(this); /></span></td> <td width=10% height=24 align=center><strong>商品图片</strong></td><td width=35% height=24 align=center><strong>商品名称</strong></td><td width=15% height=24 align=center><strong>商品数量</strong></td><td width=20% height=24 align=center><strong>商品零售价</strong></td><td width=15% height=24 align=center><strong>操作</strong></td></tr>";
        if (innterhtml != "") {
            if (opener.document.getElementById("Span1").innerHTML == "") {
                opener.document.getElementById("Span1").innerHTML = topstr + innterhtml;
                opener.document.getElementById("Span1").innerHTML = opener.document.getElementById("Span1").innerHTML + "</TABLE>";
            }
            else {
                var tempstr = opener.document.getElementById("Span1").innerHTML;
                var reg = new RegExp("</TBODY>", "g")
                tempstr = tempstr.replace(reg, "");
                reg = new RegExp("</TABLE>", "g")
                tempstr = tempstr.replace(reg, "");
                tempstr = tempstr + innterhtml;
                opener.document.getElementById("Span1").innerHTML = tempstr + "</TBODY></table>";

            }
        }
        window.close();
    }   
</script>
<body>
    <form id="form1" runat="server">
    <table width="100%" border="0" cellpadding="2" cellspacing="0" class="border" id="TABLE1">
        <tr class="title">
            <td align="left" colspan="2">
                <b>团购列表:</b>
            </td>
        </tr>
        <tr>
            <td valign="top" colspan="2">
                <table width="100%" border="0" cellspacing="1" cellpadding="1">
                    <tr class="tdbgleft">
                        <td width="5%" height="24" align="center">
                            <strong>ID</strong>
                        </td>
                        <td width="5%" height="24" align="center">
                            <asp:CheckBox ID="CheckBox1" name="CheckBox1" runat="server" onclick="CheckAll(this);" />
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>团购人数</strong>
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>团购价格</strong>
                        </td>
                        <td width="20%" height="24" align="center">
                            <strong>总价</strong>
                        </td>
                        <td width="10%" height="24" align="center">
                            <strong>操作</strong>
                        </td>
                    </tr>
                    <asp:Repeater ID="Pagetable" runat="server" OnItemCommand="Pagetable_ItemCommand"
                        OnItemDataBound="Pagetable_ItemDataBound">
                        <ItemTemplate>
                            <tr class="tdbg">
                                <td height="24" align="center">
                                    <%#Eval("ID") %>
                                </td>
                                <td height="24" align="center">
                                    <input name="Item" id="Item<%#Eval("ID") %>" type="checkbox" value='<%#Eval("ID") %>'>
                                </td>
                                <td height="24" align="center">
                                    <asp:Label ID="lblNum" runat="server" Text=' <%#Eval("Number")%>'></asp:Label>
                                </td>
                                <td height="24" align="center">
                                    <asp:Label ID="lblPrice" runat="server" Text='<%#DataBinder.Eval(Container, "DataItem.price", "{0:N2}")%>'></asp:Label>
                                </td>
                                <td height="24" align="center">
                                    <asp:Label runat="server" ID="labelcount" Text=""></asp:Label>
                                </td>
                                <td height="24" align="center">
                                    <asp:LinkButton ID="lbDel" runat="server" CommandName="del" CommandArgument='<%#Eval("ID") %>'
                                        OnClientClick="return confirm('确定删除?')">删除</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                    <tr class="tdbg">
                        <td class="tdbgleft" colspan="6" align="center">
                            共
                            <asp:Label ID="Allnum" runat="server" Text=""></asp:Label>
                            条信息
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />
                            页次：<asp:Label ID="Nowpage" runat="server" Text="" />/<asp:Label ID="PageSize" runat="server"
                                Text="" />页
                            <asp:Label ID="pagess" runat="server" Text="" />条信息/页 转到第<asp:DropDownList ID="DropDownList1"
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
                <asp:Button ID="Button2" runat="server" class="C_input" Text="返回" OnClientClick="window.close();return false;" />
            </td>
        </tr>
    </table>
    <div id="view" runat="server">
    </div>
    </form>
</body>
</html>
