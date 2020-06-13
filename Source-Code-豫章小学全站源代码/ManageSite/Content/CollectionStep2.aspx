<%@ page language="C#" validaterequest="false" autoeventwireup="true" inherits="manage_Content_CollectionStep2, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title></title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />
<script src="/JS/Common.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript">
    var tID = 0;
    var arrTabTitle = new Array("TabTitle0", "TabTitle1");
    var arrTabs = new Array("Tabs0", "Tabs1");
    function ShowTabs(ID) {
        if (ID != tID) {
            document.getElementById(arrTabTitle[tID].toString()).className = "tabtitle";
            document.getElementById(arrTabTitle[ID].toString()).className = "titlemouseover";
            document.getElementById(arrTabs[tID].toString()).style.display = "none";
            document.getElementById(arrTabs[ID].toString()).style.display = "";
            tID = ID;
        }
    }
    var arrText = new Array("Txt0", "Txt1", "Txt2", "Txt3", "Txt4");
    var sID = 0;
    function ShowText(ID) {
        document.getElementById(arrText[sID].toString()).style.display = "none";
        document.getElementById(arrText[ID].toString()).style.display = "";
        sID = ID;
        document.getElementById("<%=HiddenField1.ClientID %>").value = ID;
    }
    function checkList(start, end) {
        if (document.getElementById(start).value != "" && document.getElementById(end).value != "") {
            return true;
        }
        else {
            alert("请输入开始代码和结束代码");
            return false;
        }
    }
   
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
    <a href="CollectionStep2.aspx">采集项目管理 &gt;&gt; <span>
            <%=title%></span></a>
    </div>
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <table width="100%" border="0" cellpadding="5" cellspacing="1"  style="background-color:#F0F6FC">
        <tr class="tdbg">
            <td style="width:20%" align="right">
                <strong>采集项目名称：</strong>
            </td>
            <td align="left">
                <asp:Label ID="lblItemName" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr class="tdbg">
            <td colspan="2" align="center">
                <table width="750px" border="0" cellpadding="5" cellspacing="1">
                    <tr class="tdbg">
                        <td align="right" valign="top">
                            <table width="500px" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="right">
                                        <asp:TextBox ID="txtHtml" runat="server" TextMode="MultiLine" Width="500px" Height="500px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left">
                                        <asp:Button ID="Button4" runat="server" Text="获取源代码"  CssClass="button" OnClick="Button4_Click" />
                                        <asp:Label ID="lblLink" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top">
                            <table width="240px" border="0" cellpadding="0" cellspacing="0">
                                <tr align="center">
                                    <td id="TabTitle0"   class="titlemouseover" onclick="ShowTabs(0)">
                                        列表设置
                                    </td>
                                    <td id="TabTitle1"  class="tabtitle"  onclick="ShowTabs(1)">
                                        分页设置
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                            <div style="height:433px;  border:1px solid #86C0DF;">
                            <table width="280px" border="0" cellpadding="0" cellspacing="0" >
                                <tbody id="Tabs0">
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;列表开始代码：
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;<asp:TextBox ID="txtListStart" runat="server" TextMode="MultiLine" Width="230px" Rows="5"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;列表结束代码：
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;<asp:TextBox ID="txtListEnd" runat="server" TextMode="MultiLine" Width="230px" Rows="5"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td  align="center">
                                            <asp:Button ID="Button5" runat="server" Text="测试列表"  CssClass="button" OnClick="Button5_Click" OnClientClick="return checkList('txtListStart','txtListEnd')" />
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;链接开始代码：
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;<asp:TextBox ID="txtLinkStart" runat="server" TextMode="MultiLine" Width="230px" Rows="5"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;链接结束代码：
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;<asp:TextBox ID="txtLinkEnd" runat="server" TextMode="MultiLine" Width="230px" Rows="5"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;（如果不填写链接开始代码和链接结束代码，将会获取列表页中所有的链接地址！）
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td  align="center">
                                            <asp:Button ID="Button6" runat="server" Text="测试链接"  CssClass="button" OnClick="Button6_Click" OnClientClick="return checkList('txtLinkStart','txtLinkEnd')" />
                                        </td>
                                    </tr>
                                </tbody>
                                <tbody id="Tabs1" style="display: none">
                                    <tr class="tdbg">
                                        <td >
                                            &nbsp;选择分页类型：
                                        </td>
                                    </tr>
                                    <tr class="tdbg">
                                        <td align="left">
                                            &nbsp;&nbsp;<input id="Radio1" runat="server" type="radio" name="rdList" value="1" checked="true" onclick="ShowText(0)" />不分页
                                            <br />
                                            &nbsp;&nbsp;<input id="Radio2" runat="server" type="radio" name="rdList" value="2" onclick="ShowText(1)" />从源代码中获取下一页的URL
                                            <br />
                                            &nbsp;&nbsp;<input id="Radio3" runat="server" type="radio" name="rdList" value="3" onclick="ShowText(2)" />批量指定分页URL代码
                                            <br />
                                            &nbsp;&nbsp;<input id="Radio4" runat="server" type="radio" name="rdList" value="4" onclick="ShowText(3)" />手动添加分页URL代码
                                            <br />
                                            &nbsp;&nbsp;<input id="Radio5" runat="server" type="radio" name="rdList" value="5" onclick="ShowText(4)" />从源代码中获取分页URL
                                        </td>
                                    </tr>
                                    <tr id="Txt0" style="display: none" class="tdbg">
                                        <td >
                                        </td>
                                    </tr>
                                    <tr id="Txt1" style="display: none" class="tdbg" runat="server">
                                        <td >
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td style="background-color: White; height: 1px">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                        &nbsp;“下一页”URL开始代码
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;<asp:TextBox ID="txtNextPageBegin" runat="server" TextMode="MultiLine" Rows="8" Width="220px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;“下一页”URL结束代码
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;<asp:TextBox ID="txtNextPageEnd" runat="server" TextMode="MultiLine" Rows="8" Width="220px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;<asp:Button ID="Button7" runat="server" Text="测试下一页"  CssClass="button" OnClick="Button7_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr id="Txt2" style="display: none" class="tdbg" runat="server">
                                        <td >
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td style="background-color: White; height: 1px">
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            &nbsp;Url地址：<br />
                                            &nbsp;<asp:TextBox ID="txturl" runat="server" Width="220px"></asp:TextBox>
                                            &nbsp;例：http://www.xxxxx.com/news/index_{$ID}.html {$ID}代表分页数
                                            <br />
                                            &nbsp;ID范围：<asp:TextBox ID="txtBeginNum" runat="server" Width="50px"></asp:TextBox>
                                            &nbsp; TO&nbsp;&nbsp;
                                            <asp:TextBox ID="txtEndNum" runat="server" Width="50px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr id="Txt3" style="display: none" class="tdbg" runat="server">
                                        <td >
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td style="background-color: White; height: 1px">
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            &nbsp;<asp:TextBox ID="txtUrlList" runat="server" TextMode="MultiLine" Width="220px" Rows="20"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr id="Txt4" style="display: none" class="tdbg" runat="server">
                                        <td >
                                            <table width="100%" cellpadding="0" cellspacing="0" border="0">
                                                <tr>
                                                    <td style="background-color: White; height: 1px">
                                                    </td>
                                                </tr>
                                            </table>
                                            <br />
                                            &nbsp;分页代码开始： &nbsp;<asp:TextBox ID="txtPageDivBegin" runat="server" TextMode="MultiLine" Width="220px" Rows="5"></asp:TextBox><br />
                                            &nbsp; 分页代码结束： &nbsp;<asp:TextBox ID="txtPageDivEnd" runat="server" TextMode="MultiLine" Width="220px" Rows="5"></asp:TextBox><br />
                                            &nbsp;分页URL开始代码： &nbsp;<asp:TextBox ID="txtBegin" runat="server" Width="220px"></asp:TextBox><br />
                                            &nbsp;分页URL结束代码： &nbsp;<asp:TextBox ID="txtEnd" runat="server" Width="220px"></asp:TextBox><br />
                                            &nbsp;<asp:Button ID="Button8" runat="server" Text="测试从源代码中获取分页URL"  CssClass="button" OnClick="Button8_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td >
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </div>
                        </td>
                    </tr>
                    <tr class="tdbg">
                        <td colspan="2" align="center">
                            <asp:Button ID="Button2" runat="server" Text="上一步"  CssClass="button" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" Text="下一步"  CssClass="button" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="Button3" type="button" value="返  回"  class="button" onclick="window.location.href='CollectionManage.aspx'" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script>
        var s = document.getElementById("<%=HiddenField1.ClientID %>").value;
        ShowText(s);
    </script>
</div>
    </form>
</body>
</html>
