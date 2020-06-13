<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_CloudManage, App_Web_k5cles0g" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title></title>
    <link href="../../App_Themes/UserThem/user_user.css" rel="stylesheet" type="text/css" />
    <link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
    <link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" />
    <script src="/JS/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        (function () {
            var _skin, _jQuery;
            var _search = window.location.search;
            if (_search) {
                _skin = _search.split('demoSkin=')[1];
                _jQuery = _search.indexOf('jQuery=true') !== -1;
                if (_jQuery) document.write('<scr' + 'ipt src="jquery-1.6.2.min.js"></sc' + 'ript>');
            };
            document.write('<scr' + 'ipt src="artDialog.source.js?&skin=' + (_skin || 'aero') + '"></sc' + 'ript>');
        })();
    </script>
    <script src="artDialog.iframeTools.source.js" type="text/javascript"></script>
    <script src="_doc/demo.js" type="text/javascript"></script>
</head>
<body>
   <form id="form1"  runat="server"><span runat="server" id="OpenCloud" visible="false">您还没有云盘，请先
    <asp:LinkButton ID="Open" runat="server" onclick="OpenCloud_Click" ForeColor="Red">开通云盘</asp:LinkButton></span>
    <div id="Cloud" runat="server" visible="false">
    <div class="us_seta" id="us_seta" style="text-align: left;" runat="server">
        <input id="back" type="button" runat="server" class="C_input" style="margin-top: 5px;
            margin-left: 5px;" value="返 回" onclick="javascript:history.back();" />
        <input type="button" class="C_input" name="demoCode04-3" value="上传" onclick="javascript:parent.NewFormd('文件上传','Uploadify.aspx?content=MaxFileSize=1024000,Dir=<%=Server.UrlEncode(CurrentDir)%>,UploadFileExt=<%=UploadType %>')" />
        <input id="newFile" type="button" class="C_input" value="新建文件夹" onclick="javascript:parent.NewFormd('新建文件夹','NewFolder.aspx?Dir=<%=Server.UrlEncode(CurrentDir)%>')" />
    </div>
    <div>
        <%= string.IsNullOrEmpty(ParentDir) ? "<a disabled='true'><img src='/App_Themes/Microblog/images/up.jpg'>上一级</a>" : "<a href='CloudManage.aspx?type="+Request.QueryString["Type"]+"&Dir=" + ParentDir + "'><img src='/App_Themes/Microblog/images/up.jpg'>上一级</a>"%>
        <span id="navv" runat="server" style="margin-left: 10px;"></span><asp:HiddenField ID="HdnPath"  runat="server" />
    </div>
    <asp:Repeater ID="RptFiles" runat="server" OnItemCommand="RptFiles_ItemCommand">
        <HeaderTemplate>
            <table width="100%" cellpadding="0" cellspacing="1" border="0" class="border">
                <tr class="title" align="center" style="height: 24px">
                    <td>
                        文件名
                    </td>
                    <td style="width: 15%">
                        大小
                    </td>
                    <td style="width: 20%">
                        创建时间
                    </td>
                    <td style="width: 25%">
                        操作
                    </td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr style="height: 24px" class="tdbg" onmouseover="this.className='tdbgmouseover';"
                onmouseout="this.className='tdbg';">
                <td align="left">
                 <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<img src='/App_Themes/AdminDefaultTheme/Images/Folder/mfolderclosed.gif'>" : GetShowExtension(Eval("content_type").ToString())%>
                <% if ((Request.QueryString["Type"] == "video") || (Request.QueryString["Type"] == "music"))
                   { %>
                <%# System.Convert.ToInt32(Eval("type")) == 1 ? "<a href='CloudManage.aspx?Type="+Request["Type"]+"&Dir=" + Server.UrlEncode(GetPath()) + "'>" + Eval("Name").ToString() + "</a>" : "<a href='javascript:open(\""+GetPath()+"\");'>" + Eval("Name").ToString() + "</a>"%>
                   <%}else{ %>
                    <%# (Eval("content_type").ToString() == "jpg" || Eval("content_type").ToString() == "png" || Eval("content_type").ToString() == "gif" || Eval("content_type").ToString() == "bmp") ? "<a href='javascript:open(\"" + GetPath() + "\");'>" + Eval("Name").ToString() + "</a>" : System.Convert.ToInt32(Eval("type")) == 1 ? "<a href='CloudManage.aspx?Type=" + Request["Type"] + "&Dir=" + Server.UrlEncode(GetPath()) + "'>" + Eval("Name").ToString() + "</a>" :  Eval("Name").ToString() %>
                    <%} %>
                </td>
                <td align="center">
                    <%# GetSize(Eval("size").ToString())%>
                </td>
                <td align="center">
                    <%# Eval("createTime")%>
                </td>
                 <td align="center">
                <%# System.Convert.ToInt32(Eval("type")) == 1 ? "" : "[<a  href='" + DownUrl + GetPath() + "'>下载</a>] [<a href='javascript:' onclick='javascript:parent.NewFormd(\"文件分享\" ,\"/Common/File.aspx?T=f&FD=" + FileJiaM(CurrentDir+"/"+Eval("Name").ToString()) + "\")'>分享</a>]"%>
                 [<asp:LinkButton ID="LbtnDelList" CommandName='<%# System.Convert.ToInt32(Eval("type")) == 1 ? "DelDir":"DelFiles" %>'
                            CommandArgument='<%# Eval("Name")%>' OnClientClick="if(!this.disabled) return confirm('确定要删除吗？');"
                             runat="server">删除</asp:LinkButton>]</td>
            </tr>
        </ItemTemplate>
    </asp:Repeater>
    <tr class="tdbg">
                <td style="height: 22px; text-align: center;" colspan="10" class="tdbgleft">
                    <span style="text-align: center">共<asp:Label ID="Allnum" runat="server" Text=""></asp:Label>条数据
                        <asp:Label ID="Toppage" runat="server" Text="" />
                        <asp:Label ID="Nextpage" runat="server" Text="" />
                        <asp:Label ID="Downpage" runat="server" Text="" />
                        <asp:Label ID="Endpage" runat="server" Text="" />页次：
                        <asp:Label ID="Nowpage" runat="server" Text="" />/
                        <asp:Label ID="PageSize" runat="server" Text="" />页
                        <asp:TextBox ID="txtPage" runat="server" AutoPostBack="true" CssClass="l_input" Width="16px" Height="16px"></asp:TextBox>
                        条数据/页 转到第
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" ></asp:DropDownList>
                        页<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPage" ErrorMessage="只能输入数字" Type="Integer" MaximumValue="100000" MinimumValue="0"></asp:RangeValidator>
                    </span>
                </td>
            </tr>
            </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function myfunction() {
        $.get("CloudManage.aspx?DownUrl=" + escape(Url) + "&time=" + Date(), function (da) {
            alert(da);
        })
    }
    function UXml(mp, Url) {
        $.get("CloudManage.aspx?mpname=" +escape(mp) + "&time=" + Date()+"&Url="+escape(Url), function (data) {
        })
    }

    function open(path) {
        var titles = path.split('/');
        var title;
        for (var i = 0; i < titles.length; i++) {
            if (titles[i].indexOf('.') > 0)
                title = titles[i];
        }
        switch ('<%=Request["Type"] %>') {
            case "file":
                parent.popAlert(path);
                break;
            case "photo":
                parent.popAlert(path);
                break;
            case "video":
                parent.NewFormd(title, "Cloud/Jwplayer/PlayM.aspx?MeUrl=" + path);
                break;
            case "music":
                UXml(title, "<%=CurrentDir %>/");
                parent.NewFormd("音乐播放", "Cloud/Jwplayer/MusicPlayer.aspx");
                break;
        }
    }
</script>