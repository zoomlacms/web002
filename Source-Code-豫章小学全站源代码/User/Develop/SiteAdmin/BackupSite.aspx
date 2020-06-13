<%@ page language="C#" autoeventwireup="true" inherits="User_Develop_SiteAdmin_BackupSite, App_Web_2r0iyaqk" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<meta http-equiv="content-Type" content="text/html; charset=utf-8"/> 
<title>网站备份</title>
<link type="text/css" rel="stylesheet" href="../Css/global.css" />
<script type="text/javascript">
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
</script></head>
<body>
<form id="form1" runat="server">
<div class="urlmain">
    <div class="urlm_title urlm_top">网站备份</div>
    <div class="urlm_txt">
        <table width="100%">
            <tr><td colspan="4" class="f_left">点击&nbsp;&nbsp;<asp:Button runat="server" ID="Button1" Text="创建备份" OnClientClick="Waitting();" OnClick="Button1_Click" />&nbsp;&nbsp;(可对网站进行压缩备份)</td></tr>
        </table>
    </div>
    <div class="urlm_top">
        <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
            <tr align="center">
                <th width="5%" class="title"><asp:CheckBox ID="Checkall" onclick="javascript:CheckAll(this);" runat="server" /></th>
                <th width="15%" class="title">备份文件名称</th>
                <th width="15%" class="title">文件大小</th>
                <th width="15%" class="title">备份时间</th>
                <th width="15%" class="title">操作</th>
            </tr>
            <asp:Repeater ID="gvCard" runat="server" OnItemCommand="gvCard_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td height="22" align="center"><input name="Item" type="checkbox" value='<%#Eval("name")%>'/></td>
                        <td height="22" align="center"><img src="../images/SiteAdmin/zipIcon.jpg"/>&nbsp;<a title="点击下载" href="<%#GetFilePath(Eval("name").ToString())%>"><%#Eval("name")%></a></td>
                        <td height="22" align="center"><%#GetFileSize(Convert.ToInt32(Eval("size")))%></td>
                        <td height="22" align="center"><%#Eval("CreationTime")%></td>
                        <td>
                            <a href="<%#GetFilePath(Eval("name").ToString())%>">下载</a>&nbsp;&nbsp;|&nbsp;&nbsp;
                            <a href="BackupSite.aspx?status=del&name=<%#Eval("name")%>">删除</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
            <tr class="">
                <td height="22" colspan="5" align="right" style="text-align:right;">
                    <asp:Button runat="server" ID="btn3" Text="批量删除" OnClick="btn3_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div class="urlm_txt">
        <table width="100%">
            <tr><td colspan="4" class="f_left"><ul><li>1.点击网站备份，可以对当前网站进行压缩备份</li><li>2.可以将备份文件下载到本地计算机</li><li>3.可以对备份文件进行删除和批量删除</li></ul></td></tr>
        </table>
    </div>
    <div id="wait" style="position:absolute; top:0; left:0; background-color:#eee;width:100%; height:100%; display:none;opacity:0.6;filter:alpha(opacity=60); text-align:center;">
    <img src="../images/SiteAdmin/ajax-loader.gif" style="margin-top:300px;"/><br />saving...
    </div>
</div>
</form>
</body>
</html>
<script type="text/javascript">
function Waitting() {
    document.getElementById("wait").style.display = "";
}
</script>