<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profileConfige_MakeMoneyRegu, App_Web_w1dcdbqq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>赚钱计划规则</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" language="javascript">
    function show(obj) {
        document.getElementById("txtMinNum").value = "";
        document.getElementById("txtMaxNum").value = "";
        document.getElementById("txtAward").value = "";
        document.getElementById("hfmenu").value = obj;
        
        if (obj == "add") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "none";
            document.getElementById("div2").style.display = "";
            document.getElementById("btn").value = "添加";
        }
        if (obj == "updata") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "";
            document.getElementById("btn").value = "修改";
           
        }
        if (obj == "del") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "none";
            document.getElementById("btn").value = "删除";
        }
        if (obj == "view") {
            document.getElementById("add").style.display = "none";
            document.getElementById("view").style.display = "";
        }
    }

    function change() {
        if (document.getElementById("hfmenu").value == "updata" && document.getElementById("ddIds").value == "-1") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "";
            document.getElementById("div3").style.display = "none";
            document.getElementById("btn").value = "修改";
        }
        if (document.getElementById("hfmenu").value == "updata" && document.getElementById("ddIds").value != "-1") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "";
            document.getElementById("div3").style.display = "";
            document.getElementById("btn").value = "修改";
        }
        if (document.getElementById("hfmenu").value == "del") {
            document.getElementById("add").style.display = "";
            document.getElementById("view").style.display = "none";
            document.getElementById("div1").style.display = "";
            document.getElementById("div2").style.display = "none";
            document.getElementById("btn").value = "删除";
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a>返利信息配置</a></span> 
    &gt;&gt;<span>赚钱计划信息配置</span></div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" align="center"> <asp:Literal ID="LTitle" runat="server" Text="修改赚钱计划配置"></asp:Literal></td>
    </tr>
    <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;">
         <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" width="25%"><strong>赚钱计划规则(修改无效)：</strong></td>
                <td style="padding-bottom:10px;">
                 <div id="add" style="display:none;padding-bottom:5px; padding-top:5px">
                   <asp:HiddenField ID="hfmenu" runat="server" />
                   <div id="div1">规则编号:<asp:DropDownList ID="ddIds" runat="server" onchange="change()"></asp:DropDownList></div>
                    <div id="div2">会员数量最低值：<asp:TextBox ID="txtMinNum" runat="server"  class="l_input"></asp:TextBox>
                    <div id="div3">会员数量最高值：<asp:TextBox ID="txtMaxNum" runat="server"  class="l_input"></asp:TextBox></div>
                   推荐会员的奖励：<asp:TextBox ID="txtAward" runat="server"  class="l_input"></asp:TextBox></div>
                   <asp:Button ID="btn" runat="server" class="C_input" Text="添加" 
                         onclick="btn_Click"/>
                   <input type="button" class="C_input" value="取消" onclick="show('view')" />
                  </div>
                   <div id="view" runat="server" >
                   <textarea cols="80" id="txtHonorinfo" width="580px" height="200px" name="infoeditor" rows="10" runat="server" disabled="disabled"></textarea><br />
                   <input type="button" value="添加规则" class="C_input" onclick="show('add')" />&nbsp;<input type="button" value="修改规则" class="C_input" onclick="show('updata')" />&nbsp;<input type="button" class="C_input" value="删除规则" onclick="show('del')" />
                   </div>
                    <script id="Script1" type="text/javascript">
                        //<![CDATA[
                        CKEDITOR.replace('txtHonorinfo',
                    {
                        skin: 'v2',
                        enterMode: 2,
                        shiftEnterMode: 2,
                        toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                    });
                    //]]>
                    </script></td>
            </tr>
              <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>推荐会员购物后,会员所得奖励：</strong></td>
                <td style="padding-bottom:10px;">
                <asp:TextBox ID="txtShopMoney" runat="server" class="l_input"></asp:TextBox>
               </td>
              </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
               <td class="tdbgleft"><strong>注意事项：</strong></td>
               <td>
                <textarea cols="80" id="info" width="580px" height="200px" name="infoeditor" rows="10" runat="server"></textarea>
                    <script id="Script2" type="text/javascript">
                        //<![CDATA[
                        CKEDITOR.replace('info',
                    {
                        skin: 'v2',
                        enterMode: 2,
                        shiftEnterMode: 2,
                        toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                    });
                        //]]>
                    </script>
                </td>
             </tr>
         </table>
        </td>
    </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="TABLE1">
    <tr>
        <td align="left"><asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server"  onclick="EBtnSubmit_Click" /></td>
    </tr>
</table>
</form>
</body>
</html>
