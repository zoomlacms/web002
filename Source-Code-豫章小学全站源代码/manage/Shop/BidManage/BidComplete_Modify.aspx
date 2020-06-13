<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_BidComplete_Modify, App_Web_wtzqf5go" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>编辑竞拍商品</title>
<link href="../../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/calendar.js" type="text/javascript"></script>
<script src="/JS/ajaxrequest.js"></script>
<script type="text/javascript">
    function TChange(obj) {
        var Stock = document.getElementById("stock").value;
        var sel = document.getElementById("tiptime");
        var Tips = document.getElementById("Tips");
        var autoCom = document.getElementById("autoCom");
        if (parseInt(Stock) < parseInt(obj)) {
            sel.innerHTML = "竞拍结束后商品在前台显示时间数：";
            Tips.innerHTML = "<font color='red'>竞拍商品数量大于库存数量</font>";
        } else if (obj < 2) {
            sel.innerHTML = "竞拍结束后商品在前台显示时间数：";
            Tips.innerHTML = "";
        } else if (autoCom.value == "0") {
            sel.innerHTML = "下一期进入竞拍间隔时间：";
            Tips.innerHTML = "";
        } else {
            sel.innerHTML = "竞拍结束后商品在前台显示时间数：";
            Tips.innerHTML = "";
        }
    }

    function autoChange(obj) {
        var sel = document.getElementById("tiptime");
        var txtBidNum = document.getElementById("txtBidNum").value;

        if (obj == 0 && parseInt(txtBidNum) > 1) {
            sel.innerHTML = "下一期进入竞拍间隔时间：";
        } else {
            sel.innerHTML = "竞拍结束后商品在前台显示时间数：";
        }
    }

    function SelCh(obj) {
        var addma = document.getElementById("addma");
        if (obj == 1) {
            addma.style.display = "";
        } else {
            addma.style.display = "none";
        }
    }
    function deldata(userid) {
        var objlist = document.getElementById("ListBox1");
        for (i = objlist.length - 1; i >= 0; i--) {
            if (objlist.options[i].value == userid) {
                objlist.remove(i);
            }
        }
    }
    function buttonclick(username, userid) {
        var objlist = document.getElementById("ListBox1");
        node = document.createElement("<option   value='" + userid + "'>");
        text = document.createTextNode(username);
        node.appendChild(text);
        objlist.appendChild(node);

        for (var i = 0; i < objlist.length; i++) {
            objlist.options[i].selected = true;
        }
    }

</script>
</head>
<body>
<form id="form1" runat="server">
 <div class="r_navigation">

<span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a href="BidComplete_Manage.aspx">竞拍管理</a></span>&gt;&gt; 
<asp:Label ID="txttitle" runat="server" Text="添加竞拍商品"></asp:Label></div><div class="clearbox"></div>
 <table id="Guess2" width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr align="center">
            <td colspan="2" class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
      </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td width="34%" height="22" class="tdbgleft">
                <strong>商品选择：</strong>
            </td>
            <td height="22" valign="middle">
                <asp:DropDownList ID="productid" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="productid_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="proname" runat="server" Visible="false"></asp:Label>
                <asp:HiddenField ID="cids" runat="server" />
                <asp:HiddenField ID="NodeID" runat="server" />
                <asp:HiddenField ID="ModeID" runat="server" />
                <asp:HiddenField ID="hfType" runat="server" />
                <asp:HiddenField ID="hffilename" runat="server" />
            </td>
        </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>竞拍时间段：</strong></td>
        <td style="height: 19px">
            从<asp:TextBox ID="txtStime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>
            &nbsp;到<asp:TextBox ID="txtEtime" onclick="calendar()" runat="server" class="l_input"></asp:TextBox>&nbsp;为止
        </td>
    </tr>
    <asp:HiddenField ID="stock" runat="server" />
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>是否自动进入竞拍：</strong></td>
        <td><select id="autoCom" runat="server" onchange="autoChange(this.value)">
                <option value="0" selected="selected">是</option>
                <option value="1">否</option>
            </select>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>商品参与竞拍数量：</strong></td>
        <td><input id="txtBidNum" runat="server" class="l_input" onchange="TChange(this.value)" value="1" /><div id="Tips" style="display:inline"></div>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong id="tiptime" runat="server">竞拍结束后商品在前台显示时间数：</strong></td>
        <td><asp:TextBox ID="txtSpTime" runat="server" class="l_input" Text="0.5"></asp:TextBox>小时
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3"  runat="server" ControlToValidate="txtSpTime" ErrorMessage="间隔时间必须是数字!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" width="20%" style="height: 19px"><strong>竞拍类型：</strong></td>
        <td><asp:DropDownList ID="ddlAucType" runat="server">
            <asp:ListItem Value="0">交易区</asp:ListItem>
            <asp:ListItem Value="1">体验区</asp:ListItem>
            </asp:DropDownList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>邮寄费用：</strong></td>
        <td><asp:TextBox ID="txtPostPrice" runat="server" class="l_input" Text="20"></asp:TextBox>(为零竞拍用户免邮费)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5"  runat="server" ControlToValidate="txtPostPrice" ErrorMessage="邮寄费用格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>时间封顶：</strong></td>
        <td><asp:TextBox ID="txtTimeTop" runat="server" class="l_input"></asp:TextBox>秒(为零不封顶)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2"  runat="server" ControlToValidate="txtTimeTop" ErrorMessage="时间封顶格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>赠送宝点数：</strong></td>
        <td><asp:TextBox ID="txtPru" runat="server" class="l_input"></asp:TextBox>点
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4"  runat="server" ControlToValidate="txtPru" ErrorMessage="宝点数格式不正确!"
                ValidationExpression="^-?\d+$" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>排列序号：</strong></td>
        <td><asp:TextBox ID="txtOrderBy" runat="server" class="l_input" Text="1"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ControlToValidate="txtOrderBy" ErrorMessage="排列序号必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>出价消耗宝点数量：</strong></td>
        <td><asp:TextBox ID="txtDepVal" runat="server" class="l_input" Text="100"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
    ControlToValidate="txtDepVal" ErrorMessage="宝点数量必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>出价商品价格增加：</strong></td>
        <td><asp:TextBox ID="txtAddPrice" runat="server" class="l_input" Text="1"></asp:TextBox>元
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6"  runat="server" ControlToValidate="txtAddPrice" ErrorMessage="出价价格格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>出价时间反弹秒数：</strong></td>
        <td><asp:TextBox ID="txtTimedown" runat="server" class="l_input" Text="10"></asp:TextBox>秒
        <asp:RegularExpressionValidator ID="RegularExpressionValidator19"  runat="server" ControlToValidate="txtTimedown" ErrorMessage="反弹秒数格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" width="20%" style="height: 19px"><strong>开启秘书处理：</strong></td>
        <td><asp:RadioButtonList ID="rdo" runat="server" RepeatDirection="Horizontal">
             <asp:ListItem Value="1">开启</asp:ListItem>
             <asp:ListItem Value="0">停用</asp:ListItem>
            </asp:RadioButtonList></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td class="tdbgleft" width="20%" style="height: 19px"><strong>竞拍机制：</strong></td>
        <td><select id="ddlAucExecType" runat="server" onchange="SelCh(this.value)">
                <option value="0">固定机制</option>
                <option value="1">加码机制</option>
            </select></td>
    </tr>
    <tbody id="addma" style="display:none">
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>加码的起始次数：</strong></td>
        <td><asp:TextBox ID="txtAmaNum" runat="server" class="l_input"></asp:TextBox>(竞拍多少次开始加码)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator15" runat="server"
    ControlToValidate="txtAmaNum" ErrorMessage="起始次数必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
        </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>加码的次数增倍：</strong></td>
        <td><asp:TextBox ID="TextBox13" runat="server" class="l_input"></asp:TextBox>倍(开始加码后竞拍次数以多少倍增加后继续加码)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator20" runat="server"
    ControlToValidate="TextBox13" ErrorMessage="次数增倍必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>拍品加码价格：</strong></td>
        <td><asp:TextBox ID="txtAddMShPrice" runat="server" class="l_input" Text="1"></asp:TextBox>元(即加码后每次出价商品价格增加数)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7"  runat="server" ControlToValidate="txtAddMShPrice" ErrorMessage="加码价格格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>加码宝点数：</strong></td>
        <td><asp:TextBox ID="TextBox12" runat="server" class="l_input" Text="10"></asp:TextBox>(即加码后每次出价消耗宝点增加数量)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator17" runat="server"
    ControlToValidate="TextBox12" ErrorMessage="加码宝点数必须是数字!" ValidationExpression="^-?\d+$"></asp:RegularExpressionValidator></td>
        </tr>
    </tbody>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" style="display:none">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>提前多少小时进行预告：</strong></td>
        <td><asp:TextBox ID="txtNoticeTime" runat="server" class="l_input" Text="24"></asp:TextBox>小时
            <asp:RegularExpressionValidator ID="RegularExpressionValidator18"  runat="server" ControlToValidate="txtNoticeTime" ErrorMessage="预告时间格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>参与竞拍会员：</strong></td>
        <td><asp:DropDownList ID="usertype" runat="server">
        </asp:DropDownList></td>
    </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>干扰最高价格：</strong></td>
        <td><asp:TextBox ID="txtgumaxprice" runat="server" class="l_input"></asp:TextBox>(即干扰达到该价格就停止干扰)</td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>商品状态：</strong></td>
        <td>
        <asp:RadioButtonList ID="rbstate" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem Value="3" Selected="True">即将竞拍</asp:ListItem>
            <asp:ListItem Value="1">正在竞拍</asp:ListItem>
            <asp:ListItem Value="2">结束竞拍</asp:ListItem>
        </asp:RadioButtonList>
        </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>起拍价格：</strong></td>
        <td style="height: 19px"><asp:TextBox ID="TextBox11" runat="server" Width="51px" class="l_input">0</asp:TextBox>(默认为0开始)
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8"  runat="server" ControlToValidate="TextBox11" ErrorMessage="起拍价格格式不正确!"
                ValidationExpression="\d+[.]?\d*" Display="Dynamic" SetFocusOnError="True"></asp:RegularExpressionValidator></td>
    </tr>
     <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
        <td class="tdbgleft" width="20%" style="height: 19px"><strong>干扰设置：</strong></td>
        <td> <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="0" Selected="True">关闭干扰</asp:ListItem>
                <asp:ListItem Value="1">商品干扰设置</asp:ListItem>
                <asp:ListItem Value="2">全局干扰设置</asp:ListItem>
        </asp:RadioButtonList></td>
    </tr>
     <tr>
        <td align="center" colspan="2" style="height: 59px" >&nbsp; &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input"  Text="保存竞拍商品" runat="server" OnClick="EBtnSubmit_Click" />
            <input type="button" class="C_input" value="返回列表" onclick="location.href='BidComplete_Manage.aspx'" id="Button2" />
        </td>
    </tr> 
</table>
</form>
</body>
</html>
