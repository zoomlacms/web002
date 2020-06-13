<%@ page language="C#" autoeventwireup="true" inherits="manage_Shop_profileConfige_RedEnvlop, App_Web_w1dcdbqq" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>红包配置信息</title>
<link href="../../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="/Plugins/Ckeditor/ckeditor.js"></script>
<script src="/Plugins/Ckeditor/EditFile/sample.js" type="text/javascript"></script>
<link href="/Plugins/Ckeditor/EditFile/sample.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="/Plugins/kindeditor/kindeditor.js"></script>
<script type="text/javascript" language="javascript">
    function show(obj) {
        if (obj == "add") {
            document.getElementById("add").style.display = "";
            document.getElementById("updata").style.display = "none";
            document.getElementById("del").style.display = "none";
            document.getElementById("view").style.display = "none";
            document.getElementById("txtHonorMoney").value = "";
            document.getElementById("txtMoney").value = "";
        }
        if (obj == "updata") {
            document.getElementById("add").style.display = "none";
            document.getElementById("updata").style.display = "";
            document.getElementById("del").style.display = "none";
            document.getElementById("view").style.display = "none";
            document.getElementById("txtBonus").value = "";
            document.getElementById("TextBox1").value = "";
        }
        if (obj == "del") {
            document.getElementById("add").style.display = "none";
            document.getElementById("updata").style.display = "none";
            document.getElementById("del").style.display = "";
            document.getElementById("view").style.display = "none";
        }
        if (obj == "view") {
            document.getElementById("add").style.display = "none";
            document.getElementById("updata").style.display = "none";
            document.getElementById("del").style.display = "none";
            document.getElementById("view").style.display = "";
        }
    }
</script>
</head>
<body>
<form id="form1" runat="server">
<div class="r_navigation">
    
    <span>后台管理</span> &gt;&gt; <span>商城管理</span> &gt;&gt; <span><a>返利信息配置</a></span> 
    &gt;&gt;<span>红包信息配置</span></div>
<div class="clearbox">
</div>
<table width="100%" border="0" cellpadding="5" cellspacing="1" class="border">
    <tr>
        <td class="spacingtitle" align="center"> <asp:Literal ID="LTitle" runat="server" Text="修改红包信息配置"></asp:Literal></td>
    </tr>
    <tr class="tdbg">
        <td valign="top" style="margin-top: 0px; margin-left: 0px;">
         <table width="100%" cellpadding="2" cellspacing="1" style="background-color: white;">
             <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" width="25%"><strong>奖励规则(修改无效)：</strong></td>
                <td style="padding-bottom:10px;">
                 <div id="add" style="display:none;">
                   兑现金额：<asp:TextBox ID="txtHonorMoney" runat="server"  class="l_input"></asp:TextBox>
                   是否包含兑现金额:<asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem Value="0" Selected="True">包含</asp:ListItem>
                                        <asp:ListItem Value="1">不包含</asp:ListItem></asp:DropDownList>
                   奖金：<asp:TextBox ID="txtMoney" runat="server"  class="l_input"></asp:TextBox>
                   <asp:Button ID="btnAdd" runat="server" class="C_input" Text="添加"   onclick="btnAdd_Click" />
                   <input type="button" class="C_input" value="取消" onclick="show('view')" />
                  </div>
                   <div id="updata" style="display:none;">
                     奖励编号:<asp:DropDownList ID="ids" runat="server"></asp:DropDownList>
                     兑现金额：<asp:TextBox ID="TextBox1" runat="server"  class="l_input"></asp:TextBox>
                     是否包含兑现金额:<asp:DropDownList ID="ddCont" runat="server">
                                        <asp:ListItem Value="0" Selected="True">包含</asp:ListItem>
                                        <asp:ListItem Value="1">不包含</asp:ListItem></asp:DropDownList>
                     奖金：<asp:TextBox ID="txtBonus" runat="server"  class="l_input"></asp:TextBox>
                     <asp:Button ID="btnUpdata" runat="server"  class="C_input" Text="修改" 
                           onclick="btnUpdata_Click"/>
                     <input type="button" class="C_input" value="取消" onclick="show('view')" />
                   </div>
                   <div id="del" style="display:none;">奖励编号:<asp:DropDownList ID="ddid" runat="server"></asp:DropDownList>
                   <asp:Button ID="btnDel" runat="server"  class="C_input" Text="删除" 
                           onclick="btnDel_Click"/>
                   <input type="button" class="C_input" value="取消" onclick="show('view')" /></div>
                   <div id="view" runat="server" >
                   <textarea cols="80" id="txtHonorinfo" width="580px" height="150px" name="infoeditor" rows="10" runat="server" disabled="disabled"></textarea><br />
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
                    <td class="tdbgleft"><strong>奖励规则(页面效果,修改有效)：</strong></td>
                    <td style="padding-bottom:10px;">
                    <textarea cols="80" id="txtHonor" width="580px" height="200px" name="infoeditor" rows="10" runat="server"></textarea>
                   </td>
                    <script id="Script3" type="text/javascript">
                        //<![CDATA[
                        CKEDITOR.replace('txtHonor',
                    {
                        skin: 'v2',
                        enterMode: 2,
                        shiftEnterMode: 2,
                        toolbar: [['Source', '-', 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink', 'Smiley', 'ShowBlocks', 'Maximize', 'About']]
                    });
                        //]]>
                    </script>
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
        <td align="left" style="height: 59px">
            &nbsp; &nbsp;
            <asp:Button ID="EBtnSubmit" class="C_input" Text="修改" runat="server"  onclick="EBtnSubmit_Click" />
            <input type="button" class="C_input" name="Button2" value="返回列表" onclick="location.href='../profile/RedEnvlopManage.aspx'" id="Button2" />
        </td>
    </tr>
</table>
</form>
</body>
</html>
