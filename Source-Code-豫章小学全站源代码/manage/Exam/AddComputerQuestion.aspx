<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_Question_AddComputerQuestion, App_Web_f1ffu1ce" enableEventValidation="false" viewStateEncryptionMode="Never" %>

<!DOCTYPE HTML>
<html>
<head runat="server">
    <title>编辑试题</title>
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="../Common/Common.js" type="text/javascript"></script>
    <script src="/JS/calendar.js" type="text/javascript"></script>
    <script src="/JS/RiQi.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="r_navigation">        
        <span>后台管理</span> &gt;&gt;<span>教育模块</span> &gt;&gt;<a href="QuestionManage.aspx">在线考试系统</a> &gt;&gt;<a href="QuestionManage.aspx">试题管理</a>
        &gt;&gt;<span>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </span>
    </div>
    <div class="clearbox">
    </div>
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr align="center">
            <td class="spacingtitle">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
       <table style="width: 100%; margin: 0 auto;" cellpadding="2" cellspacing="1" class="border">       
        <tbody id="Tabs0">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="hits_txt" runat="server" Text="知识点："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlKnow" runat="server"></asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="ssjd_txt" runat="server" Text="试题标题："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="txtP_title" runat="server" class="l_input" Width="434px"></asp:TextBox>
                    &nbsp;<font color="red">*</font>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="试题标题不能为空!"
                        ControlToValidate="txtP_title"></asp:RequiredFieldValidator>
                    <asp:HiddenField ID="hfC_Id" runat="server" Value="" />
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label5" runat="server" Text="难度："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div style="width: auto; float: left">
                        <asp:RadioButtonList ID="rblDiff" runat="server" RepeatDirection="Horizontal" Height="22px"
                            Width="277px">
                            <asp:ListItem Selected Value="1">基础</asp:ListItem>
                            <asp:ListItem Value="2">容易</asp:ListItem>
                            <asp:ListItem Value="3">中等</asp:ListItem>
                            <asp:ListItem Value="4">偏难</asp:ListItem>
                            <asp:ListItem Value="5">极难</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </td>
            </tr>          
                      
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label6" runat="server" Text="题型："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label3" runat="server" Text="试题内容："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div>
                        <div id="num1" runat="server">
                        选项：<asp:DropDownList 
                                ID="ddlNumber1" runat="server" AutoPostBack="true" 
                                onselectedindexchanged="ddlNumber1_SelectedIndexChanged">
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        <div id="content2" runat="server">
                            <asp:RadioButtonList ID="rblDanXuan" runat="server"><asp:ListItem></asp:ListItem></asp:RadioButtonList>
                        </div>
                        <div id="content3" runat="server">
                            <asp:CheckBoxList ID="cblDuoXuan" runat="server"></asp:CheckBoxList>
                        </div>
                    </div>
                </td>
            </tr>
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label10" runat="server" Text="视频路径："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                      &nbsp;<asp:FileUpload ID="fileUploadTemplate" runat="server" CssClass="btn"/>
                      <asp:Button ID="UpLoad" class="C_input"  style="width:90px;"  runat="server" Text="上传" onclick="UpLoad_Click" />
                          <asp:HiddenField ID="HdnPath" runat="server" />
                </td>
            </tr>
            
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label8" runat="server" Text="排序："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <asp:TextBox ID="Order" runat="server" CssClass="l_input" Text="0"></asp:TextBox>
                </td>
            </tr>
        </tbody>
        <tbody id="Tabs1">
            <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
                <td class="tdbgleft" style="width: 20%" align="right">
                    <asp:Label ID="Label4" runat="server" Text="答案："></asp:Label>
                    &nbsp;
                </td>
                <td class="bqright">
                    <div id="num2" runat="server">
                    答案个数：<asp:DropDownList ID="ddlNumber2" runat="server" AutoPostBack="true">
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                            <asp:ListItem Value="9">9</asp:ListItem>
                            <asp:ListItem Value="10">10</asp:ListItem>
                        </asp:DropDownList>
                    </div>                   
                    <div id="Div1" runat="server">
                        <asp:TextBox ID="txtAn" runat="server" class="l_input" Width="380px"></asp:TextBox>
                    </div>
                </td>
            </tr>
           
        </tbody>
        <tr class="tdbgbottom">
            <td colspan="2">
                <asp:Button ID="EBtnSubmit" class="C_input" Text="保存试题" OnClick="EBtnSubmit_Click"
                    runat="server" />
                &nbsp;
                <asp:Button ID="BtnBack" class="C_input" runat="server" Text="返回" OnClick="BtnBack_Click"
                    UseSubmitBehavior="False" CausesValidation="False" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
