<%@ page language="C#" autoeventwireup="true" inherits="manage_Content_CollectionInfoPage, App_Web_knhg2ld3" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
<title>采集配置字段设置</title>
<link rel="stylesheet" href="../Style/style.css" type="text/css" />
<link rel="stylesheet" href="../Style/Blue_style.css" type="text/css" />

<script language="javascript" type="text/javascript">
    function SetConfig() {
        var v = document.getElementById("HiddenField1").value;
        var str="";
        var ckelems = document.getElementById("CheckBoxList1").getElementsByTagName("input");
        var spelems = document.getElementById("CheckBoxList1").getElementsByTagName("span");
        for(var i=0;i<ckelems.length;i++)
        {
            if(ckelems[i].type=="checkbox")
            {
                if(ckelems[i].checked)
                    str += spelems[i].value1 + ",";  
            }
        } 
        
        opener.SetHr(v, document.getElementById("txtListStart").value, document.getElementById("txtListEnd").value,str,document.getElementById("TextBox1").value);
       window.close();
    }
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
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="column">
        <div class="columntitle">
            &nbsp;当前位置：功能导航 &gt;&gt;<a href="CollectionInfoPage.aspx">采集信息页</a></div>
        <table width="100%" border="0" cellpadding="5" cellspacing="1">
            <tr align="center" style="background-color: #F0F6FC">
                <td colspan="2">
                    <%=type%><asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
            </tr>
            <tr class="tdbg" style="background-color: #F0F6Fd">
                <td colspan="2">
                    <table width="750px" border="0" cellpadding="5" cellspacing="1">
                        <tr class="tdbg">
                            <td align="right" valign="top">
                                <table width="500px" border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                <tr>
                                                    <td align="left">
                                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="400px" AutoPostBack="True"
                                                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="lblLink" runat="server" Text=""></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtHtml" runat="server" TextMode="MultiLine" Width="500px" Height="420px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:Button ID="Button4" runat="server" CssClass="button" Text="获取源代码" OnClick="Button4_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td valign="top">
                                <table width="240px" border="0" cellpadding="0" cellspacing="0">
                                    <tr align="center">
                                        <td id="TabTitle0" class="titlemouseover" onclick="ShowTabs(0)">
                                            字段设置
                                        </td>
                                        <td id="TabTitle1" class="tabtitle" onclick="ShowTabs(1)">
                                            过滤设置
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                                <table width="290px" border="0" cellpadding="0" cellspacing="0" class="border">
                                    <tbody id="Tabs0">
                                        <tr class="tdbg">
                                            <td>
                                                &nbsp;字段设置开始：
                                            </td>
                                        </tr>
                                        <tr class="tdbg">
                                            <td>
                                                &nbsp;<asp:TextBox ID="txtListStart" runat="server" TextMode="MultiLine" Width="280px"
                                                    Rows="5"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="tdbg">
                                            <td>
                                                &nbsp;字段设置结束：
                                            </td>
                                        </tr>
                                        <tr class="tdbg">
                                            <td>
                                                &nbsp;<asp:TextBox ID="txtListEnd" runat="server" TextMode="MultiLine" Width="280px"
                                                    Rows="5"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr class="tdbg">
                                            <td align="center">
                                                <asp:Button ID="Button5" runat="server" Text="测试字段" class="button" OnClick="Button5_Click"
                                                    OnClientClick="return checkList('txtListStart','txtListEnd')" />
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tbody id="Tabs1" style="display: none">
                                        <tr>
                                            <td>
                                                替换字符<br />
                                                被替换字符与替换字符中间“|”隔开，<br />
                                                每组替换字符中间用“，”隔开。 <br />
                                                <font color="red">例如：1|A，2|B (将1替换成A,将2替换成B）</font>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="TextBox1" Width="280px" Height="150px" TextMode="MultiLine" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height:10px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                            内容Html清除（选填）： 
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="2"  Width="100%">
                                                </asp:CheckBoxList>
                                            </td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </td>
                        </tr>
                        <tr class="tdbg">
                            <td colspan="2" align="center">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input id="Button2" type="button" class="button" value="保  存"
                                    onclick="SetConfig()" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input id="Button3" type="button" value="取  消" class="button" onclick="window.close ();" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
