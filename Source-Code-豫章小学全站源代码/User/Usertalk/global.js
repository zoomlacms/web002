//Version: 1.0

_pi = function(str) {
	return parseInt(str);
}
_gObj = function(id) {
	return document.getElementById(id);
}

String.prototype.chop = function() {
	return this;
}

String.prototype.nl2br = function() {
	return this.split('\n').join('<br \/>\n');
}

String.prototype.escapeForXML = function() {
	return this.replace(/&/g, '&amp;').replace(/\"/g, '&quot;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
}

String.prototype.escapeForDisplay = function() {
	return this.replace(/</g, '&lt;');
}

//添加字符串对象len方法
String.prototype.len = function()
{
	return this.replace(/[^\x00-\xff]/g,"aa").length;
}

function checkFlash() {
	if (actualVersion>=6) return true;
	return false;
}

function okForXMLHTTPREQUEST(){
	if (!window.XMLHttpRequest) return false;
	if (navigator.appVersion.toLowerCase().indexOf("mac") > 0 && navigator.userAgent.indexOf('MSIE') > 0 && navigator.userAgent.indexOf('Opera') == -1) return false;
	return true;
}

function getEventSrc(e){
	if (e){ return e.target; }
	if (window.event){ return window.event.srcElement; }
	return null;
}

function getKeyCode(e){
	if (e){ return e.which; }
	if (window.event){ return window.event.keyCode; }
	return null;
}

function setFocus(obj)
{	
	_gObj(obj).focus();	
}

/*
	findPosX 
	findPosY 
	from http://www.quirksmode.org
*/
function findPosX(obj)
{
	var curleft = 0;
	if (obj.offsetParent)
	{
		while (obj.offsetParent)
		{
			curleft += obj.offsetLeft
			obj = obj.offsetParent;
		}
	}
	else if (obj.x)
		curleft += obj.x;
	
	return curleft;
}

function findPosY(obj)
{
	var curtop = 0;
	if (obj.offsetParent)
	{
		while (obj.offsetParent)
		{
			curtop += obj.offsetTop
			obj = obj.offsetParent;
		}
	}
	else if (obj.y)
		curtop += obj.y;

	return curtop;
}

function in_array(a, s)
{
	var s = new String(s);
	s = s.toLowerCase();
	var a = new String(a);	
	a = a.toLowerCase();
	return (","+a+",").indexOf(","+s+",");
}

function get_extname(s)
{
	var s = new String(s)
	s = s.toLowerCase();
	if ((s.lastIndexOf(".")>-1) &&((s.length-1)>s.lastIndexOf("."))) 
	{		
		return s.substring(s.lastIndexOf(".")+1);
	}
	else
	{
		return false;
	}	
}

var Browser = new Object();
Browser.isMozilla = (typeof document.implementation != 'undefined') && (typeof document.implementation.createDocument != 'undefined') && (typeof HTMLDocument!='undefined');
Browser.isIE = window.ActiveXObject ? true : false;
Browser.isFirefox = (navigator.userAgent.toLowerCase().indexOf("firefox")!=-1);
Browser.isOpera = (navigator.userAgent.toLowerCase().indexOf("opera")!=-1);

//去空函数
function trim(s) {
  while (s.substring(0,1) == ' ') {
    s = s.substring(1,s.length);
  }
  while (s.substring(s.length-1,s.length) == ' ') {
    s = s.substring(0,s.length-1);
  }
  return s;
}

//取location参数
function getParameterDef(loc,varName)
{
	var query = loc;
	if (query != null || query != "")
	{
		query = query.replace(/^\?+/, "");
		var qArray = query.split("&");
		var len = qArray.length;
		if (len > 0)
		{
			for (var i=0; i<len; i++)
			{
				var sArray = qArray[i].split("=", 2);
				if (sArray[0] && sArray[1] && sArray[0] == varName)
				{
					return unescape(sArray[1]);
				}
			}
		}
	}
	return null;
}

//判断字符串是否为空
function isNull(s)
{
	if (s+"123" == "123")
	{
		return true;
	}
	return false;
}
function debug(msg)
{
	if((typeof(is_debug)!="undefined") && (is_debug==1))
	{
		alert(msg);
	}
}