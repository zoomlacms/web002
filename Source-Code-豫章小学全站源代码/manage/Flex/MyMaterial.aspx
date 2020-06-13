<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_MyMaterial, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE >
<html >
<head runat="server">
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/material.css" rel="stylesheet" type="text/css" />
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
    function openUpload() {
        window.open("UserUpload.aspx", "上传图片", " height=100, width=300, top=300, left=300, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=n o, status=no");
    }
    </script>
<title>素材中心</title>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation" style="width:100%;">
<span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>广告管理</span>
&gt;&gt;  <span>素材中心</span> &nbsp; &nbsp;【<a href="javascript:void{};" style="color: Red" onclick="openUpload();" >上传图片</a>】
</div>
<div style="width:95%; margin:auto;">
           <div>
              <ul  class="dUl">
                <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                <li class="rpli"><div><img class="rpimg" src='<%#  "../../"+userUrl+"/"+myName+"/"+Eval("Name") %>' /></div><div style=" text-align:center;"><input type="checkbox"  name="chkImg"  value='<%#Eval("Name") %>'  /></div></li>
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
</body>
</html>
