<%@ page language="C#" autoeventwireup="true" inherits="manage_Search_AddIndexSeach, App_Web_vqxd43kg" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head id="Head1" runat="server">
<title>全文检索管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />

<script language="javascript">
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
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="r_navigation">
        
        <span>后台管理</span> &gt;&gt; <span>扩展功能</span> &gt;&gt; <span>全文检索</span> &gt;&gt;
        <span>全文检索管理</span>
    </div>
    <div class="clearbox">
    </div>
    <div>
    </div>
    <div style="text-align: center">
    </div>
    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
        <tr align="left">
            <td width="10%" class="tdbg">
                欢迎您使用全文检索系统；本系统将帮助您为数据库创建全文索引目录。
                <br />
                在此可以定义数据库全文检索；方便从全文检索器快速的查询到加入检索的内容!
                <br />
                <font color="green"><b>全文检索与普通搜索的区别：</b>普通搜索只是通过对网页数据过滤获得的具有相同属性的结构化数据，速度会比较慢；而全文检索的目标是识别出与用户查询相关的文档或段落，速度会非常快！数据量越大越容易体现其优势!</font>
            </td>
        </tr>
    </table>
    <div class="clearbox">
    </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border" style="margin: 0 auto;">
                <tr align="center">
                    <td class="title" colspan="2">
                        定义全文检索
                    </td>
                </tr>
                <tr class="tdbg">
                    <td height="22" align="left" width="20%">
                        定义检索名称(说明)
                    </td>
                    <td height="22" align="left" width="80%">
                        <asp:TextBox ID="IndexName" class="l_input" runat="server" Style="width: 200px" AutoPostBack="True"
                            OnTextChanged="IndexName_TextChanged"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="" Style="color: Red"></asp:Label>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td height="22" align="left" width="20%">
                        选择表
                    </td>
                    <td height="22" align="left" width="80%">
                        <asp:DropDownList ID="Tablelist" CssClass="x_input" runat="server" Style="width: 200px" OnSelectedIndexChanged="Tablelist_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td height="22" align="left" width="20%">
                        选择表中的列(可多选)
                    </td>
                    <td height="22" align="left" width="80%">
                        <asp:ListBox ID="Filedlist" CssClass="x_input" runat="server" Style="width: 200px" Height="174px" SelectionMode="Multiple">
                        </asp:ListBox>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td height="22" align="left" width="20%">
                        选择全文目录
                    </td>
                    <td height="22" align="left" width="80%">
                        <asp:DropDownList ID="Dirlist" CssClass="x_input" runat="server" Style="width: 200px" Visible="False">
                        </asp:DropDownList>
                        <asp:TextBox ID="Dirname" class="l_input" runat="server" Style="width: 200px" AutoPostBack="True"
                            Visible="False" OnTextChanged="Dirname_TextChanged"></asp:TextBox>
                        <asp:CheckBox ID="createdir" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged"
                            Text="创建新目录" />
                        <asp:Label ID="dirmessage" runat="server" Text="" Style="color: Red"></asp:Label>
                    </td>
                </tr>
                <tr class="tdbg">
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" class="C_input" runat="server" Text="添加" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" class="C_input" runat="server" Text="返回" />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>