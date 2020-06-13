<%@ page language="C#" autoeventwireup="true" inherits="manage_AddOn_ProcessesComments, App_Web_s5nnx1p4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>项目评论</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
function CheckAll(spanChk)//CheckBox全选
{
    var oItem = spanChk.children;
    var theBox=(spanChk.type=="checkbox")?spanChk:spanChk.children.item[0];
    xState=theBox.checked;
    elm=theBox.form.elements;
    for(i=0;i<elm.length;i++)
    if(elm[i].type=="checkbox" && elm[i].id!=theBox.id)
    {
        if(elm[i].checked!=xState)
        elm[i].click();
    }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>CRM应用</span> &gt;&gt; <span>项目管理</span> &gt;&gt; <span>查看评论</span>
    </div>
    <div class="clearbox"></div>
    <div class="clearbox"></div>
    <table width="100%"  cellpadding="0" cellspacing="1" class="border" border="0">
        <tbody>
            <asp:Repeater ID="RpComments" runat="server" 
                onitemcommand="RpComments_ItemCommand">
                <ItemTemplate>
                    <tr class="tdbg" style="height:7px; background-color:#e7f7e7" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td width="10%" align="right" style=" background-color:#e7f7e7"><asp:Label ID="Label1" runat="server" visible="false" Text='<%#Eval("CommentsID")%>'></asp:Label><asp:CheckBox ID="ChkBox" runat="server" /><strong>评分：</strong></td>
                        <td width="5%" align="left">
                            <asp:Label ID="lblRating" runat="server" Text=""></asp:Label>
                        <td width="5%" align="right" style=" background-color:#e7f7e7"><strong>作者：</strong></td>
                        <td width="7%">
                            <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                        <td width="5%" align="right" style=" background-color:#e7f7e7"><strong>时间：</strong></td>
                        <td width="15%"><%# Eval("CommentsDate")%></td>
                        <td width="40%"><asp:LinkButton ID="LBtn" runat="server" OnClientClick="return confirm('你确定要永久删除吗？');" CommandArgument=<%#Eval("CommentsID") %>>删除</asp:LinkButton></td>
                    </tr>
                    <tr class="tdbg" style=" height:40px" align="center" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                        <td align="right" style=" background-color:#e7f7e7"><strong>内容：</strong></td>
                        <td  colspan=6 align="left"><%#Eval("Content") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
    <table>
        <tr>
            <td>
                <asp:CheckBox ID="Checkall" runat="server" onclick="javascript:CheckAll(this);" Text="全选" />
                <asp:Button ID="btnDeleteAll" runat="server" style="width:110px;"  OnClientClick="return confirm('你确定删除吗？')" Text="批量删除" OnClick="btnDeleteAll_Click" class="C_input" />
            </td>
        </tr>
    </table>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tbody id="Tabs0">
            <tr  class="spacingtitle" style="height:"30px;">
			    <td align="center" colspan="2" ><asp:Label ID="lblText" runat="server"></asp:Label></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>名称：</strong><br />所属项目名称（不可修改）</td>
                <td><asp:TextBox ID="TxtProjectName" class="l_input" runat="server" Width="222px" Enabled="False" ReadOnly="True" /></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>流程名称：</strong><br />没有为空,不可修改</td>
                <td><asp:TextBox ID="TxtProcessName" class="l_input" runat="server" Width="222px" Enabled="false" /></td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td style="width: 288px" class="tdbgleft"><strong>评分：</strong><br />给该项目/流程打分，请输入0-100间的数字</td>
                <td>
                    <asp:TextBox ID="TxtRating" class="l_input" runat="server" Width="222px" /><font color=red>*</font>
                    <asp:RangeValidator ID="RVRating" runat="server" ControlToValidate="TxtRating" 
                        Display="Dynamic" ErrorMessage="RangeValidator" MaximumValue="100" 
                        MinimumValue="0" Type="Integer">请输入数字范围0-100</asp:RangeValidator>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft"><strong>项目评价：</strong></td>
                <td>
                    <asp:TextBox ID="TxtContent" class="l_input" runat="server" Height="82px" TextMode="MultiLine" Width="381px" />
                </td>
            </tr>
        </table>
        <div class="clearbox"></div>
        <div style=" text-align:center; width:792px"><asp:Button ID="BtnCommit" 
                runat="server" Text="评论"  class="C_input" onclick="BtnCommit_Click"/>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnBack" runat="server" Text="返回" class="C_input" 
                onclick="BtnBack_Click"/>
        </div>
    </form>
</body>
</html>
