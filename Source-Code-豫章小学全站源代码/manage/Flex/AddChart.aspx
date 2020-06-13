<%@ page language="C#" autoeventwireup="true" enableviewstatemac="false" inherits="manage_Flex_Chart, App_Web_t13hjwl4" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
<title>图表管理</title>
<link href="../../App_Themes/AdminDefaultTheme/Guide.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/index.css" type="text/css" rel="stylesheet" />
<link href="../../App_Themes/AdminDefaultTheme/main.css" type="text/css" rel="stylesheet" /> 
<script language="javascript" type="text/javascript" src="/JS/jquery-1.5.1.min.js"></script>
</head>
<body >
<form id="form1" runat="server">
<iframe id="colorPalette" src="/common/setcolor.htm" style="visibility: hidden; position: absolute; border: 1px gray solid; left: 2px; top: 1px;" frameborder="0" scrolling="no"></iframe>
<div class="r_navigation">后台管理&gt;&gt; 扩展功能&gt;&gt; <a href="../Plus/ChartManage.aspx">图表管理</a>&gt;&gt;<asp:Label
    ID="Lt" runat="server" Text="添加图表"></asp:Label></div>
  <table border="0" cellpadding="2" cellspacing="1" class="border" width="100%">
      <td class="spacingtitle" colspan="2" style="height: 26px; text-align:center;"><strong>
        <asp:Label ID="Label1" runat="server" Text="添加图表"></asp:Label>
        </strong>
       </td>
          <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="left" class="tdbgleft"style="width:200px;"><strong>图表标题：</strong></td>
      <td align="left"><asp:TextBox ID="TxtChartTitle" class="l_input" runat="server"  MaxLength="100" TextMode="SingleLine"></asp:TextBox>
        &nbsp;*   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtChartTitle"  ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
    </tr>

    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="left" class="tdbgleft"style="width:200px;"><strong>图表类型：</strong></td>
      <td align="left">
          <input type="hidden" value="饼状图" id="zhuhid" runat="server" />
          <input type="radio"  value="饼状图" id="Bzhuang" onclick="Sethid(this.id)" name="Btype" runat="server" checked /><label for="Bzhuang" style="cursor:pointer">饼状图</label>
          <input type="radio"  value="线状图" id="Xzhuang" onclick="Sethid(this.id)" name="Btype" runat="server"  /><label for="Xzhuang" style="cursor:pointer">线状图</label>
          <input type="radio"  value="柱状图" id="Zzhuang" onclick="Sethid(this.id)" name="Btype" runat="server"  /><label for="Zzhuang" style="cursor:pointer">柱状图</label>
      </td>
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="left" class="tdbgleft"style="width:200px;"><strong>图表单位：</strong></td>
      <td align="left"><asp:TextBox ID="TxtChartUnit" class="l_input" runat="server"  MaxLength="100" TextMode="SingleLine" Text="位"></asp:TextBox>
        &nbsp;*
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtChartUnit"  ErrorMessage="不能为空"></asp:RequiredFieldValidator></td>
    </tr>

     <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
      <td align="left" class="tdbgleft" style="width:200px;"><strong>图表尺寸：</strong></td>
      <td align="left"  >
         <table class="tdbg">
          <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
            <td style="width: 226px; height: 22px;" > 宽度：
              <asp:TextBox ID="TxtChartWidth" runat="server" class="l_input" MaxLength="4" Text="300" TextMode="singleLine" Width="24px"></asp:TextBox>px  &nbsp; &nbsp; 高度：
              <asp:TextBox ID="TxtChartHeight" class="l_input" runat="server" MaxLength="4" Text="200" TextMode="singleLine" Width="24px"></asp:TextBox>px </td>
          </tr>       
        </table></td>       
    </tr>
    <tr class="tdbg" onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'">
      <td align="left" class="tdbgleft"style="width:200px;"><strong>图表数据：</strong></td>
      <td align="left">
          <textarea id="TbBase" style="height:80px;width:200px;" class="l_input" runat="server" >1,2,3|a,b,c</textarea>
        &nbsp;*<span id="baseGz" style="color:Red" runat="server"></span>
       </td>
    </tr>
     <tr onmouseover="this.className='tdbgmouseover'" onmouseout="this.className='tdbg'" class="tdbg">
      <td align="left" class="tdbgleft" style="width:200px;"></td>
      <td align="left"  >
          <input id="tBYl" type="button" onclick="tBopen(3)" value="预览" class="C_input" /> <asp:Button id="Get" Text="生成图表" runat="server"  class="C_input" onclick="Get_Click" /></td>       
    </tr>
    </table>

    <table width="100%" border="0" cellpadding="2" cellspacing="1" class="border">
	<tr class="tdbg">
		<td align="left"   style="height:30px; padding-left:60px; padding-bottom:20px;">
        <div>预览区：</div>
			<%--<asp:TextBox ID="TxtCode" runat="server" TextMode="MultiLine" class="x_input" style="Width:578px;Height:50px; padding:5px;"></asp:TextBox>
		 &nbsp; 
         <input id="Button1" type="button" value="获取广告代码" class="C_input"  onclick="copy()"/>
         <input id="Button2" type="button" value="返回列表" class="C_input"  onclick="back()"/>--%>
<iframe width="300" height="200" id="TbLocation" src="" frameborder="0" scrolling="no"></iframe>
		</td>
	</tr> 
   </table>
   <asp:HiddenField ID="HdnChartId" runat="server"/>
</form>

</body>
</html>
<script type="text/javascript" charset="utf-8">
    function copy() {
        var innerHTML = "复制失败您的浏览器不支持复制，请手动复制代码。";
        if (window.clipboardData) {
            innerHTML = "复制成功您现在可以将代码粘贴（ctrl+v）到网页中预定的位置。";

            var str = $("#TxtCode").html();
            while (str.indexOf("&lt;") >= 0) {
                str = str.replace("&lt;", "<");
            }
            while (str.indexOf("&gt;") >= 0) {
                str = str.replace("&gt;", ">");
            }

            window.clipboardData.setData("Text", str);
            alert(innerHTML);

        }
        else { alert(innerHTML); }
    }
    function back() {
        window.location="../Plus/ChartManage.aspx";
    }
</script>
<script type="text/javascript">
    $(function () {
        if ('<%=Request["ChartID"] %>' != "") {
            tBopen(1);
        } else {
            tBopen(2);
        }
//        $("#TxtChartWidth").blur(function () {
//            tBopen(2);
//        })
//        $("#TxtChartHeight").blur(function () {
//            tBopen(2);
//        })
    })
    function Sethid(va) {
        $("#zhuhid").val($("#" + va).val());
        var gz = $("#baseGz");
        if ($("#zhuhid").val() == "饼状图") {
            if ('<%=Request["ChartID"] %>' == "") {
            $("#TbBase").val("1,2,3|a,b,c");
            }
            gz.text("规则：X|Y 例:1,2,3|a,b,c  纯百分比");
        } else {
             if ('<%=Request["ChartID"] %>' == "") {
            $("#TbBase").val("{2011|1,2,3|a,b,c}^{2012|2,4,7|a,b,c}");
             }
            gz.text("规则：单组:{组名|X|Y},多组以^隔开 例: {2011|1,2,3|a,b,c}^{2012|2,4,7|a,b,c} Y轴以第一组为准");
        }
        tBopen(2);
    }
    function tBclose() {
        $("#YlTb").hide();
    }

    function tBopen(ty) {
        var obj = new Object();
        obj.tbtype = $("#zhuhid").val();
        obj.tbwidth = $("#TxtChartWidth").val();
        obj.tbheight = $("#TxtChartHeight").val();
        obj.tbunit = escape($("#TxtChartUnit").val());
        obj.tbtitle = escape($("#TxtChartTitle").val());
        obj.tbbase = escape($("#TbBase").val());
        obj.tbsrc = $("#TbLocation");

        if (ty == 1) {
            if (obj.tbtype == "饼状图") {
                obj.tbsrc.attr("src", "/manage/Charts/pie-basic.aspx?Cid=" + '<%=Request["ChartID"] %>');
            } else if (obj.tbtype == "线状图") {
                obj.tbsrc.attr("src", "/manage/Charts/line.aspx?Cid=" + '<%=Request["ChartID"] %>');
            } else if (obj.tbtype == "柱状图") {
                obj.tbsrc.attr("src", "/manage/Charts/colum.aspx?Cid=" + '<%=Request["ChartID"] %>');
            }
        } else if (ty == 2) {
            if (obj.tbtype == "饼状图") {
                obj.tbsrc.attr("src", "/manage/Charts/pie-basic.aspx?Cid=0&wihi=" + obj.tbwidth + "|" + obj.tbheight);
            } else if (obj.tbtype == "线状图") {
                obj.tbsrc.attr("src", "/manage/Charts/line.aspx?Cid=0&wihi=" + obj.tbwidth + "|" + obj.tbheight);
            } else if (obj.tbtype == "柱状图") {
                obj.tbsrc.attr("src", "/manage/Charts/colum.aspx?Cid=0&wihi=" + obj.tbwidth + "|" + obj.tbheight);
            }
        } else if (ty == 3) {
            if (obj.tbtype == "饼状图") {
                obj.tbsrc.attr("src", "/manage/Charts/pie-basic.aspx?Bases=" + obj.tbwidth + "|" + obj.tbheight+"|"+obj.tbtitle+"|"+obj.tbunit+"&Datas="+obj.tbbase);
            } else if (obj.tbtype == "线状图") {
                obj.tbsrc.attr("src", "/manage/Charts/line.aspx?Bases=" + obj.tbwidth + "|" + obj.tbheight + "|" + obj.tbtitle + "|" + obj.tbunit + "&Datas=" + obj.tbbase);
            } else if (obj.tbtype == "柱状图") {
                obj.tbsrc.attr("src", "/manage/Charts/colum.aspx?Bases=" + obj.tbwidth + "|" + obj.tbheight + "|" + obj.tbtitle + "|" + obj.tbunit + "&Datas=" + obj.tbbase);
            }
        }
        obj.tbsrc.width(obj.tbwidth).height(obj.tbheight);
    }
    </script>