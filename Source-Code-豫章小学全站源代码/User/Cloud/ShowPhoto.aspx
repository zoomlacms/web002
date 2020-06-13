<%@ page language="C#" autoeventwireup="true" inherits="User_Cloud_ShowPhoto, App_Web_4tcoj2v3" enableEventValidation="false" viewStateEncryptionMode="Never" %>
<!DOCTYPE html >
<html>
<head runat="server">
<title>图片预览</title>
<script src="/js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
        /*
        -------fctText  文字内容
        -------fctTop   文字在页面中距顶位置
        -------fctLeft  文字在页面中距左位置
        -------fctBold  阴影宽度
        -------Color    文字颜色
        -------bgColor  阴影颜色
        -------FontSize 文字大小*/
    //alert($(window).height());
   
        if (typeof (pyzy) == 'undefined') {
            var pyzy = {};  //起用封装方法名称，避免脚本命名污染
            pyzy.$ = function (fctId) { return document.getElementById(fctId); };
        }
        pyzy.ColorText = function (fctText, fctTop, fctLeft, fctBold, Color, bgColor, FontSize) {
            var varZBT = (fctTop - fctBold / 2);
            var varZBL = (fctLeft - fctBold / 2);
            var varWriteText = "";
            for (var i = 1; i < fctBold; i++) {
                for (var j = 1; j < fctBold; j++) {
                    varWriteText = varWriteText + '<div style="position:absolute;z-index:98;margin:' + (varZBT + i) + 'px ' + (varZBL + j) + 'px;color:' + bgColor + ';font-size:' + FontSize + 'px;">' + fctText + '</div>';
                }
            }
            return varWriteText + '<div style="position:absolute;z-index:98;margin:' + fctTop + 'px ' + fctLeft + 'px;color:' + Color + ';font-size:' + FontSize + 'px;">' + fctText + '</div>';
        }
        //CloseImgBox
        //图片盒子展示工具主要方法 
        pyzy.MinImgsBox = {
            intImgId: 0, //默认图片ID
            arrImgs: [["图片名称", "大图路径", "小图路径"]], //图片数据
            objMaxImgBoxObj: null, //大图片容器
            objMinImgBoxObj: null,  //小图片容器
            objMinImgObj: null,     //当前正在播放的小图的IMG对象，用于校对小图容器的滚动条位置等
            objPlayRateObj: null,  //播放进度对象
            /* Init 索引方法：
            @ fctArrImgs       图片信息数据数组 参见 arrImgs 的格式*/
            Init: function (fctArrImgs) {
                this.arrImgs = fctArrImgs;  //将图片数据存储于变量中
                this.objMaxImgBoxObj = pyzy.$("divPyzyImgBoxContent"); //将大图片容器存储于变量
                this.objMinImgBoxObj = pyzy.$("divPyzyMinImgs");   //将小图片容器存储于变量
                this.objPlayRateObj = pyzy.$("divPyzyImgBoxRate"); //将播放进度对象存储于变量
                var tmpMinImgsBoxHTML = []; //临时小图列表存储
                for (var intI = 0; intI < this.arrImgs.length; intI++) {
                    tmpMinImgsBoxHTML[tmpMinImgsBoxHTML.length] = "<img id='imgMinItem" + intI + "' onClick='pyzy.MinImgsBox.Show(" + intI + ")' alt='" + this.arrImgs[intI][0] + "' src='" + this.arrImgs[intI][2] + "' />"
                }
                this.objMinImgBoxObj.innerHTML = tmpMinImgsBoxHTML.join(""); //输出小图列表到容器
                this.Show(<%=pic %>); //默认显示第一个图片
            },
            Show: function (fctId) {
                if (this.arrImgs.length == 0) {
                    alert("缺少图片数据");
                    return;
                }
                //判断ID并矫正为正确编号
                fctId = (fctId < 0 ? this.arrImgs.length - 1 : (fctId >= this.arrImgs.length ? 0 : fctId));
                //播放进度
                this.objPlayRateObj.title = "共[" + this.arrImgs.length + "]张图片，当前为第[" + (fctId + 1) + "]张图片，播放进度为" + ((fctId + 1) / this.arrImgs.length * 100) + "%。";
                this.objPlayRateObj.style.width = ((fctId + 1) / this.arrImgs.length * this.objPlayRateObj.parentNode.offsetWidth) + "px";
                //取得当前播放图片的小图对象
                this.objMinImgObj = pyzy.$("imgMinItem" + fctId)
                //调整小图片容器滚动条位置，使得当前图片在容器的中间
                pyzy.MinImgsScroll.Init(
            this.objMinImgBoxObj,
            (
                (   //先通过小图片对象的左边距与得出图片与容器左边的距离：因为IE环境下的元素边距是相对于父容器的、而火狐下是相对于窗体，所以这里用到了浏览器环境的判断
                    this.objMinImgObj.offsetLeft -
                    (navigator.appVersion.indexOf("MSIE") == -1 ? this.objMinImgObj.parentNode.offsetLeft : 0)
                ) -  //减掉图片容器滚动条已经卷掉的相素，这样取到的是可以使小图片始终居于容器最左边的，所以接下来减掉容器一半的宽度 恰巧就可以使小图片居于容器中间
                this.objMinImgBoxObj.scrollLeft
                -
                (this.objMinImgBoxObj.offsetWidth / 2)
             )
        );
                //输出图片名称到大图片容器
                this.objMaxImgBoxObj.innerHTML = pyzy.ColorText(this.arrImgs[fctId][0], 0, 0, 4, "#444;bottom:2px;right:10px", "#444;bottom:2px;right:10px", 12) + pyzy.ColorText(this.arrImgs[fctId][0], 2, 2, 4, "#666;bottom:2px;right:10px", "#fff;bottom:2px;right:10px", 12);
                //用当前大图片路径替掉大图片容器的背景
                this.objMaxImgBoxObj.style.backgroundImage = "url(" + this.arrImgs[fctId][1] + ")";
                //取消先前的默认图片的选中状态
                pyzy.$("imgMinItem" + this.intImgId).className = "";
                //设置先前的默认图片为样式为选中状态
                this.objMinImgObj.className = "Sel";
                this.intImgId = fctId;
            }
        };
        //滚动条控制方法
        pyzy.MinImgsScroll = {
            intAllScrollSeep: 0, //步长，单次滚动的幅度
            intScrollCount: 0,   //滚动长度记录 记录按象素滚动的长度与步长对比 用以实现动态滚动效果
            objScroll: null,     //要控制其滚动条的目标对象
            boolLeft: true,      //滚动条类型，默认为左右水平滚动条
            /* Init 索引方法：
            @ (fctBoxObj) 要控制其滚动条的目标对象,必须指定
            @ [fctSeep]   移动步长 按正负数控制左右滚动[不指定则默认为目标对象的宽度(如果是垂直则为其高度)]
            @ [fctTop]    滚动条类型 默认Left为左右水平滚动条,此参数指定任意值则为垂直滚动条 */
            Init: function (fctObj, fctSeep, fctTop) {
                this.objScroll = fctObj;
                this.boolLeft = (fctTop == null);
                this.intAllScrollSeep = (fctSeep == null ? (this.boolLeft ? this.objScroll.offsetWidth : this.objScroll.offsetHeight) : fctSeep);
                //判断滚动步长值 如果为当前状态的反方向 则将滚动幅度取反
                this.intSeep = ((this.intAllScrollSeep < 0 && this.intSeep > 0) || (this.intAllScrollSeep > 0 && this.intSeep < 0) ? -1 : 1) * this.intSeep;
                this.intScrollCount = 0; //初始化步长执行进度统计为0
                this.AutoSeep();
            },
            intSeep: 5, //自动滚动时的幅度 默认为10象素
            AutoSeep: function () {
                if (Math.abs(this.intAllScrollSeep) > Math.abs(this.intScrollCount)) { //是否已经完成滚动步长
                    this.intScrollCount += this.intSeep;
                    if (this.boolLeft) { this.objScroll.scrollLeft += this.intSeep; }
                    else { this.objScroll.scrollTop += this.intSeep; }
                    window.setTimeout("pyzy.MinImgsScroll.AutoSeep();", 8); //8 毫秒后继续执行滚动,也可以更改此参数控制滚动时的速度
                }
            }
        };
</script>
<style type="text/css">
/*图片盒子 总容器样式*/
.PyzyImgBox{width:690px;height:480px;background-color:#000000;text-align:left; text-align:center;position:absolute;width:100%;height:100%;}
	/*设置所有子元素边距为0防止继承后导致界面错乱*/
	/*.PyzyImgBox div{padding:0px;margin:0px;}*/
	/*图片盒子 标题容器*/
	.PyzyImgBoxTitle{background:url(image/hotel_img_show_box_byhuzj.gif) 0px -44px; height:27px; line-height:27px;border-width:1px 0px; border-top-color:#484848;}
		/*图片盒子标题右侧的关闭*/
		.PyzyImgBoxTitle span{float:right;background:url(image/hotel_img_show_box_byhuzj.gif) 0px 0px;height:27px;width:27px; cursor:pointer;}
		/*图片盒子标题左侧的标题图片*/
				   
	/*大图片显示功能容器*/
	.PyzyImgBoxBody{text-align:center;}
		/*“前一个”按钮*/
		.PyzyImgBoxForwardButton{float:left;width:60px;}
			.PyzyImgBoxForwardButton img{background:url(image/hotel_img_show_box_byhuzj.gif) 0px -88px;cursor:pointer;width:29px;height:33px;}
		/*“后一个”按钮*/
		.PyzyImgBoxNextButton{float:right;width:60px;}
			.PyzyImgBoxNextButton img{background:url(image/hotel_img_show_box_byhuzj.gif) 0px -141px;cursor:pointer;width:29px;height:33px;}
		/*主角出场：大图片显示容器*/
		#divPyzyImgBoxContent{position:relative;margin:0px 60px;background:url(image/b.gif) center center no-repeat;}
	/*底部功能区*/
	.PyzyImgBoxBottom{height:59px;background:url(image/hotel_img_show_box_byhuzj.gif) 0px -294px;}
		/*图片播放进度*/
		.PyzyImgBoxRate{width:50%; margin-top:1px;background-color:#bbbbbb;height:3px;border-top:solid #c5c5c5 1px;border-bottom:solid #dadada 1px;}
		/*小图片显示容器*/
		.PyzyImgBoxMinImg{height:53px;text-align:center;}
		/*小图片容器中的向左滚动按钮*/
		.PyzyImgBoxLeftScroll{float:left;height:53px;width:22px;}
			.PyzyImgBoxLeftScroll img{margin-top:10px;background:url(image/hotel_img_show_box_byhuzj.gif) 0px -198px;cursor:pointer;width:9px;height:32px;}
		/*小图片容器中的向右滚动按钮*/
		.PyzyImgBoxRightScroll{float:right;height:53px;width:22px;}
			.PyzyImgBoxRightScroll img{margin-top:10px;background:url(image/hotel_img_show_box_byhuzj.gif) 0px -249px;cursor:pointer;width:9px;height:32px;}
		/*小图片容器*/
		.PyzyMinImgBox{margin:0px 23px;height:53px;}
			/*用于设置overflow若在上一层设置将无法正常排版*/
			.PyzyMinImgBox div{width:638px;overflow:hidden;white-space:nowrap; font-size:0px;}
			/*小图片显示样式 透明样式兼容IE FF*/
			.PyzyMinImgBox img{filter:alpha(opacity=50);opacity: 0.5;cursor:pointer;margin:1px 4px;height:44px;width:52px; padding:1px 3px; border:solid #ccc 1px;}
			/*若为当前图片则取消透明*/
			.PyzyMinImgBox img.Sel{filter:none;opacity:100;border:solid #aaa 2px;}
		
</style>
</head>
<body style="background-color:#333333; margin-right: 252px; overflow:hidden;">
<div class="PyzyImgBox">
	<div class="PyzyImgBoxTitle">
		<span title="关闭" onclick="CloseImgBox()">
		</span>
	</div>
	<div class="PyzyImgBoxBody">
		<div class="PyzyImgBoxForwardButton">
			<img onclick="pyzy.MinImgsBox.Show(pyzy.MinImgsBox.intImgId - 1)" alt="上一个" src="image/b.gif" />
		</div>
		<div class="PyzyImgBoxNextButton">
			<img onclick="pyzy.MinImgsBox.Show(pyzy.MinImgsBox.intImgId + 1)" alt="下一个" src="image/b.gif" />
		</div>
		<div id="divPyzyImgBoxContent" style="background-image:url([img]image/logo120x50.jpg[/img]);"></div>
	</div>
	<div class="PyzyImgBoxBottom" style="margin-top:20px;">
		<div id="divPyzyImgBoxRate" class="PyzyImgBoxRate"><!--进度--></div>
		<div class="PyzyImgBoxMinImg" >
			<div class="PyzyImgBoxLeftScroll" >
				<img alt="左滚动" src="image/b.gif" onclick="pyzy.MinImgsScroll.Init(pyzy.$('divPyzyMinImgs'),-638);" />
			</div>
			<div class="PyzyImgBoxRightScroll">
				<img alt="右滚动" src="image/b.gif" onclick="pyzy.MinImgsScroll.Init(pyzy.$('divPyzyMinImgs'),638);" />
			</div>
			<div class="PyzyMinImgBox">
				<div id="divPyzyMinImgs" style=" height:53px;width:100%"></div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
<script type="text/javascript">
    var midHeight=$(window).height()-$('#divPyzyMinImgs').height()-27-20-10;
    $('#divPyzyImgBoxContent').height(midHeight);
    $('.PyzyImgBoxForwardButton img').css("margin-top",(midHeight-33-27)/2);
    $('.PyzyImgBoxNextButton img').css("margin-top",(midHeight-33-27)/2);
<%=script %>
  window.onresize = function (){
   var midHeight=$(window).height()-$('#divPyzyMinImgs').height()-27-20-10;
    $('#divPyzyImgBoxContent').height(midHeight);
    $('.PyzyImgBoxForwardButton img').css("margin-top",(midHeight-33-27)/2);
    $('.PyzyImgBoxNextButton img').css("margin-top",(midHeight-33-27)/2);
  }
//    pyzy.MinImgsBox.Init([
//    /*["图片名称","大图路径","小图路径"]*/
//        ["", "image/247662.jpg", "image/247662.jpg"],
//        ["", "image/20081106010336762.gif", "image/20081106010336762.gif"],
//        ["", "image/2007123115255158_2.jpg", "image/2007123115255158_2.jpg"],
//        ["", "image/2007123114531352_2.jpg", "image/2007123114531352_2.jpg"],
//        ["", "image/1982774_180244745210_2.jpg", "image/1982774_180244745210_2.jpg"],
//        ["", "image/20081106010336762.gif", "image/20081106010336762.gif"],
//        ["", "image/2007123115255158_2.jpg", "image/2007123115255158_2.jpg"],
//        ["", "image/2007123114531352_2.jpg", "image/2007123114531352_2.jpg"],
//        ["", "image/1982774_180244745210_2.jpg", "image/1982774_180244745210_2.jpg"],
//        ["", "image/247662.jpg", "image/247662.jpg"],
//        ["", "image/20081106010336762.gif", "image/20081106010336762.gif"],
//        ["", "image/2007123115255158_2.jpg", "image/2007123115255158_2.jpg"],
//        ["", "image/2007123114531352_2.jpg", "image/2007123114531352_2.jpg"],
//        ["", "image/1982774_180244745210_2.jpg", "image/1982774_180244745210_2.jpg"],
//        ["", "image/2007123114531352_2.jpg", "image/2007123114531352_2.jpg"],
//        ["", "image/20081106010336762.gif", "image/2	0081106010336762.gif"],
//        ["", "image/2007123115255158_2.jpg", "image/2007123115255158_2.jpg"],
//        ["", "image/2007123114531352_2.jpg", "image/2007123114531352_2.jpg"],
//        ["", "image/1982774_180244745210_2.jpg", "image/1982774_180244745210_2.jpg"]
//    ]);
    function CloseImgBox() {
        window.open('', '_parent', '');
        window.close();
       parent.close();
        //	window.opener=null;//加上这句可以在关闭窗口时不弹出确认提示按钮
        //	window.close();//这句就是关闭窗口的方法
        //    //下面这句话的意思是5秒钟后自动关闭，其中的5000表示5000毫秒
        setTimeout("self.close()", 5000);
    }
    function closeDIV(obj) {
        var obj = document.getElementById("PyzyImgBox");  //也可以直接指定要删除的id
        //document.body.removeChild(obj);
    }

    function MaxImgBox() {
        windowWidth = window.screen.availWidth;
        windowHeight = window.screen.availHeight;
        window.moveTo(0, 0);
        window.resizeTo(windowWidth, windowHeight);
    }
    function AllScan() {
        window.miman.style.display.PyzyImgBox = "none";
    }
    function myfullscreen()
    { window.open("PyzyImgBox", 'myname', 'width=' + screen.width + ',height=' + screen.height + ',top=0,left=0'); }
    function showDiv() {
        var obj = document.getElementById("PyzyImgBox");
        obj.style.display = '';
    }
</script>
