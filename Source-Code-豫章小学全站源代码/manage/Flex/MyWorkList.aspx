<%@ page language="C#" autoeventwireup="true" inherits="manage_Flex_MyWorkList, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html >
<head >
<title>我的作品列表</title>
<link href="../../App_Themes/AdminDefaultTheme/material.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script src="/JS/Popup.js" language="javascript" type="text/javascript"></script>
<script src="../../JS/jquery-1.4.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
    var txtName = "<%=Request.QueryString["txtName"].ToString() %>";
    function SetValue(text) {
        opener.document.getElementById('txt'+txtName).value = text;
        window.close();
    }

    function showImg(obj){
    
     var evt=getEvent();
     var btop=document.body.scrollTop+evt.clientY+5+"px";
     var bleft=document.body.scrollLeft+evt.clientX+5+"px"; 
     $("#Magnifying").attr("src",$(obj).attr("src"));
     $("#boxCover").css({"top":btop,"left":bleft}).show();
     
    }
    function hiddleImg(obj){
     $("#boxCover").hide();
    }
    </script>
</head>
<body>
<div class="r_navigation">    
<span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span><a href="../Plus/Advertisement.aspx" title="广告编辑">广告编辑</a></span> &gt;&gt;<span>从我的作品提取</span>
</div>
<div style="width:95%; margin:auto;">
<ul  class="dUl">
<asp:Repeater ID="Repeater1" runat="server">
<ItemTemplate>
<li class="rpli" >
<img alt="" title="单击提取图片" class="rpimg" src='<%#  "../../"+userUrl+"/"+myName+myWork+"/"+Eval("Name") %>' onclick="SetValue('<%#  "/"+userUrl+"/"+myName+myWork+"/"+Eval("Name") %>')" style="cursor:pointer;"  onmouseover="showImg(this)" onmouseout="hiddleImg(this)" /></li>
</ItemTemplate>
</asp:Repeater>
</ul>
</div>
<form runat="server">
       <div  class="pageDiv" style=" margin-top:20px;">
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
</form>
<div id='boxCover' style=" position:absolute; top:0px; left:0px; z-index:99; width:auto; height:auto;display:none; border:1px solid #c7e0f6;"><img src="" alt="" id="Magnifying"  style=" border:0px;" /></div>
<div style="width:100%; height:300px; display:block;"></div>
</body>
</html>
