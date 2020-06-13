function ZoomlaUser_dh(url){
//    alert(url);
//    window.parent.infors.location.reload(); 
    document.getElementById("infors").src = url;
   
}

//新用户中心
var Core = {};
Core.attachMethod = function(ele){
	if(!ele||ele["$A"]){
		return;
	}
	if(ele.nodeType==9){
		return;
	}
	var win;
	try{
		if(isGecko){
			win = ele.ownerDocument.defaultView;
		}else{
			win = ele.ownerDocument.parentWindow;
		}
		for(var prop in win.$E){
			ele[prop] = win.$E[prop];
		}
	}catch(ex){
		//alert("Core.attachMethod:"+ele)//有些对象不能附加属性，如flash
	}
}

var Constant = {};

Constant.Null = "_ZVING_NULL";

function $(ele) {
  if (typeof(ele) == 'string'){
    ele = document.getElementById(ele)
    if(!ele){
  		return null;
    }
  }
  if(ele){
  	Core.attachMethod(ele);
	}
  return ele;
}


//左侧导航打开定义
var full=false;
function CloseleftStatu()
{
  if(!full)
	{
	    document.getElementById("MENU2").style.display = "none";
	    document.getElementById("MENU").style.display = "none";
	    document.getElementById("MENU").style.width = "0px";
		full=true;
		document.getElementById("st").innerHTML = "&#x221A; &#x6253;&#x5F00;&#x5DE6;&#x680F;"
		//document.getElementById("main_right").style.width = "1270px";
		loadaction();
	}
  else
	{
	    document.getElementById("MENU2").style.display = "block";
	    document.getElementById("MENU").style.display = "block";
		document.getElementById("MENU").style.width = "176px";
		full=false;
		document.getElementById("st").innerHTML = "<font color=#ff3300>×</font> &#x5173;&#x95ED;&#x5DE6;&#x680F;"
		loadaction();
		//document.getElementById("main_right").style.width = "1070px";
	}
}



