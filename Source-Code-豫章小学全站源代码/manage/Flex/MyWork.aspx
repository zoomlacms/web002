<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_MyWork, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE >
<html >
<head id="Head1" runat="server">
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/material.css" rel="stylesheet" type="text/css" />
<script src="/JS/Popup.js" language="javascript" type="text/javascript"></script>
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $("#chkAll").click(function () {
            if ($(this).attr("checked")) {
                $("input[name='chkImg']").attr("checked", "checked");
            } else {
                $("input[name='chkImg']").removeAttr("checked")
            }
        })
    });
    function showImg(obj) {

        var evt = getEvent();
        var btop = document.body.scrollTop + evt.clientY + 5 + "px";
        var bleft = document.body.scrollLeft + evt.clientX + 5 + "px";
        $("#Magnifying").attr("src", $(obj).attr("src"));
        $("#boxCover").css({ "top": btop, "left": bleft }).show();

    }
    function hiddleImg(obj) {
        $("#boxCover").hide();
    }
    </script>
<title>我的作品</title>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation" style="width:100%;">
<span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>广告管理</span>
&gt;&gt;  <span>我的作品</span>
</div>
<div style="width:95%; margin:auto;">
           <div>
              <ul  class="dUl">
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <li class="rpli"><div><img class="rpimg" src='<%#  "../../"+userUrl+"/"+myName+myWork+"/"+Eval("Name") %>' style="cursor:pointer;"  onmouseover="showImg(this)" onmouseout="hiddleImg(this)"  /></div><div style=" text-align:center;"><input type="checkbox"  name="chkImg"  value='<%#Eval("Name") %>'  />&nbsp;&nbsp;</div></li>
                </ItemTemplate>
                </asp:Repeater>
                 </ul>
             </div>

 <div  class="pageDiv"> 
       <span style="text-align: center">
                   共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                            <asp:Label ID="Toppage" runat="server" Text="" />
                            <asp:Label ID="Nextpage" runat="server" Text="" />
                            <asp:Label ID="Downpage" runat="server" Text="" />
                            <asp:Label ID="Endpage" runat="server" Text="" />页次：
                            <asp:Label ID="Nowpage" runat="server" Text="" />/
                            <asp:Label ID="PageSize" runat="server" Text="" />页
                            <asp:TextBox ID="txtPage"  runat="server" AutoPostBack="true" 
                        class="l_input" Width="16px"  Height="16px" ontextchanged="txtPage_TextChanged"></asp:TextBox> 条数据/页 转到第
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnTextChanged="DropDownList1_TextChanged"></asp:DropDownList>
                            页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage"  ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                     </span>
    
     </div>
            <div class="pageDiv" style=" text-align:left;">
            <input type="checkbox"   id="chkAll"  name="chkAll" />全选
            <asp:Button ID="btnDel" runat="server" Text="删除" onclick="btnDel_Click" />
     </div>
</div>
</form>
<div id='boxCover' style=" position:absolute; top:0px; left:0px; z-index:99; width:auto; height:auto;display:none; border:1px solid #c7e0f6;"><img src="" alt="" id="Magnifying"  style=" border:0px;" /></div>
<div style="width:100%; height:300px; display:block;"></div>
</body>
</html>