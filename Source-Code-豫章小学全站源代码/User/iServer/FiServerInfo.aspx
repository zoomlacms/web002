<%@ page language="C#" autoeventwireup="true" validaterequest="false" inherits="manage_iServer_FiServerInfo, App_Web_clmp4qkv" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE HTML>
<html>
<head runat="server">
<title>问题详情</title>
<link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/UserThem/bidding.css" rel="stylesheet" type="text/css" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="/js/zh-CN/attachment.js"></script>
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript">
	function fn_CheckSupportTicket(theForm) {
		if (!fn_CheckRequired(theForm.content, "回复内容"))
			return false;
		return true;
	}
</script>
<script src="../../Plugins/Ckeditor/ckeditor.js" type="text/javascript"></script>
</head>
<body>
<form id="form1" runat="server">
<div class="us_topinfo">
您现在的位置：<a title="网站首页" href="/" target="_blank"><asp:Label ID="LblSiteName" runat="server" Text="Label"></asp:Label></a>&gt;&gt;<a title="会员中心" href="/User/Default.aspx" target="_parent">会员中心</a>&gt;&gt;<a title="有问必答" href="FiServer.aspx">有问必答</a>
</div>
    <div class="us_seta" style="margin-top: 10px;" id="manageinfo" runat="server">
        <h1 style="text-align: center">
            问题详情</h1>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
            <tr>
                <td colspan="2">
                    <form id="frm_supportticketreply" name="frm_supportticketreply">
                    <asp:Label ID="lblQuestionId" runat="server" Text="" Visible="false"></asp:Label>
                    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td width="100" class="tdbgleft">标题</td>
                            <td><asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td width="100" class="tdbgleft">状态</td>
                            <td><asp:Label ID="lblState" runat="server" Text="" ForeColor="Red"></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">优先级</td>
                            <td><asp:Label ID="lblPriority" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">提交来源</td>
                            <td><asp:Label ID="lblRoot" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">问题类别</td>
                            <td><asp:Label ID="lblType" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">提交时间</td>
                            <td><asp:Label ID="lblSubTime" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">已读次数</td>
                            <td><asp:Label ID="lblReadCount" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">解决时间</td>
                            <td><asp:Label ID="lblSolveTime" runat="server" Text=""></asp:Label></td>
                        </tr>
                    </table>
                    <h1 style="text-align: center">对话详情</h1>
                    <table width="100%" border="0" cellspacing="0" class="border" cellpadding="0" style="margin-top: 10px;">
                        <tr class="tdbgleft">
                            <td>
                                <asp:Label ID="lblSubTime_R" runat="server" Text=""></asp:Label>
                                来自:<asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>标题:<asp:Label ID="lblTitle_R" runat="server" Text=""></asp:Label></b> [<a href="#reply">回复</a>][<a href="#top">返回页首</a>]
                            </td>
                        </tr>
                        <tr>
                            <td style="border:#CCC 1px solid;"><asp:Label ID="lblConent" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr> <td><span id="spDiv" runat="server"></span> <br /></td></tr>
                    </table>

                    <h1 id="rep" runat="server" style="text-align: center;margin-top:5px">回复记录</h1>
                    <asp:Repeater ID="resultsRepeater" runat="server">
                        <HeaderTemplate>
                            <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="tdbgleft">
                                <td>
                                    <asp:Label ID="lblSubTime_R" runat="server" Text='<%# Eval("ReplyTime")%>'></asp:Label>
                                    来自:<asp:Label ID="lblName" runat="server" Text='<%# GetUserName(Eval("UserId","{0}"))%>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>[<a href="#reply">回复</a>] [<a href="#top">返回页首</a>]</td>
                            </tr>
                            <tr>
                                <td style="border:#CCC 1px solid;"><asp:Label ID="lblConent" runat="server" Text='<%# Eval("Content")%>'></asp:Label></td>
                            </tr>
                             <tr><td><%#GetFile(Eval("path","{0}")) %>  </td></tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                    <div id="replyDiv" runat="server">
                    <h1 style="text-align: center">回复对话</h1>
                    <table width="100%" cellpadding="2" cellspacing="1" class="border" style="background-color: white;">
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td width="120" class="tdbgleft">标题</td>
                            <td><asp:TextBox ID="txtTitle" runat="server" Text="" Width="387px"></asp:TextBox></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">内容<font color="red">*</font></td>
                            <td><textarea runat="server" id="textarea1" class="ckeditor" name="content" rows="4" cols="40"></textarea></td>
                        </tr>
                        <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'"
                            class="tdbg">
                            <td class="tdbgleft">附件
                            </td>
                            <td>
                                只能上传<span id="spfiletype" runat="server"></span>类型的附件,单个附件小于3M<br />
                                附件1:
                                <asp:FileUpload ID="FileUpload1" runat="server" onkeydown="event.returnValue=false;"
                                    onpaste="return false" /><br />
                                附件2:
                                <asp:FileUpload ID="FileUpload2" runat="server" onkeydown="event.returnValue=false;"
                                    onpaste="return false" /><br />
                                附件3:
                                <asp:FileUpload ID="FileUpload3" runat="server" onkeydown="event.returnValue=false;"
                                    onpaste="return false" /><br />
                                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="Button1" class="i_bottom" runat="server" Text="提交" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                    </div>
                    </form>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>