<%@ page language="C#" autoeventwireup="true" inherits="Pcut_pucut, App_Web_efmtsymw" responseencoding="UTF-8" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1"  runat="server">
<title><%= buser.GetLogin().UserName%>-个人主页</title>
<link href="../../../App_Themes/UserThem/user.css" rel="stylesheet" type="text/css">
<link href="../../../App_Themes/UserThem/cut.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="../../../JS/jquery-1.5.1.min.js"></script>
<script type="text/javascript" src="../../../JS/Tsinghua.menu.js"></script>
<script type="text/javascript" src="../../../JS/menuload.js"></script>
<script type="text/javascript" src="../../../JS/CutDrag.js"></script>
<script type="text/javascript" src="../../../JS/zjCut.js"></script>
</head>
<body onmouseup="mouseUp()">
<div id="Cut_top">
  <div id="logo"><a href="/"><img src="<%Call.Label("{$LogoUrl/}"); %>" alt="<%Call.Label("{$SiteName/}"); %>" /></a></div>
  <div id="Cut_top_r">
    <iframe src="/Search/indexSearch.aspx" marginwidth="1" marginheight="1" scrolling="no" border="0" frameborder="0" width="380px" height="28px"></iframe>
    <a href="PortalList.aspx">网友主页</a></a><a href="/user/Logout.aspx">退出登录</a></div>
</div>
<div id="menu">
  <asp:Repeater runat="server" ID="R_menu">
    <ItemTemplate>
      <div onclick="a.onSelect(this)" id='p_<%# Eval("id") %>' class="menu_btn"><a href='?menuid=<%# Eval("id") %>' ><%# Eval("pageSign") %></a><span onclick="a.dele(this.parentNode)"  ><img src="../../../App_Themes/AdminDefaultTheme/images/close.gif" /></span></div>
    </ItemTemplate>
  </asp:Repeater>
  <span id="addnew"><a href="javascript:"><img src="../../../App_Themes/AdminDefaultTheme/images/addTab.gif" width="26" height="21" />添加页签</a></span> </div>
<script type="text/javascript">
   var a = new Tsinghua("menu", "addnew");
</script> 
<script language="javascript">
    function cc(id) {
        if (id.value != 'http://') {
            id.value = 'http://';
        }
        var e = event.srcElement;
        var r = e.createTextRange();
        r.moveStart("character", e.value.length);
        r.collapse(true);
        r.select();
    }
</script>
<%
    if (Paget != 0 && Cuts.Count>0)
    { 
            %>
<div>
  <iframe id="CIframe" src="<%=Cuts[0].Url %>?menuid=<%=Cuts[0].MenuID %>" style=" width:100%; height:1000px;"></iframe>
</div>
<%
        }
        else
        {   
         %>
<script type="text/javascript" >
        $(function () { JZLoad(); })  		
    </script>
<form id="Form1" runat=server>
  <div id="nav"><a href="javascript:" onclick="show_zjAdd()">组件添加</a><a href="javascript:;" onclick=" show_add();">网址添加</a><a href="javascript:;" onclick="show_jq();">网页剪取</a><a href="javascript:;" onClick="show_ymsz();">页面设置</a></div>
  <!--组件添加-->
  <div id="zjAdd">
    <div id="font_zjAdd">组件添加</div>
    <div id="con_zjAdd">
      <div id="con_zjAdd_l">
        <div id="con_zjAdd_lt">
          <select id="SelectID">
            <option selected>全部</option>
            <option value="相册">相册</option>
            <option value="名站导航">名站导航</option>
          </select>
          <asp:TextBox ID="searchCon" runat="server"></asp:TextBox>
          <input  type="button" id="searchBt" value="搜索"/>
        </div>
        <div id="con_zjAdd_lc">
        <div>
          <ul>
          <%
              if (dtPlug != null && dtPlug.Rows.Count > 0)
              {
              foreach(System.Data.DataRow row in  dtPlug.Rows){
               %>
                <li><a  title="双击收藏网址" href="javascript:zjAddclick('<%=row["url"] %>','<%=row["title"] %>');" ondblclick="zjdbAdd('<%=row["url"] %>','<%=row["title"] %>');"><img  class="zjImg"  src="<%=row["icon"] %>"  onerror="this.onerror=null;this.src='/Images/nopic.gif'" />
              <p><%=row["title"] %></p>
              </a></li>

               <%}} %>
          </ul>
          </div>
          <div class="clearfloat" ></div>
          <div class="divPage">
              <asp:Label ID="lblCount" runat="server" ForeColor="White">当前第1页共1页</asp:Label>&nbsp;&nbsp;
              <asp:LinkButton ID="lbUp" runat="server" OnClick="lbUp_Click" ForeColor="White" Font-Underline="false" >上一页</asp:LinkButton>&nbsp;&nbsp;
              <asp:LinkButton ID="lbDown" runat="server" OnClick="lbDown_Click" ForeColor="White" Font-Underline="false">下一页</asp:LinkButton>
              </div>
        </div>
      </div>
      <div id="con_zjAdd_r">
        <p>预览窗口</p>
        <div id="show_zjAdd">
          <iframe id="iframeZJ" width="100%" height="250"> </iframe>
        </div>
        <div id="zjAdd_b">
          <input type="button" value="添加" id="zjAdd_bt" onclick="zjAdd_add()" style="display:none" />
        </div>
        <input id="zjAdd_url" type="text" style="display:none;" value=" " />
        <div id="zjAdd_close" onclick="javascript:document.getElementById('zjAdd').style.display='none';return false;">关闭</div>
      </div>
    </div>
  </div>
  
  <!--网址添加-->
  <div id="nav_add">
    <div id="font_add">网址添加</div>
    <div id="content_add">
      <div id="address">网址：<asp:TextBox ID="ass" runat="server" Text="http://www.zoomla.cn"></asp:TextBox>
      </div>
      <div id="title_add">标题：<asp:TextBox ID="assTitle" runat="server"></asp:TextBox>
      </div>
      <div id="bt_add">
        <asp:Button ID="addbt" runat="server" Text="添加" onclick="addbt_Click"></asp:Button>
        <input type="button" id="Button2" value="重置" onclick="resetadd()" />
      </div>
    </div>
    <div id="close_add" onclick="javascript:document.getElementById('nav_add').style.display='none';return false;">关闭</div>
  </div>
  <!--网页剪取-->
  <div id="nav_jq"><span id="img_bg"><img src="../../../App_Themes/AdminDefaultTheme/images/clipWeb.gif" /></span><span id="font_jq">网页剪取:</span><span id="input_jq">
    <input type="text" id="txtUrl" value="http://www.zoomla.cn/" onkeyup="if(event.keyCode==13){document.getElementById('txtOK').click();}" onfocus="cc(this)"/>
    </span><span id="bt_jq">
    <input  type="button" id="txtOK" value="添加" onclick="addcut()" />
    <input  type="button" id="txtReset" value="重置" onclick="resetcut()" />
    </span>
    <div id="close_jq" onclick="javascript:document.getElementById('nav_jq').style.display='none';return false;">关闭</div>
  </div>
  <!--页面设置-->
  <div id="ymsz">
    <div id="font_ymsz">页面设置</div>
    <div id="con_ymsz">
      <div id="ymsz_l"> <span>更换皮肤:</span>
        <ul>
          <li><a href="#">商务风格</a></li>
          <li><a href="#">卡通游戏</a></li>
          <li><a href="#">怡人风景</a></li>
          <li><a href="#">简明色调</a></li>
          <li><a href="#">体育奥运</a></li>
          <li><a href="#">影视主题</a></li>
          <li><a href="#">人文怀旧</a></li>
          <li><a href="#">中外节日</a></li>
        </ul>
      </div>
      <div id="ymsz_mid">
      <div id="swfg">
      <ul>
      <li><a href=""><img src="../Images/preview.jpg"></a></li>
      <li><a href=""><img src="../Images/preview1.jpg"></a></li>
      <li><a href=""><img src="../Images/preview2.jpg"></a></li>
      <li><a href=""><img src="../Images/preview3.jpg"></a></li>
      <li><a href=""><img src="../Images/preview4.jpg"></a></li>
      <li><a href=""><img src="../Images/preview5.jpg"></a></li>
      <li><a href=""><img src="../Images/preview6.jpg"></a></li>
      <li><a href=""><img src="../Images/preview7.jpg"></a></li>
      <li><a href=""><img src="../Images/preview8.jpg"></a></li>
      <li><a href=""><img src="../Images/preview9.jpg"></a></li>
      <li><a href=""><img src="../Images/preview10.jpg"></a></li>
      <li><a href=""><img src="../Images/preview11.jpg"></a></li>
      <li><a href=""><img src="../Images/preview12.jpg"></a></li>
      <li><a href=""><img src="../Images/preview13.jpg"></a></li>
      <li><a href=""><img src="../Images/preview14.jpg"></a></li>
      </ul>
      </div>
      </div>
    </div>
    <div id="ymsz_r">
    <div id="ymsz_rt"></div>
    <div id="ymsz_rp" onclick="javascript:document.getElementById('ymsz').style.display='none';return false;">关闭</p>
    </div>
  </div>
  </div>

</form>
<div id="CutUrl" style="display:none;width:100%; height: 1000px;">
  <iframe id="CutIframe" style="width: 100%; height: 1000px;  position: relative"> </iframe>
</div>
<div class="clear"></div>
<div id="mainCount"  style="margin-top:5px;">
  <div id="ddCut0" class="div">
    <%
    if (showCount > Cuts.Count)
    { 
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
            cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 0)
            {
               
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:blockORnone(<%=cut.Id %>,'showORnone<%=i %>','divUrl<%=i %>')"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:editCut(<%=cut.Id %>,'atitle<%=i %>','edit<%=i%>')" class=" aPic bgImg1"></a><a title="最大" href="javascript:maxCut('atitle<%=i %>','iframecut<%=i %>','cuthidden<%=i %>')" class=" aPic bgImg2"> </a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
      
    <%
}
        }
          %>
  </div>
  <div id="ddCut1">
    <%
    if (showCount > Cuts.Count)
    {
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
            cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 1)
            {
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:blockORnone(<%=cut.Id %>,'showORnone<%=i %>','divUrl<%=i %>')"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:editCut(<%=cut.Id %>,'atitle<%=i %>','edit<%=i%>')" class=" aPic bgImg1"></a><a title="最大" href="javascript:maxCut('atitle<%=i %>','iframecut<%=i %>','cuthidden<%=i %>')" class=" aPic bgImg2"> </a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
    <%
}
        }
          %>
  </div>
  <div id="ddCut2" class="div">
    <%
    if (showCount > Cuts.Count)
    {
        showCount = Cuts.Count;
    }
        for (int i = 0; i < showCount; i++)
        {
            cut = Cuts[i];
            int j =Convert.ToInt32(Cuts[i].LevelCut);
            if (j == 2)
            {
            %>
    <div id="divCut<%=i %>" class="divCut" > <span class="ss"><a id="showORnone<%=i %>" title="<%=getsh(i)[0] %>" href="javascript:blockORnone(<%=cut.Id %>,'showORnone<%=i %>','divUrl<%=i %>')"  class=" <%=getsh(i)[1] %>"> </a></span> <span class="tt"><a id="atitle<%=i %>" class="atitle"><%=cut.Title%></a></span>
      <h1 class="yd" title="<%=cut.Id %>"></h1>
      <span class="clo"><a id="edit<%=i %>" title="编辑" href="javascript:editCut(<%=cut.Id %>,'atitle<%=i %>','edit<%=i%>')" class=" aPic bgImg1"></a><a title="最大" href="javascript:maxCut('atitle<%=i %>','iframecut<%=i %>','cuthidden<%=i %>')" class=" aPic bgImg2"> </a><a title="删除" href="javascript: closeDiv(<%=cut.Id %>,'divCut<%=i %>')" class=" aPic bgImg3"></a></span> <%= getCutDiv(i, cut)%> </div>
    <%
}
        }
          %>
  </div>
</div>
<div style="height:20px;"></div>
<div id="editDiv" style="width:250px; height:200px; border:10px #e6f2f8  solid ; background-color:#fff; position:absolute; top:300px; left:50px; z-index:9;  display:none;">
  <div class="atitle">编辑：<a id="inputTitle" class="atitle" >请输入</a><a class="acolse" href="javascript:javascript:hiddendiv('editDiv');">关闭</a></div>
  <div style="text-align:center; padding-top:30px;"> 标题：
    <input id="ediText" type="text" class="ediText"/>
    <br/>
    共享：<select id="drlist" name="drlist" class="drlist">
          <option value="0">共享</option>
          <option value="1">不共享</option>
          </select>
    <br/>
    <br/>
    <input id="editxtId" type="text" value="1" style="display:none;"/>
    <input id="titleaid" type="text" value="1" style="display:none;"/>
    <input id="LevelId" type="text" value="1" style="display:none;" />
    <input id="VerticalId" type="text" value="1" style="display:none;"/>
    <input id="editOK" onclick="editOK()" type="button" class="C_input" style="height:22px;" value="确定"/>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input id="editClose" onclick=" hiddendiv('editDiv')" class="C_input" type="button" style="height:22px;" value="取消" />
  </div>
</div>
<div id="maxCut"  style="width:1000px; height:768px;border: 1px #bbd5e4 solid; margin:10px 15px; display:none; background-color:#fff; position:absolute; z-index:10; ">
  <div  id="maxdivtitle" class="divTitle" style="width:1000px;"> <a class=" aPic bgImg4"  ></a><a id="maxTitle" class="atitle">输入标题</a>
    <div class="minspan"> <a title="还原" href="javascript:hiddendiv('maxCut')" class="aPic bgImg6"></a></div>
  </div>
  <div id='divUrlMax' class="divUrlMax" >
    <div  id="maxcuthidden"  style='width:653px;height:231px;overflow:hidden; margin:auto;'>
      <iframe id="iframemax"  frameborder='0' scrolling='no' src='' style="height:1500px;margin-top: 0px;margin-left:0px;"></iframe>
    </div>
  </div>
</div>
<% }%>

 <script type="text/javascript" src="http://v1.jiathis.com/code/jiathis_r.js?move=0&amp;btn=r5.gif" charset="utf-8"></script>
<script language="javascript">
    function show_zjAdd() {
        document.getElementById('zjAdd').style.display = 'block';
        document.getElementById('nav_add').style.display = 'none';
        document.getElementById('nav_jq').style.display = 'none';
		document.getElementById('ymsz').style.display = 'none';
    
    }

    function show_add() {
        document.getElementById('zjAdd').style.display = 'none';
        document.getElementById('nav_add').style.display = 'block';
        document.getElementById('nav_jq').style.display = 'none';
		document.getElementById('ymsz').style.display = 'none';
    }

    function show_jq() {
        document.getElementById('zjAdd').style.display = 'none';
        document.getElementById('nav_add').style.display = 'none';
        document.getElementById('nav_jq').style.display = 'block';
		document.getElementById('ymsz').style.display = 'none';
    }
		function show_ymsz(){
			
		document.getElementById('zjAdd').style.display = 'none';
        document.getElementById('nav_add').style.display = 'none';
        document.getElementById('nav_jq').style.display = 'none';
		document.getElementById('ymsz').style.display = 'block';
}

$(document).ready(function () {
    $(".setiframe").css("width", screen.width);
  //  alert(screen.width);
});
</script>
<%=writeScript%>
</body>
</html>