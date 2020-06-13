// 运行代码
$.fn.runCode = function () {
	var getText = function(elems) {
		var ret = "", elem;

		for ( var i = 0; elems[i]; i++ ) {
			elem = elems[i];
			if ( elem.nodeType === 3 || elem.nodeType === 4 ) {
				ret += elem.nodeValue;
			} else if ( elem.nodeType !== 8 ) {
				ret += getText( elem.childNodes );
			};
		};

		return ret;
	};
	
	var code = getText(this);
	new Function(code).call(window);
	
	return this;
};

$(function($){
	// 按钮触发代码运行
	$(document).bind('click', function(event){
		var target = event.target,
			$target = $(target);

		if ($target.hasClass('runCode')) {
			$('#' + target.name).runCode();
		};
	});
	
	// 跳转到头部
	var $footer = $('#footer');
	if ($footer[0]) $footer.bind('click', function () {
		window.scrollTo(0, 0);
		return false;
	}).css('cursor', 'pointer')[0].title = '回到页头';
});

// google-analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-19823759-2']);
_gaq.push(['_setDomainName', '.planeart.cn']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();