<%@ page language="C#" autoeventwireup="true" enableeventvalidation="false" inherits="ZoomLa.WebSite.Manage.Content.CreateHtmlContent, App_Web_0tiy15lx" enableviewstatemac="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title><%=lang.Get("M_CreateHtmlContent_release")%></title>
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/Guide.css"  />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/index.css" />
<link type="text/css" rel="stylesheet" href="../../App_Themes/AdminDefaultTheme/main.css" />
<script type="text/javascript" src="/JS/calendar.js"></script>
<script type="text/javascript" src="/JS/RiQi.js"></script>
<script type="text/javascript">
 var tID = 0;
 var arrTabTitle = new Array("TabTitle1", "TabTitle2", "TabTitle3", "TabTitle4", "TabTitle5");
 function pload() {
     var ID = '<%=Request.QueryString["id"]%>';
     if (ID != tID) {
         if (document.getElementById(arrTabTitle[ID].toString()) != null) {
             document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
         }
         if (document.getElementById(arrTabTitle[tID].toString()) != null) {
             document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
         }
     } else {
         if (document.getElementById("TabTitle") != null) {
             document.getElementById("TabTitle").style.display = "";
             document.getElementById("TabTitle").className = "titlemouseover";
         }
         tID = ID;
     }
 }
</script>
<script type="text/javascript">
    function myfun() {
        if (document.form1.ColumnList.value == "") {
            alert("请选择栏目");
            return false;
        }
    }

    function lbColumnCheck() {
        if (document.form1.lbColumn.value == "") {
            alert("请选择栏目");
            return false;
        }
    }

    function lbSingleCheck() {
        if (document.form1.lbSingle.value == "") {
            alert("请选择单页");
            return false;
        }
    }
    function lbSpeacilCheck() {
        if (document.form1.lbSpeacil.value == "") {
            alert("请选择专题");
            return false;
        }
    }

    function ShowCreate(result,id) {
		HideCreate();
		document.getElementById(result).style.display = "";

        for (var i = 0; i < arrTabTitle.length; i++) {
            if (arrTabTitle[i] == id) {
                document.getElementById(arrTabTitle[i]).style.display = "";
                document.getElementById(arrTabTitle[i]).className = "titlemouseover";
            } else {
            document.getElementById(arrTabTitle[i]).className = "tabtitle";
            }
        }
    }

    function HideCreate() {
        for (i = 1; i < 6; i++) {
            document.getElementById("crt" + i).style.display = "none";
        }
    }
    function ShowMainsgourl(lurl, rurl) {
        parent.parent.frames["left"].location = lurl;
        parent.parent.frames["main_right"].location = rurl; void (0);
    }
</script>
</head>
<body onload="pload()">
<form id="form1" runat="server">
<div class="r_navigation"><%=lang.Get("M_SpecContent_manage")%>&gt;&gt;<a href="ContentManage.aspx"><%=lang.Get("M_SpecContent_content")%></a>&gt;&gt; <a href="javascript:void(0)" onclick="ShowMainsgourl('CreateLink.aspx','CreateHtmlContent.aspx')"><%=lang.Get("M_CreateHtmlContent_generateRelease")%></a></div>
   <%-- <div class="divline">
        <ul style="cursor: hand;">
            <li class="spanfixdiv1" onclick="ShowCreate('crt1')">发布主页与内容</li>
            <li class="spanfixdiv1" onclick="ShowCreate('crt3')">发布单页</li>
            <li class="spanfixdiv1" onclick="ShowCreate('crt2')">发布栏目</li>
            <li class="spanfixdiv1" onclick="ShowCreate('crt4')">发布专题</li>
        </ul>
    </div>
    <div class="clearbox">
    </div>--%>
<!--    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="title">
            <td colspan="3" align="left">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_timedRelease")%>
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="width:20%">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_timedRelease")%>：
            </td>
            <td align="left"  style="width:8%">
            <asp:RadioButtonList ID="rblTime" runat="server" AutoPostBack="true" RepeatDirection="Horizontal" onselectedindexchanged="rblTime_SelectedIndexChanged">
            <asp:ListItem Value="1">是</asp:ListItem>
            <asp:ListItem Value="2" Selected="True">否</asp:ListItem>
            </asp:RadioButtonList>
            </td>
            <td  ><asp:TextBox ID="txtDate" runat="server"  onclick="calendar()" class="l_input" ></asp:TextBox></td>
        </tr>
    </table>
-->    <div class="clearbox">
    </div>
    <!--发布全站主页-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_publishHomePage")%>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" style="width:20%">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_publishHomePage")%>：
            </td>
            <td align="left" class="bqright">
                <asp:Button ID="btnCreate" runat="server" Text="开始发布"  style="width:100px;"  class="C_input" OnClick="btnCreate_Click" />
            </td>
        </tr>
    </table>
    <!--end发布全站主页-->
    <div class="clearbox"></div>
    <!--top生成内容页-->
    <div>
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr align="center"> 
                <td id="TabTitle1" name="TabTitle1" class="titlemouseover" onclick="ShowCreate('crt1','TabTitle1')">
                    <%=lang.Get("M_CreateHtmlContent_rapidRelease")%>
                </td>
                <td id="TabTitle2" name="TabTitle2" class="tabtitle" onclick="ShowCreate('crt2','TabTitle2')">
                     <%=lang.Get("M_CreateHtmlContent_releasePart")%>
                </td>
                <td id="TabTitle5" name="TabTitle5" class="tabtitle" onclick="ShowCreate('crt5','TabTitle5')">
                    <%=lang.Get("M_CreateHtmlContent_publishContent")%>
                </td>
                <td id="TabTitle3" name="TabTitle3" class="tabtitle" onclick="ShowCreate('crt3','TabTitle3')">
                     <%=lang.Get("M_CreateHtmlContent_publishPage")%>
                </td>
                <td id="TabTitle4" name="TabTitle4" class="tabtitle" onclick="ShowCreate('crt4','TabTitle4')">
                    <%=lang.Get("M_CreateHtmlContent_publishThematic")%>
                </td>
                <td>&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="1" class="border" align="center" id="crt1" name="crt1">
        <tr class="title">
            <td colspan="2" align="left">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_rapidRelease")%>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" style="height: 24px">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_publishAll")%>：
            </td>
            <td align="left" class="bqright" style="height: 24px">
                <asp:Button ID="btnNewsContent" style="width:100px;"  runat="server" Text="开始发布"  class="C_input" OnClick="btnNewsContent_Click" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" class="bqleft">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_inIDRelease")%>：
            </td>
            <td align="left" class="bqright">
                <%=lang.Get("M_CreateHtmlContent_from")%><asp:TextBox ID="txtIdStart" class="l_input" runat="server"></asp:TextBox><%=lang.Get("M_CreateHtmlContent_to")%>
                <asp:TextBox ID="txtIdEnd" class="l_input" runat="server"></asp:TextBox>
                <asp:Button ID="btnCreateId" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClick="btnCreateId_Click" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
           <td align="right">
                <%=lang.Get("M_CreateHtmlContent_releasedTheLatest")%>：
            </td>
            <td class="bqright"> &nbsp;
                <asp:TextBox ID="txtNewsCount" class="l_input" runat="server"></asp:TextBox><%=lang.Get("M_CreateHtmlContent_piece")%>
                <asp:Button ID="btnNewsCount" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClick="btnNewsCount_Click" />
            </td>
        </tr>
        <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right">
                <%=lang.Get("M_CreateHtmlContent_releasedByDate")%>：
            </td>
            <td class="bqright">
                <%=lang.Get("M_CreateHtmlContent_from")%><asp:TextBox ID="txtStartDate" class="l_input" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox><%=lang.Get("M_CreateHtmlContent_to")%>
                <asp:TextBox ID="txtEndDate" class="l_input" runat="server" onblur="setday(this);" onclick="setday(this);"></asp:TextBox>
                <asp:Button ID="Button2" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr class="tdbg"  onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td align="right" style="height: 24px">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_personnelSystem") %>：
            </td>
            <td align="left"  style="height: 24px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="zhaopin">招聘企业</asp:ListItem>
                    <asp:ListItem Value="zhiwei">职位信息</asp:ListItem>
                    <asp:ListItem Value="jianli">用户简历</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button4" runat="server" style="width:100px;" Text="开始发布" class="C_input" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="left" colspan="2" valign="middle">
                <span style="color: Blue"><strong><%=lang.Get("M_CreateHtmlContent_note")%>：</strong></span><%=lang.Get("M_CreateHtmlContent_ifYouDo")%>
            </td>
        </tr>
    </table>
    <!--end生成内容页-->
    <!--start发布栏目-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt2" name="crt2" style="display: none;">
        <tr class="title">
            <td colspan="2" align="left" style="height: 23px">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_releasePart")%>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right">
                <%=lang.Get("M_CreateHtmlContent_selectPart")%>：
            </td>
            <td class="bqright">
                <asp:Button ID="btnCreateColumnAll" style="width:100px;" runat="server" Text="发布所有栏目" Class="C_input" OnClick="btnCreateColumnAll_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle">
                 <%=lang.Get("M_CreateHtmlContent_selectPart")%>：
            </td>
            <td class="bqright" valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="lbColumn" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="btnCreateColumn" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClientClick="return lbColumnCheck()" OnClick="btnCreateColumn_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布栏目-->
    <!--start发布单页-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt3" name="crt3" style="display: none;">
        <tr class="title">
            <td colspan="2" align="left">&nbsp;<%=lang.Get("M_CreateHtmlContent_publishPage")%></td>
        </tr>
        <tr class="tdbg">
            <td align="right"><%=lang.Get("M_CreateHtmlContent_releaseAllSinglePage")%>：</td>
            <td class="bqright">
                <asp:Button ID="Button1" style="width:100px;" runat="server" Text="发布所有单页" Class="C_input" OnClick="btnCreateSingleAll_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle"><%=lang.Get("M_CreateHtmlContent_selectASinglePage")%>： </td>
            <td class="bqright" valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="lbSingle" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="Button3" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClientClick="return lbSingleCheck()" OnClick="btnCreateSingle_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布单页-->
  
    <!--start发布主题-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt4" name="crt4" style="display: none;">
        <tr class="title">
            <td colspan="2" align="left">&nbsp;<%=lang.Get("M_CreateHtmlContent_publishThematic")%> </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle"><%=lang.Get("M_CreateHtmlContent_selectionOfTopics")%>：</td>
            <td class="bqright" valign="middle" style="padding: 0px;">
                <div style="float: left;">
                   <asp:ListBox ID="lbSpeacil" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="btnCreateSpeacil" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClientClick="return lbSpeacilCheck()" OnClick="btnCreateSpeacil_Click" /></div>
            </td></tr>
    </table>
    <!--end发布主题-->
    <!--begin发布内容-->
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" align="center" id="crt5" name="crt5" style="display: none;">
        <tr class="title">
            <td colspan="2" align="left" style="height: 24px">
                &nbsp;<%=lang.Get("M_CreateHtmlContent_publishContent")%>
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right"><%=lang.Get("M_CreateHtmlContent_selectPart")%>：</td>
            <td class="bqright">
                <asp:Button ID="Button5" style="width:100px;" runat="server" Text="发布所有栏目" Class="C_input" OnClick="btnCreateColumnAll_Click" />
            </td>
        </tr>
        <tr class="tdbg">
            <td align="right" valign="middle"><%=lang.Get("M_CreateHtmlContent_contentWithSection")%>：</td>
            <td class="bqright" valign="middle" style="padding: 0px;">
                <div style="float: left;">
                    <asp:ListBox ID="ColumnList" runat="server" Width="200" Height="220" SelectionMode="Multiple"></asp:ListBox>
                </div>
                <div style="margin-top: 100px; float: left;">
                    &nbsp;<asp:Button ID="Button6" style="width:100px;" runat="server" Text="开始发布"  class="C_input" OnClientClick="return myfun()" OnClick="btnColumnCreate_Click" /></div>
            </td>
        </tr>
    </table>
    <!--end发布内容-->
    <asp:Literal ID="litMessage" runat="server"></asp:Literal>
    </form>
</body>
</html>