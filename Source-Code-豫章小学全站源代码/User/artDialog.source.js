/*
 * artDialog 4.0.1
 * Date: 2011-07-09 19:27
 * http://code.google.com/p/artdialog/
 * (c) 2009-2010 TangBin, http://www.planeArt.cn
 *
 * This is licensed under the GNU LGPL, version 2.1 or later.
 * For details, see: http://creativecommons.org/licenses/LGPL/2.1/
 */
 
 
/*!------------------------------------------------------------------
	"art"底层操作微型库，模拟jQuery核心接口，压缩后8KB左右。
	可让artDialog4+版本向jQuery过度，同时也能让artDialog高效率的独立运行。
*/
;(function (window, undefined) {
if (window.jQuery) return jQuery;

var $ = window.art = function (selector, content) {
    	return new $.fn.init(selector, content);
	},
    readyBound = false,
    readyList = [],
	timers = [],
    DOMContentLoaded, timerId, 
	isOpacity = 'opacity' in document.documentElement.style,
	hasOwnProperty = Object.prototype.hasOwnProperty,
	quickExpr = /^(?:[^<]*(<[\w\W]+>)[^>]*$|#([\w\-]+)$)/,
	rroot = /^(?:body|html)$/i,
	rbox = /^(?:div|span)$/i,
	rclass = /[\n\t]/g,
	ralpha = /alpha\([^)]*\)/i,
	ropacity = /opacity=([^)]*)/,
    rfxnum = /^([+-]=)?([\d+-.]+)(.*)$/;

if (window.$ === undefined) window.$ = $;
$.fn = $.prototype = {
	constructor: $,
	
    /**
	 * DOM 就绪
	 * @param	{Function}	回调函数
	 * @return	{this}
	 */
    ready: function (callback) {
        $.bindReady();

        if ($.isReady) {
            callback.call(document, $);
        } else if (readyList) {
            readyList.push(callback);
        };

        return this;
    },

    /**
	 * 判断样式类是否存在
	 * @param	{String}	名称
	 * @return	{Boolean}
	 */
    hasClass: function (name) {		
		var className = ' ' + name + ' ';
		if ((' ' + this[0].className + ' ').replace(rclass, ' ').indexOf(className) > -1) return true;

		return false;
    },

    /**
	 * 添加样式类
	 * @param	{String}	名称
	 * @return	{this}
	 */
    addClass: function (name) {
        if (!this.hasClass(name)) this[0].className += ' ' + name;

        return this;
    },

    /**
	 * 移除样式类
	 * @param	{String}	名称
	 * @return	{this}
	 */
    removeClass: function (name) {
        var elem = this[0];

        if (!name) {
            elem.className = '';
        } else
		if (this.hasClass(name)) {
            elem.className = elem.className.replace(name, ' ');
        };

        return this;
    },

    /**
	 * 读写样式<br />
     * css(name) 访问第一个匹配元素的样式属性<br />
     * css(properties) 把一个"名/值对"对象设置为所有匹配元素的样式属性<br />
     * css(name, value) 在所有匹配的元素中，设置一个样式属性的值<br />
	 * @return	{this}
	 */
    css: function (name, value) {
        var i, elem = this[0], obj = arguments[0];

        if (typeof name === 'string') {
            if (value === undefined) {
                return $.css(elem, name);
            } else {
                name === 'opacity' ?
					$.opacity.set(elem, value) :
					elem.style[name] = value;
            };
        } else {
            for (i in obj) {
				i === 'opacity' ?
					$.opacity.set(elem, obj[i]) :
					elem.style[i] = obj[i];
			};
        };

        return this;
    },

    /**
	 * 获取相对文档的坐标
	 * @return	{Object}	返回left、top的数值
	 */
    offset: function () {
        var elem = this[0],
            box = elem.getBoundingClientRect(),
            doc = elem.ownerDocument,
            body = doc.body,
            docElem = doc.documentElement,
            clientTop = docElem.clientTop || body.clientTop || 0,
            clientLeft = docElem.clientLeft || body.clientLeft || 0,
            top = box.top + (self.pageYOffset || docElem.scrollTop) - clientTop,
            left = box.left + (self.pageXOffset || docElem.scrollLeft) - clientLeft;

        return {
            left: left,
            top: top
        };
    },
	
    /**
	 * 这返回父元素中第一个其position设为relative或者absolute的元素
	 * @return	{HTMLElement}
	 */
	/* offsetParent: function () {
		var offsetParent = this[0].offsetParent || document.body;

		while (offsetParent && (!rroot.test(offsetParent.nodeName) && $.css(offsetParent, 'position') === 'static')) {
			offsetParent = offsetParent.offsetParent;
		};
		
		return $(offsetParent);
	}, */
	
    /**
	 * 获取匹配元素相对父元素的偏移
	 * @return	{Object}
	 */
	/* position: function() {
		var elem = this[0],
			offsetParent = this.offsetParent(),
			offset = this.offset(),
			parentOffset = rroot.test(offsetParent[0].nodeName) ? { top: 0, left: 0 } : offsetParent.offset();

		offset.top -= parseFloat($.css(elem, 'marginTop')) || 0;
		offset.left -= parseFloat($.css(elem, 'marginLeft')) || 0;

		parentOffset.top += parseFloat($.css(offsetParent[0], 'borderTopWidth')) || 0;
		parentOffset.left += parseFloat($.css(offsetParent[0], 'borderLeftWidth')) || 0;

		return {
			top: offset.top  - parentOffset.top,
			left: offset.left - parentOffset.left
		};
	}, */
	
    /**
	 * 写入数据缓存
	 * @param	{String}	名称
	 * @param	{Object}	数据
	 * @return	{Object}	数据
	 */
	/* data: function (name, data) {
		var thisCache,
			hasCache = hasOwnProperty.call(this[0], $.expando);
	
		if (!hasCache) this[0][$.expando] = {};
		thisCache = this[0][$.expando];
		
		if (typeof name === 'string') {
			if (data !== undefined) thisCache[name] = data;
			return this;
		};
		
		return thisCache;
	}, */
	
    /**
	 * 删除数据缓存
	 * @param	{String}	名称
	 * @param	{Object}	数据
	 */
	/* removeData: function (name) {
		if (name) {
			if (hasOwnProperty.call(this[0], $.expando)) {
				delete this[0][$.expando][name];
				if ((function (obj) {
					for (var name in obj) return false;
					return true;
				})(this[0][$.expando])) delete this[0][$.expando];
			};
		} else 
			delete this[0][$.expando];
	}, */
	
	/**
	 * 读写HTML - (不支持文本框)
	 * @param	{String}	内容
	 * @return	{this}
	 */
	html: function (content) {
		if (content === undefined) return this[0].innerHTML;
		this[0].innerHTML = content;
		
		return this;
	},
	
	/**
	 * 向每个匹配的元素内部追加内容
	 * @param	{String}	内容
	 * @return	{this}
	 */
    /* append: function (content) {
        var elem = this[0];

        if (elem.insertAdjacentHTML) {
            elem.insertAdjacentHTML('beforeEnd', content);
        } else {
            var range = elem.ownerDocument.createRange(),
                frag;
            if (elem.lastChild) {
                range.setStartAfter(elem.lastChild);
                frag = range.createContextualFragment(content);
                elem.appendChild(frag);
            } else {
                elem.innerHTML = content;
            };
        };

        return this;
    }, */

	/**
	 * 移除节点
	 */
    remove: function () {
        var elem = this[0], i;

        // 删除子节点防止IE内存泄漏
		while (elem.firstChild) {
			
			// 删除事件绑定
			//$.event.remove(elem);
			 
			// 删除数据缓存
			if (elem[$.expando]) delete elem[$.expando];
			// IE6、7 iframe 删除后可能导致input无法输入的BUG
			if ('src' in elem) elem.src = 'about:blank';
			
			elem.removeChild(elem.firstChild);
			
		};

        elem.parentNode.removeChild(elem);
        elem = null;
		
		// IE私有函数释放内存
        ('CollectGarbage' in window) && CollectGarbage();
    }
};

$.fn.init = function (selector, content) {
	var match, elem;
	content = content || document;
	
	if (!selector) return this;
	
	if (selector.nodeType) {
		this[0] = selector;
		return this;
	};
	
	if (selector === 'body' && content.body) {
		this[0] = content.body;
		return this;
	};
	
	if (selector === 'head' || selector === 'html') {
		this[0] = content.getElementsByTagName(selector)[0];
		return this;
	};
		
	if (typeof selector === 'string') {
		match = quickExpr.exec(selector);

		if (match && match[2]) {
			elem = content.getElementById(match[2]);
			if (elem && elem.parentNode) this[0] = elem;
			return this;
		};
	};
	
	if (typeof selector === 'function') return $(document).ready(selector);
	
	this[0] = selector;
	
	return this;
};
$.fn.init.prototype = $.fn;

$.expando = '{$' + (new Date).getTime() + '}';
$.noop = function () {};
$.log = function (content) {
	window.console && console.log(content);
};

/** 检测window */
$.isWindow = function (obj) {
	return obj && typeof obj === 'object' && 'setInterval' in obj;
};

/** 数组判定 */
$.isArray = function (obj) {
    return Object.prototype.toString.call(obj) === '[object Array]';
};

/**
 * 搜索所有与指定CSS类匹配的元素. 注意：这里最多第一个元素，与jQuery不同
 * @param	{String}	仅支持.class与tag的形式
 * @return	{this}
 */
$.fn.find = function (expr) {
	var value, elem = this[0],
		className = expr.split('.')[1];

	if (className) {
		if (document.getElementsByClassName) {
			value = elem.getElementsByClassName(className);
		} else {
			value = getElementsByClassName(className, elem);
		};
	} else {
		value = elem.getElementsByTagName(expr);
	};
	
	return $(value[0]);
};
function getElementsByClassName (className, node, tag) {
	node = node || document;
	tag = tag || '*';
	var i = 0,
		j = 0,
		classElements = [],
		els = node.getElementsByTagName(tag),
		elsLen = els.length,
		pattern = new RegExp("(^|\\s)" + className + "(\\s|$)");
		
	for (; i < elsLen; i ++) {
		if (pattern.test(els[i].className)) {
			classElements[j] = els[i];
			j ++;
		};
	};
	return classElements;
};

/**
 * 遍历
 * @param {Object}
 * @param {Function}
 */
$.each = function (obj, callback) {
    var name, i = 0,
        length = obj.length,
        isObj = length === undefined;

    if (isObj) {
        for (name in obj) {
            if (callback.call(obj[name], name, obj[name]) === false) break;
        };
    } else {
        for (var value = obj[0]; i < length && callback.call(value, i, value) !== false; value = obj[++i]) {};
    };
	
	return obj;
};

/**
 * 简单ajax支持
 * @example
 * $.ajax({
 * 		url: url,
 * 		success: callback,
 * 		cache: cache
 * });
 */
$.ajax = function (config) {
	var ajax = window.XMLHttpRequest ?
			new XMLHttpRequest() :
			new ActiveXObject('Microsoft.XMLHTTP'),
		url = config.url;
	
	if (config.cache === false) {
		var ts = (new Date()).getTime(),
			ret = url.replace(/([?&])_=[^&]*/, "$1_=" + ts );
		url = ret + ((ret === url) ? (/\?/.test(url) ? "&" : "?") + "_=" + ts : "");
	};
	
	ajax.onreadystatechange = function() {
		if (ajax.readyState === 4 && ajax.status === 200) {
			config.success && config.success(ajax.responseText);
			ajax.onreadystatechange = $.noop;
		};
	};
	ajax.open('GET', url, 1);
	ajax.send(null);
};

/**
 * 事件绑定
 * @param	{String}	类型
 * @param	{Function}	要绑定的函数
 * @return	{this}
 */
$.fn.bind = function (type, callback) {
	$.event.add(this[0], type, callback);
	return this;
};

/**
 * 移除事件
 * @param	{String}	类型
 * @param	{Function}	要卸载的函数
 * @return	{this}
 */
$.fn.unbind = function(type, callback) {
	$.event.remove(this[0], type, callback);
	return this;
};

/**
 * 触发事件
 * @param	{String}	类型
 * @param	{Array}		(可选)传递给事件处理函数的附加参数
 * @return	{this}
 */
$.fn.triggerHandler = function (type, data) {
	$.event.triggerHandler(this[0], type, data);
	return this;
};


// 事件机制
$.event = (function () {

var _isDOM = document.addEventListener,
	_noop = function () {},
	_now = function () {return (new Date).getTime()},
	_returnFalse = function () {return false},
	_returnTrue = function () {return true};
	
var _Event = function ( src ) {
	this.originalEvent = src;
	this.type = src.type;
	this.timeStamp = _now();
};
_Event.prototype = {
	preventDefault: function () {
		this.isDefaultPrevented = _returnTrue;
		var e = this.originalEvent;
		if( e.preventDefault ) {
			e.preventDefault();
		}
		e.returnValue = false;
	},
	stopPropagation: function () {
		this.isPropagationStopped = _returnTrue;
		var e = this.originalEvent;
		if( e.stopPropagation ) {
			e.stopPropagation();
		}		
		e.cancelBubble = true;
	},
	stopImmediatePropagation: function () {
		this.isImmediatePropagationStopped = _returnTrue;
		this.stopPropagation();
	},
	isDefaultPrevented: _returnFalse,
	isPropagationStopped: _returnFalse,
	isImmediatePropagationStopped: _returnFalse
};

return {
	
	// 添加事件
	add: function (elem, type, callback) {
		elem._listeners = elem._listeners || {};
		
		var eventHandle,
			that = this,
			special = that.special[type] || {},
			handler = '${handler}',
			_listeners = elem._listeners[type] = elem._listeners[type] || [];
			
		_listeners.push(callback);
		
		if (!_listeners[handler]) {
			eventHandle = _listeners[handler] = function (event){
				var data = event['${data}'] || [];
				event = that.fix(event || window.event, elem);
				data.unshift(event);
				for (var i = 0, fn; fn = _listeners[i++];) {
					if (fn.apply(elem, data) === false) {
						event.preventDefault();
						event.stopPropagation();
					};
				};
			};
			
			if (!special.setup || special.setup.call(elem, eventHandle) === false) {
				that.on(elem, type, eventHandle);
			};
		};
	},
	
	// 删除事件
	remove: function (elem, type, callback) {
		if (!elem._listeners) return;
		
		var empty = true,
			special = this.special[type] || {},
			_listeners = elem._listeners && elem._listeners[type];
			
		if (_listeners) {			
			for (var i = 0; i < _listeners.length; i ++) {
				_listeners[i] === callback && _listeners.splice(i--, 1);
			};
			
			if (_listeners.length === 0 && (!special.teardown || special.teardown.call(elem) === false)) {
				this.un(elem, type, _listeners['${handler}']);
				delete elem._listeners[type];
				for (var n in elem._listeners) empty = false;
				if (empty) elem._listeners = null;// delete elem._listeners;
			};
		};
	},
	
	special: {},
	
	// 原生事件绑定接口
	on: _isDOM ? function (elem, type, callback) {
		elem.addEventListener(type, callback, false);
	} : function (elem, type, callback) {
		elem.attachEvent('on' + type, callback);
	},
	
	// 原生事件卸载接口
	un: _isDOM ? function (elem, type, callback) {
		elem.removeEventListener(type, callback, false);
	} : function (elem, type, callback) {
		elem.detachEvent('on' + type, callback);
	},
	
	// 上触发某类事件 - (不支持自定义事件)
	trigger: function (elem, type, data) {
		try {
			if (elem.dispatchEvent){
				var event = document.createEvent('Event');
				event.initEvent(type, true, true);
				event['${data}'] = data;
				elem.dispatchEvent(event);
			} else if (elem.fireEvent) {
				var event = document.createEventObject();
				event['${data}'] = data;
				elem.fireEvent('on' + type, event);
			};
		} catch (e) {};
	},
	
	// 触发某类事件 (不冒泡也不触发默认行为，支持自定义事件)
	triggerHandler: function (elem, type, data/*, evt*/) {
		evt = arguments[3] || {};
		var cache = elem._listeners && elem._listeners[type],
			handler = cache && cache['${handler}'],
			event = {
				type: type,
				target: elem,
				currentTarget: elem,
				preventDefault: _noop,
				stopPropagation: _noop,
				'${data}': data
			};
			
		for (var i in evt) event[i] = evt[i];
		handler && handler.call(elem, event);
		
		try {
			elem['on' + type] && elem['on' + type].apply(elem, data);
		} catch (e) {};
	},
	
	props: "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode layerX layerY metaKey newValue offsetX offsetY originalTarget pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" "),
	
	// 事件兼容修正
	fix: function (event, elem) {
		var props = this.props,
			len   = props.length;

		var originalEvent = event;
		event = new _Event( originalEvent );
		
		for(var i = len, prop; i;) {
			prop = props[ --i ];
			event[ prop ] = originalEvent[ prop ];
		}
		if(!event.target) {
			event.target = event.srcElement || document;
		}
		if( event.target.nodeType === 3 ) {
			event.target = event.target.parentNode;
		}
		if( !event.relatedTarget && event.fromElement ) {
			event.relatedTarget = event.fromElement === event.target ? event.toElement : event.fromElement;
		}
		if( event.pageX == null && event.clientX != null ) {
			var doc = document.documentElement, body = document.body;
			event.pageX = event.clientX + (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc && doc.clientLeft || body && body.clientLeft || 0);
			event.pageY = event.clientY + (doc && doc.scrollTop  || body && body.scrollTop  || 0) - (doc && doc.clientTop  || body && body.clientTop  || 0);
		}
		if( !event.which && ((event.charCode || event.charCode === 0) ? event.charCode : event.keyCode) ) {
			event.which = event.charCode || event.keyCode;
		}
		if( !event.metaKey && event.ctrlKey ) {
			event.metaKey = event.ctrlKey;
		}
		if( !event.which && event.button !== undefined ) {
			event.which = (event.button & 1 ? 1 : ( event.button & 2 ? 3 : ( event.button & 4 ? 2 : 0 ) ));
		}		
		if(!event.currentTarget) event.currentTarget = elem;

		return event;
	}
};

}());

// DOM就绪事件
$.isReady = false;
$.ready = function () {
    if (!$.isReady) {
        if (!document.body) return setTimeout($.ready, 13);
        $.isReady = true;

        if (readyList) {
            var fn, i = 0;
            while ((fn = readyList[i++])) {
                fn.call(document, $);
            };
            readyList = null;
        };
    };
};
$.bindReady = function () {
    if (readyBound) return;

    readyBound = true;

    if (document.readyState === 'complete') {
        return $.ready();
    };

    if (document.addEventListener) {
        document.addEventListener('DOMContentLoaded', DOMContentLoaded, false);
        window.addEventListener('load', $.ready, false);
    } else if (document.attachEvent) {
        document.attachEvent('onreadystatechange', DOMContentLoaded);
        window.attachEvent('onload', $.ready);
        var toplevel = false;
        try {
            toplevel = window.frameElement == null;
        } catch (e) {};

        if (document.documentElement.doScroll && toplevel) {
            doScrollCheck();
        };
    };
};
$.event.special.ready = {
	setup: $.bindReady,
	teardown: $.noop
};
if (document.addEventListener) {
    DOMContentLoaded = function () {
        document.removeEventListener('DOMContentLoaded', DOMContentLoaded, false);
        $.ready();
    };
} else if (document.attachEvent) {
    DOMContentLoaded = function () {
        if (document.readyState === 'complete') {
            document.detachEvent('onreadystatechange', DOMContentLoaded);
            $.ready();
        };
    };
};

function doScrollCheck () {
    if ($.isReady) return;

    try {
        document.documentElement.doScroll('left');
    } catch (e) {
        setTimeout(doScrollCheck, 1);
        return;
    };
    $.ready();
};

// 获取css
$.css = 'defaultView' in document && 'getComputedStyle' in document.defaultView ?
	function (elem, name) {
		return document.defaultView.getComputedStyle(elem, false)[name]
} :
	function (elem, name) {
		var ret = name === 'opacity' ? $.opacity.get(elem) :
			elem.currentStyle && elem.currentStyle[name];
		return ret || '';
};

// 跨浏览器处理opacity
$.opacity = {
	get: function (elem) {
		return isOpacity ?
			document.defaultView.getComputedStyle(elem, false).opacity :
			ropacity.test((elem.currentStyle ? elem.currentStyle.filter : elem.style.filter) || '') ?
				(parseFloat(RegExp.$1) / 100) + '' :
				1;
	},
	set: function (elem, value) {
		if (isOpacity) return elem.style.opacity = value;
		var style = elem.style;
		style.zoom = 1;

		var opacity = 'alpha(opacity=' + value * 100 + ')',
			filter = style.filter || '';

		style.filter = ralpha.test(filter) ?
			filter.replace(ralpha, opacity) :
			style.filter + ' ' + opacity;
	}
};

/**
 * 滚动条读取
 * 获取文档垂直滚动条：$(document).scrollTop()
 * @param	{Number}	如果参数存在则改变滚动条位置，否则为获取位置
 * @return	{Number}	返回滚动条位置
 */
$.each(['Left', 'Top'], function (i, name) {
    var method = 'scroll' + name;

    $.fn[method] = function (val) {
        var elem = this[0],
            win;

        if (!elem) {
            return null;
        };

        if (val !== undefined) {
            win = getWindow(this);

            if (win) {
                win.scrollTo(!i ? val : $(win).scrollLeft(), i ? val : $(win).scrollTop());
            } else {
                this[method] = val;
            };
            return this;
        } else {
            win = getWindow(elem);
            return win ?
				('pageXOffset' in win) ?
					win[i ? 'pageYOffset' : 'pageXOffset'] :
					win.document.documentElement[method] || win.document.body[method] :
				elem[method];
        };
    };
});

function getWindow (elem) {
	return $.isWindow(elem) ?
		elem :
		elem.nodeType === 9 ?
			elem.defaultView || elem.parentWindow :
			false;
};

/**
 * 元素尺寸读取 - [只支持window与document]
 * 获取文档宽度：$(document).width()
 * 获取可视范围：$(window).width()
 */
$.each(['Height', 'Width'], function (i, name) {
    var type = name.toLowerCase();

    $.fn[type] = function (size) {
        var elem = this[0];
        if (!elem) {
            return size == null ? null : this;
        };

		return $.isWindow(elem) ?
			elem.document.documentElement['client' + name] || elem.document.body['client' + name] :
			(elem.nodeType === 9) ?
				Math.max(
					elem.documentElement['client' + name],
					elem.body['scroll' + name], elem.documentElement['scroll' + name],
					elem.body['offset' + name], elem.documentElement['offset' + name]
				) :
				size === undefined ?
					parseFloat($.css(elem, type)) :
					this.css(type, typeof size === 'string' ? size : size + 'px');
    };

});

/** 自定义动画 - 不支持链式列队操作 */
$.fn.animate = function (prop, speed, easing, callback) {
	
	speed = speed || 400;
	if (typeof easing === 'function') callback = easing;
	easing = easing && $.easing[easing] ? easing : 'swing';
	
    var $this = this, overflow,
        fx, parts, start, end, unit,
		opt = {
			speed: speed,
			easing: easing,
			callback: function () {
				if (overflow != null) $this[0].style.overflow = '';
				callback && callback();
			}
		};
	
	opt.curAnim = {};
	$.each(prop, function (name, val) {
		opt.curAnim[name] = val;
	});
	
    $.each(prop, function (name, val) {
        fx = new $.fx($this[0], opt, name);
        parts = rfxnum.exec(val);
        start = parseFloat(name === 'opacity' || ($this[0].style && $this[0].style[name] != null) ?
			$.css($this[0], name) :
			$this[0][name]);
        end = parseFloat(parts[2]);
        unit = parts[3];
		if (name === 'height' || name === 'width') {
			end = Math.max(0, end);
			overflow = [$this[0].style.overflow, $this[0].style.overflowX, $this[0].style.overflowY];
		};
		
        fx.custom(start, end, unit);
    });
	
	if (overflow != null) $this[0].style.overflow = 'hidden';

    return this;
};

$.fx = function (elem, options, prop) {
    this.elem = elem;
    this.options = options;
    this.prop = prop;
};

$.fx.prototype = {
    custom: function (from, to, unit) {
        this.startTime = $.fx.now();
        this.start = from;
        this.end = to;
        this.unit = unit;
        this.now = this.start;
        this.state = this.pos = 0;

        var self = this;

        function t() {
            return self.step();
        };
        t.elem = this.elem;
		t();
        timers.push(t)
        if (!timerId) timerId = setInterval($.fx.tick, 13);
    },
    step: function () {
        var t = $.fx.now(), done = true;
        if (t >= this.options.speed + this.startTime) {
            this.now = this.end;
            this.state = this.pos = 1;
            this.update();
			
			this.options.curAnim[this.prop] = true;
			for (var i in this.options.curAnim) {
				if (this.options.curAnim[i] !== true) {
					done = false;
				};
			};
			
			if (done) this.options.callback.call(this.elem);
			
            return false;
        } else {
            var n = t - this.startTime;
            this.state = n / this.options.speed;
            this.pos = $.easing[this.options.easing](this.state, n, 0, 1, this.options.speed);
            this.now = this.start + ((this.end - this.start) * this.pos);
            this.update();
            return true;
        };
    },
    update: function () {
		if (this.prop === 'opacity') {
			$.opacity.set(this.elem, this.now);
		} else
		if (this.elem.style && this.elem.style[this.prop] != null) {
			this.elem.style[this.prop] = this.now + this.unit;
		} else {
			this.elem[this.prop] = this.now;
		};
    }
};

$.fx.now = function () {
    return new Date().getTime();
};

$.easing = {
    linear: function (p, n, firstNum, diff) {
        return firstNum + diff * p;
    },
    swing: function (p, n, firstNum, diff) {
        return ((-Math.cos(p * Math.PI) / 2) + 0.5) * diff + firstNum;
    }
};

$.fx.tick = function () {
    for (var i = 0; i < timers.length; i++) {
        !timers[i]() && timers.splice(i--, 1);
    };
    !timers.length && $.fx.stop();
};

$.fx.stop = function () {
    clearInterval(timerId);
    timerId = null;
};

$.fn.stop = function () {
    for (var i = timers.length - 1; i >= 0; i--)
    	timers[i].elem === this[0] && timers[i].stop();
    return this;
};

//-------------end
return $}(window));



/**
 * 对话框
 * @name	$.dialog
 * @param	{Object, String}	配置, 消息内容
 * @param	{Function}			(可选) 确认按钮回调函数
 * @param	{Function}			(可选) 取消按钮回调函数
 * @return	$.dialog.prototype
 */
;(function ($, window, undefined) {
if (!window.jQuery && document.compatMode === 'BackCompat') {
	alert('artDialog: PAGE DOCTYPE ERROE!')
};

var _oldApi, _thisScript, _skin, _path, _tmplEngine,
	_count = 0,
	_$window = $(window),
	_$document = $(document),
	_$html = $('html'),
	_$body = $(function(){_$body = $('body')}),
	_elem = document.documentElement,
	_isMinWidth = 'minWidth' in _elem.style,
	_isLosecapture = 'onlosecapture' in _elem,
	_isSetCapture = 'setCapture' in _elem,
	_isIE = !-[1,],
	_isIE6 = _isIE && !_isMinWidth,
	_isMobile = 'ontouchend' in _elem && !('onmousemove' in _elem)
		|| /(iPhone|iPad|iPod)/i.test(navigator.userAgent),
	_expando = '{$artDialog' + (new Date).getTime() + '}';

var artDialog = function (config, yesFn, noFn) {
	config = config || {};
	var follow, followApi, i,
		buttons = [],
		defaults = artDialog.defaults,
		repeat = artDialog.list[config.id];
	
	// 配置数据校验
	if (repeat) return repeat;
	if (typeof config === 'string' || config.nodeType === 1) {
		config = {content: config, fixed: !_isMobile};
	};
	if (!$.isArray(config.button)) {
		config.button = config.button ? [config.button] : [];
	};
	if (!config.id) {
		config.id = _expando + (_count ++);
	};
	 // 移动设备或者部分现代浏览器不支持
	if (_isMobile) config.fixed =  false;
	
	// 合并默认配置
	for (i in defaults) {
		if (config[i] === undefined) config[i] = defaults[i];		
	};
	
	// 吸附元素
	follow = config.follow || this;
	if (typeof follow === 'string') follow = $(follow)[0];
	if (follow.nodeType === 1) {
		followApi = artDialog.list[follow[_expando + 'follow']];
		if (followApi) {
			return followApi.follow(follow).zIndex().focus();
		} else {
			config.follow = follow;
			follow[_expando + 'follow'] = config.id;
		};
	};
	
	// 内置按钮合并到数组
	yesFn = yesFn || config.yesFn;
	noFn = noFn || config.noFn;
	yesFn && config.button.push({
		name: config.yesText,
		callback: yesFn,
		focus: true
	});
	noFn && config.button.push({
		name: config.noText,
		callback: noFn
	});
	
	// zIndex全局配置
	artDialog.defaults.zIndex = config.zIndex;
	
	return artDialog.list[config.id] = _oldApi ?
		_oldApi._init(config, true) : new artDialog.fn._init(config);
};

artDialog.fn = artDialog.prototype = {

	version: '4.0.0',
	
	_init: function (config, isReset) {
		var that = this;
		
		that.config = config;
		that._isClose = false;
		that._listeners = {};
		that._minWidth = config.minWidth;
		that._minHeight = config.minHeight;
		that._fixed = _isIE6 ? false : config.fixed;
		
		if (!isReset) {
			that._wrap = document.createElement('div');
			that.DOM = {
				wrap: $(that._wrap)
			};
			that._outerTmpl();
		};
		
		that._wrap.style.cssText = 'position:absolute;left:0;top:0';
		that._innerTmpl();
		
		if (isReset) {
			_oldApi = null;
		} else {
			that._eventProxy();
		};
		
		that.size(config.width, config.height);
		config.follow ? that.follow(config.follow) : that.position(config.left, config.top);
		config.focus && that.focus();
		!config.show && that.hide();
		config.lock && that.lock();
		that.zIndex(config.zIndex).time(config.time);
		config.initFn && config.initFn.call(that, window);
		
		return that;
	},
	
	/**
	 * 设置内容
	 * @param	{String, HTMLElement, Object}	内容 (可选)
	 * @param	{String}						模板 (可选, 需要msg参数类型为 Object 才能生效)
	 * @return	this, HTMLElement				如果无参数则返回内容容器DOM对象
	 */
	content: function (msg, tmpl) {
		var prev, parent, width, height, display,
			that = this,
			content = that.DOM.content,
			elem = content[0];
		
		that._elemBack = $.noop;
		
		if (!msg && msg !== 0) {
			return elem;
		} else if (tmpl) {
			elem.innerHTML = _tmplEngine(tmpl, msg);
		} else if (typeof msg === 'string') {
			content.html(msg);
		} else if (msg.nodeType === 1) {
		
			// 让传入的元素在对话框关闭后可以返回到原来的地方
			display = msg.style.display;
			prev = msg.previousSibling;
			next = msg.nextSibling;
			parent = msg.parentNode;
			that._elemBack = function () {
				if (prev && prev.parentNode) {
					prev.parentNode.insertBefore(msg, prev.nextSibling);
				} else if (next && prev.parentNode) {
					next.parentNode.insertBefore(msg, next);
				} else if (parent) {
					parent.appendChild(msg);
				};
				msg.style.display = display;
			};
			
			elem.innerHTML = '';
			elem.appendChild(msg);
			msg.style.display = 'block';
			
		};
		
		_isIE6 && that._selectFix();
		that._runScript(elem);
		
		return that;
	},
	
	/**
	 * 设置标题
	 * @param	{String}			标题内容
	 * @return	this, HTMLElement	如果无参数则返回内容器DOM对象
	 */
	title: function (text) {
		var DOM = this.DOM,
			titleWrap = DOM.titleWrap[0],
			title = DOM.title[0];
		if (text === undefined) {
			return title.innerHTML;
		} else {
			title.innerHTML = text;
		};
		titleWrap.style.display = 'block';
		return this;
	},
	
	/** 位置 */
	position: function (left, top) {
		
		var scaleLeft, scaleTop,
			that = this,
			wrap = that.DOM.wrap,
			ie6Fixed = _isIE6 && that.config.fixed,
			docLeft = _$document.scrollLeft(),
			docTop = _$document.scrollTop(),
			dl = that._fixed ? 0 : docLeft,
			dt = that._fixed ? 0 : docTop,
			ww = _$window.width(),
			wh = _$window.height(),
			ow = wrap[0].offsetWidth,
			oh = wrap[0].offsetHeight,
			style = wrap[0].style;
		
		if (!left && left !== 0) left = that._scaleLeft;
		if (!top && top !== 0) top = that._scaleTop;
			
		// 转换left百分比值为数值
		if (typeof left === 'string') {
			scaleLeft = that._toNumber(left, ww - ow);
			if (scaleLeft !== null) {
				that._scaleLeft = left;
				left = scaleLeft + dl;
			};
		} else if (ie6Fixed && typeof left === 'number') {
			left += docLeft;
		};

		// 黄金比例垂直居中
		if (top === 'goldenRatio') {
			that._scaleTop = top;
			top = Math.max(Math.min((oh < 4 * wh / 7 ?
				wh * 0.382 - oh / 2 :
				(wh - oh) / 2) + dt, wh - oh + dt), dt);
		
		// 转换top百分比值为数值
		} else if (typeof top === 'string') {
			scaleTop = that._toNumber(top, wh - oh);
			if (scaleTop !== null) {
				that._scaleTop = top;
				top = scaleTop + dt;
			};
		} else if (ie6Fixed && typeof top === 'number') {
			top += docTop;
		};

		if (typeof left === 'number') style.left = left + 'px';
		if (typeof top === 'number') style.top = top + 'px';
		
		that._autoPositionType();
		
		return that;
	},
	
	/**
	 *	尺寸
	 *	@param	{Number, String}	宽度
	 *	@param	{Number, String}	高度
	 */
	size: function (width, height) {
		var maxWidth, maxHeight, scaleWidth, scaleHeight,
			that = this,
			DOM = that.DOM,
			wrap = DOM.wrap,
			main = DOM.main,
			wrapStyle = wrap[0].style,
			style = main[0].style;
			
		if (!width && width !== 0) width = that._scaleWidth;
		if (!height && height !== 0) height = that._scaleHeight;
				
		// 转换宽度百分比为数值
		if (typeof width === 'string') {
			maxWidth = _$window.width() - wrap[0].offsetWidth + main[0].offsetWidth;
			scaleWidth = that._toNumber(width, maxWidth);
			if (scaleWidth !== null) {
				that._scaleWidth = width;
				width = scaleWidth;
			} else if (width.indexOf('px') !== -1) {
				width = parseInt(width);
			};
		};
		
		// 转换高度百分比为数值
		if (typeof height === 'string') {
			maxHeight = _$window.height() - wrap[0].offsetHeight + main[0].offsetHeight;
			scaleHeight = that._toNumber(height, maxHeight);
			if (scaleHeight !== null) {
				that._scaleHeight = height;
				height = scaleHeight;
			} else if (height.indexOf('px') !== -1) {
				height = parseInt(height);
			};
		};
		
		if (typeof width === 'number') {
			wrapStyle.width = 'auto';
			style.width = Math.max(that._minWidth, width) + 'px';
			wrapStyle.width = wrap[0].offsetWidth + 'px'; // 防止未定义宽度表格遇到浏览器右边边界伸缩
		} else if (typeof width === 'string') {
			style.width = width;
			width === 'auto' && wrap.css('width', 'auto');
		};
		
		if (typeof height === 'number') {
			style.height = Math.max(that._minHeight, height) + 'px';
		} else if (typeof height === 'string') {
			style.height = height;
		};
		
		_isIE6 && that._selectFix();
		
		return that;
	},
	
	/** 跟随元素 */
	follow: function (elem) {
		if (typeof elem === 'string' || elem && elem.nodeType === 1) {
			elem = $(elem);
		};
		if (!elem || !elem[0] || elem.css('display') === 'none') {
			return this.position(that.config.left, that.config.top);
		};
		
		var that = this,
			winWidth = _$window.width(),
			winHeight = _$window.height(),
			docLeft =  _$document.scrollLeft(),
			docTop = _$document.scrollTop(),
			offset = elem.offset(),
			width = elem[0].offsetWidth,
			height = elem[0].offsetHeight,
			left = that._fixed ? offset.left - docLeft : offset.left,
			top = that._fixed ? offset.top - docTop : offset.top,
			wrap = that.DOM.wrap[0],
			style = wrap.style,
			wrapWidth = wrap.offsetWidth,
			wrapHeight = wrap.offsetHeight,
			setLeft = left - (wrapWidth - width) / 2,
			setTop = top + height,
			dl = that._fixed ? 0 : docLeft,
			dt = that._fixed ? 0 : docTop;
			
		if (setLeft + wrapWidth > winWidth) {
			setLeft = left - wrapWidth + width;
		};
		if (setLeft < dl) {
			setLeft = left;
		};
		if (setTop + wrapHeight > winHeight + dt) {
			setTop = top - wrapHeight;
		};
		
		style.left = setLeft + 'px';
		style.top = setTop + 'px';
		
		that.config.follow = elem;
		that._autoPositionType();
		return that;
	},
	
	/**
	 * 自定义按钮
	 * @example
				 button({
					name: 'login',
					callback: function () {},
					disabled: false,
					focus: true
				}, .., ..)
	 */
	button: function (/* @augments */) {
		var that = this,
			ags = arguments,
			elem = that.DOM.buttons[0],
			list = $.isArray(ags[0]) ? ags[0] : [].slice.call(ags);
		
		if (!list.length) {
			elem.style.display = 'none';
			return that;
		};
		
		$.each(list, function (i, val) {
			var name = val.name,
				listeners = that._listeners,
				strongButton = 'aui_strongButton',
				isNewButton = !listeners[name],
				button = !isNewButton ?
					listeners[name].elem :
					document.createElement('button');
					
			if (!listeners[name]) listeners[name] = {};
			if (val.callback) listeners[name].callback = val.callback;
			if (val.className) button.className = val.className;
			if (val.focus) {
				that._focus && that._focus.removeClass(strongButton);
				that._focus = $(button).addClass(strongButton);
				that.focus();
			};
			
			button[_expando + 'callback'] = name;
			button.disabled = !!val.disabled;

			if (isNewButton) {
				button.innerHTML = name;
				listeners[name].elem = button;
				elem.appendChild(button);
			};
		});
		
		elem.style.display = 'block';
		_isIE6 && that._selectFix();
		
		return that;
	},
	
	/** 显示对话框 */
	show: function () {
		this._wrap.style.display = 'block';
		return this;
	},
	
	/** 隐藏对话框 */
	hide: function () {
		this._wrap.style.display = 'none';
		return this;
	},
	
	/** 关闭对话框 */
	close: function () {
		var that = this,
			DOM = that.DOM,
			list = artDialog.list,
			fn = that.config.closeFn;
		
		if (that._isClose) return that;
		that.time();
		if (typeof fn === 'function' && fn.call(that, window) === false) {
			return that;
		};
		
		that.unlock();
		
		that._elemBack();
		that._setAbsolute();
		that._timer = that._focus = null;
		that._scaleLeft = that._scaleTop = null;
		that._scaleWidth = that._scaleHeight = null;
		DOM.wrap[0].style.cssText = '';
		DOM.center[0].innerHTML = '';
		DOM.outerTable[0].style.cssText = '';
		
		if (artDialog.focus === that) artDialog.focus = null;
		delete list[that.config.id];
		that._isClose = true;
		that.hide();
		
		if (!_oldApi) {
			_oldApi = that;
		} else {
			that._uneventProxy();
			that.DOM.wrap.remove();
		};
		
		return that;
	},
	
	/**
	 * 定时关闭
	 * @param	{Number}	单位为秒, 无参数则停止计时器
	 */
	time: function (second) {
		var that = this,
			cancel = that.config.noText,
			timer = that._timer;
			
		timer && clearTimeout(timer);
		
		if (second) {
			that._timer = setTimeout(function(){
				that._trigger(cancel);
			}, 1000 * second);
		};
		
		return that;
	},
	
	/** 给按钮附加焦点 */
	focus: function () {
		var elemFocus, content,
			that = this,
			config = that.config,
			DOM = that.DOM;
			
		elemFocus = that._focus && that._focus[0] || DOM.close[0];
		
		try {
			elemFocus && elemFocus.focus();
		} catch (e) {};
		
		return that;
	},
	
	/** 置顶z-index */
	zIndex: function () {
		var that = this,
			wrap = that.DOM.wrap,
			index = artDialog.defaults.zIndex ++,
			focusElem = artDialog.focus;
			
		wrap.css('zIndex', index);
		that._lockMask && that._lockMask.css('zIndex', index - 1);
		
		// 设置最高层的样式
		if (focusElem) focusElem.DOM.wrap.removeClass('aui_focus');
		artDialog.focus = that;
		wrap.addClass('aui_focus');
		
		return that;
	},
	
	/** 设置屏锁 */
	lock: function () {
		if (this._lock) return this; // 全局只允许一个遮罩
		
		var that = this,
			index = artDialog.defaults.zIndex += 2,
			wrap = that.DOM.wrap,
			config = that.config,
			docWidth = _$document.width(),
			docHeight = _$document.height(),
			lockMaskWrap = that._lockMaskWrap || $(_$body[0].appendChild(document.createElement('div'))),
			lockMask = that._lockMask || $(lockMaskWrap[0].appendChild(document.createElement('div'))),
			domTxt = '(document).documentElement',
			sizeCss = _isMobile ? 'width:' + docWidth + 'px;height:' + docHeight
				+ 'px' : 'width:100%;height:100%',
			ie6Css = _isIE6 ?
				'position:absolute;left:expression(' + domTxt + '.scrollLeft);top:expression('
				+ domTxt + '.scrollTop);width:expression(' + domTxt
				+ '.clientWidth);height:expression(' + domTxt + '.clientHeight)'
			: '';
		
		wrap.css('zIndex', index);
		lockMaskWrap[0].id='back';
		lockMaskWrap[0].style.cssText = sizeCss + ';position:absolute;z-index:'
			+ (index - 1) + ';top:0;left:0;overflow:hidden;' + ie6Css;
		lockMask[0].style.cssText = 'height:100%;background:' + config.background
			+ ';filter:alpha(opacity=0);opacity:0';
		
		// 让IE6锁屏遮罩能够盖住下拉控件
		if (_isIE6) lockMask[0].innerHTML =
			'<iframe src="about:blank" style="width:100%;height:100%;position:absolute;' +
			'top:0;left:0;z-index:-1;filter:alpha(opacity=0)" scrolling="no" ></iframe>';
			
		lockMask.animate({opacity: config.opacity}, config.duration);
		lockMask[0].ondblclick = function () {
			that.close();
		};
		
		that._lockMaskWrap = lockMaskWrap;
		that._lockMask = lockMask;
		
		that._lock = true;
		return that;
	},
	
	/** 解开屏锁 */
	unlock: function () {
		var that = this;
		
		if (!that._lock) return;
		var style = that._lockMaskWrap[0].style;
		
		that._lockMask[0].ondblclick = null;
		that._lockMask.animate({opacity: 0}, that.config.duration, function () {
			if (_isIE6) {
				style.removeExpression('width');
				style.removeExpression('height');
				style.removeExpression('left');
				style.removeExpression('top');
			};
			style.cssText = 'display:none';
			
			if (_oldApi) {
				that._lockMaskWrap.remove();
				that._lockMaskWrap = that._lockMask = null;
			};
			
			that._lock = false;
		});

		return that;
	},
	
	// 插入修饰结构 （可被重复使用）
	_outerTmpl: function () {
		var that = this,
			wrap = that._wrap;
			
		wrap.innerHTML = _tmplEngine('outer', that.config);
		document.body.appendChild(wrap);
		
		that._getDOM('outer|outerTable|nw|n|ne|w|center|e|sw|s|se'.split('|'));
		_isIE6 && that._pngFix();
	},
	
	// 插入内容区域 （每次将重载）
	_innerTmpl: function () {
		var that = this,
			config = that.config,
			DOM = that.DOM;
		
		DOM.center[0].innerHTML = _tmplEngine('inner', config);
		that._getDOM('inner|header|titleWrap|title|close|main|content|buttons'.split('|'));
		DOM.se.css('cursor', config.resize ? 'se-resize' : 'auto');
		DOM.title.css('cursor', config.drag ? 'move' : 'auto');
		
		that.button(config.button).content(config.content, config.tmpl);
	},
	
	// 百分比转换成数值
	_toNumber: function (scale, length) {
		return scale.indexOf('%') !== -1 ?
			parseInt(length * scale.split('%')[0] / 100) : null;
	},
	
	// 让IE6 CSS支持PNG背景
	_pngFix: function () {
		
		// 检测CSS标记
		if (!this.DOM.outer[0].currentStyle['ie6PngFix']) return;
	
		var i = 0, elem, png, pngPath,
			path = artDialog.defaults.path + '/skin/',
			list = this.DOM.wrap[0].getElementsByTagName('*');
		
		for (; i < list.length; i ++) {
			elem = list[i];
			png = elem.currentStyle['png'];
			if (png) {
				pngPath = path + png;
				elem.style.backgroundImage = 'none';
				elem.style.p = pngPath;
				elem.runtimeStyle.filter = "progid:DXImageTransform.Microsoft." +
					"AlphaImageLoader(src='" + pngPath + "',sizingMethod='crop')";
			};
		};
		elem = null;
	},
	
	// 强制覆盖IE6下拉控件
	_selectFix: function () {
		var elem = this.DOM.wrap[0],
			expando = _expando + 'iframeMask',
			iframe = elem[expando],
			width = elem.offsetWidth,
			height = elem.offsetHeight,
			left = - (width - elem.clientWidth) / 2 + 'px',
			top = - (height - elem.clientHeight) / 2 + 'px';

		width = width + 'px';
		height = height + 'px';
		
		if (iframe) {
			iframe.style.width = width;
			iframe.style.height = height;
		} else {
			iframe = elem.appendChild(document.createElement('iframe'));
			elem[expando] = iframe;
			iframe.src = 'about:blank';
			iframe.style.cssText = 'position:absolute;z-index:-1;left:'
				+ left + ';top:' + top
				+ ';width:' + width + ';height:' + height
				+ ';filter:alpha(opacity=0)';
		};
	},
	
	// 获取DOM
	_getDOM: function (list) {
		var DOM = this.DOM,
			wrap = DOM.wrap;
			
		for (var i in list) {
			DOM[list[i]] = wrap.find('.aui_' + list[i]);
		};
	},
	
	// 解析HTML片段中自定义类型脚本:
	// <script type="text/dialog"></script>
	_runScript: function (elem) {
		var fun, i = 0, n = 0,
			tags = elem.getElementsByTagName('script'),
			length = tags.length,
			script = [];
			
		for (; i < length; i ++) {
			if (tags[i].type === 'text/dialog') {
				script[n] = tags[i].innerHTML;
				n ++;
			};
		};
		
		if (script.length) {
			script = script.join('');
			fun = new Function(script);
			fun.call(this);
		};
	},
	
	// 自动切换定位类型
	_autoPositionType: function () {
		var that = this;
		that[that.config.fixed ? '_setFixed' : '_setAbsolute']();
	},
	
	
	// 设置静止定位
	// IE6 Fixed @see: http://www.planeart.cn/?p=877
	_setFixed: (function () {
		_isIE6 && $(function () {
			var bg = 'backgroundAttachment';
			if (_$html.css(bg) !== 'fixed' && _$body.css(bg) !== 'fixed') {
				_$html.css({
					backgroundImage: 'url(about:blank)',
					backgroundAttachment: 'fixed'
				});
			};
		});
		
		return function () {
			var $elem = this.DOM.wrap,
				style = $elem[0].style;
			
			if (_isIE6) {
				var left = parseInt($elem.css('left')),
					top = parseInt($elem.css('top')),
					sLeft = _$document.scrollLeft(),
					sTop = _$document.scrollTop(),
					txt = '(document.documentElement)';
				
				this._setAbsolute();
				style.setExpression('left', 'eval(' + txt + '.scrollLeft + '
					+ (left - sLeft) + ') + "px"');
				style.setExpression('top', 'eval(' + txt + '.scrollTop + '
					+ (top - sTop) + ') + "px"');
			} else {
				style.position = 'fixed';
			};
		};
	}()),
	
	
	// 设置绝对定位
	_setAbsolute: function () {
		var style = this.DOM.wrap[0].style;
			
		if (_isIE6) {
			style.removeExpression('left');
			style.removeExpression('top');
		};

		style.position = 'absolute';
	},
	
	// 按钮事件触发
	_trigger: function (id) {
		var that = this,
			fn = that._listeners[id] && that._listeners[id].callback;
		return typeof fn !== 'function' || fn.call(that, window) !== false ?
			that.close() : that;
	},
	
	/* 注意带有"[1]"的注释的函数无论是否单例模式中只会被运行一次 */
	
	// 事件代理 [1]
	_eventProxy: function () {
		var winResize, resizeTimer,
			that = this,
			DOM = that.DOM,
			winSize = _$window.width() * _$window.height(),
			dragEvent = that._addDrag();
		
		// 监听点击
		DOM.wrap.bind('click', function (event) {
			var target = event.target, callbackID;
			
			if (target.disabled) return false; // IE BUG
			
			if (target === DOM.close[0]) {
				that._trigger(that.config.noText);
				return false;
			} else {
				callbackID = target[_expando + 'callback'];
				callbackID && that._trigger(callbackID);
			};
			
			that.zIndex();
		}).bind('mousedown', function (event) {
			var target = event.target,
				config = that.config;
			if (config.drag && target === DOM.title[0] || config.resize && target === DOM.se[0]) {
				that._isResize = target === DOM.se[0] ? true : false;
				dragEvent.start(event);
				that.zIndex();
			};
			
		});
		
		// 窗口调节事件
		winResize = function () {
			var newSize,
				oldSize = winSize,
				elem = that.config.follow,
				width = that._scaleWidth,
				height = that._scaleHeight,
				left = that._scaleLeft,
				top = that._scaleTop;
			
			if (_isIE) {
				// IE6~7 window.onresize bug
				newSize = _$window.width() * _$window.height();
				winSize = newSize;
				if (oldSize === newSize) return;
			};
			
			if (width || height) that.size(width, height);
			
			if (elem) {
				that.follow(elem);
			} else if (left || top) {
				that.position(left, top);
			};
		};
		
		that._winResize = function () {
			resizeTimer && clearTimeout(resizeTimer);
			resizeTimer = setTimeout(function () {
				winResize();
			}, 40);
		};
		
		_$window.bind('resize', that._winResize);
	},
	
	// 卸载事件代理
	_uneventProxy: function () {
		var that = this,
			DOM = that.DOM;
		
		that._drag.stop();
		DOM.wrap.unbind('click').unbind('mousedown');
		_$window.unbind('resize', that._winResize);
	},
	
	// 增加拖拽功能 [1]
	_addDrag: function () {
		var limit, startWidth, startHeight, startLeft, startTop,
			that = this,
			DOM = that.DOM,
			wrap = DOM.wrap,
			clsSelect = 'getSelection' in window ? function () {
				window.getSelection().removeAllRanges();
			} : function () {
				try {
					document.selection.empty();
				} catch (e) {};
			};
			
		var drag = that._drag = new artDialog.dragEvent();
		
		drag.onstart = function (x, y) {
			var title = DOM.title,
				main = DOM.main; // 注意 that.DOM.main 值会因为单例模式而变动
			
			if (that._isResize) {
				startWidth = main[0].offsetWidth;
				startHeight = main[0].offsetHeight;
			} else {
				limit = that._getLimit();
				startLeft = parseInt(wrap.css('left'));
				startTop = parseInt(wrap.css('top'));
			};
			
			!_isIE6 && _isLosecapture ?
				title.bind('losecapture', that.stop) :
				_$window.bind('blur', that.stop);
			_isSetCapture && title[0].setCapture();
			
			wrap.addClass('aui_drag');
			that.focus();
		};
		
		drag.ondrag = function (x, y) {
			if (that._isResize) {
				var wrapStyle = wrap[0].style,
					style = DOM.main[0].style,
					width = x + startWidth,
					height = y + startHeight;
				
				wrapStyle.width = 'auto';
				style.width = Math.max(that._minWidth, width) + 'px';
				wrapStyle.width = wrap[0].offsetWidth + 'px';
				style.height = Math.max(that._minHeight, height) + 'px';
			} else {
				var style = wrap[0].style,
					left = x + startLeft,
					top = y + startTop;
					
				style.left = Math.max(limit.minX, Math.min(limit.maxX, left)) + 'px';
				style.top = Math.max(limit.minY, Math.min(limit.maxY, top)) + 'px';
			};
				
			clsSelect();
			_isIE6 && that._selectFix();
		};
		
		drag.onstop = function (x, y) {
			var title = DOM.title;
			!_isIE6 && _isLosecapture ?
				title.unbind('losecapture', that.stop) :
				_$window.unbind('blur', that.stop);
			_isSetCapture && title[0].releaseCapture();
			
			_isIE6 && that._autoPositionType();
			
			wrap.removeClass('aui_drag');
		};
		
		return drag;
	},
	
	// 计算页面容器八个方向限制
	_getLimit: function () {
		var that = this, maxX, maxY,
			wrap = that.DOM.wrap[0],
			ow = wrap.offsetWidth,
			oh = wrap.offsetHeight,
			ww = _$window.width(),
			wh = _$window.height(),
			dl = that._fixed ? 0 : _$document.scrollLeft(),
			dt = that._fixed ? 0 : _$document.scrollTop(),
			
		// 坐标最大值限制
		maxX = ww - ow + dl;
		maxY = wh - oh + dt;
		
		return {
			minX: dl,
			minY: dt,
			maxX: maxX,
			maxY: maxY
		};
	}
	
};

artDialog.fn._init.prototype = artDialog.fn;
$.fn.dialog = $.fn.artDialog = function () {
	var config = arguments;
	this[this.live ? 'live' : 'bind']('click', function () {
		artDialog.apply(this, config);
		return false;
	});
	return this;
};



/** 最顶层的对话框API */
artDialog.focus = null;



/** 对话框列表 */
artDialog.list = {};



// 拖拽事件
artDialog.dragEvent = function () {
	var that = this,
		proxy = function (name) {
			var fn = that[name];
			that[name] = function () {
				return fn.apply(that, arguments);
			};
		};
		
	proxy('start');
	proxy('drag');
	proxy('stop');
};

artDialog.dragEvent.prototype = {

	// 开始拖拽
	onstart: $.noop,
	start: function (event) {
		var that = this;
		_$document
			.bind('mousemove', that.drag)
			.bind('mouseup', that.stop)
			.bind('dblclick', that.stop);
			
		that._clientX = event.clientX;
		that._clientY = event.clientY;
		that.onstart(event.clientX, event.clientY);
		event.preventDefault();
	},
	
	// 正在拖拽
	ondrag: $.noop,
	drag: function (event) {
		var that = this;
		that.ondrag(
			event.clientX - that._clientX,
			event.clientY - that._clientY
		);
	},
	
	// 结束拖拽
	onstop: $.noop,
	stop: function (event) {
		var that = this;
		_$document
			.unbind('mousemove', that.drag)
			.unbind('mouseup', that.stop)
			.unbind('dblclick', that.stop);
		
		event && that.onstop(event.clientX, event.clientY);
	}
	
};



// 微型模板引擎 - JavaScript Micro-Templating
// @see http://ejohn.org/blog/javascript-micro-templating/
_tmplEngine = (function(){
	var cache = {};
	return function tmpl(str, data){
		var fn = !/\W/.test(str) ?
		  cache[str] = cache[str] ||
			tmpl(artDialog.templates[str]) :
		  new Function("obj",
			"var p=[],print=function(){p.push.apply(p,arguments);};" +
			"with(obj){p.push('" +
			str
			  .replace(/[\r\t\n]/g, " ")
			  .split("<%").join("\t")
			  .replace(/((^|%>)[^\t]*)'/g, "$1\r")
			  .replace(/\t=(.*?)%>/g, "',$1,'")
			  .split("\t").join("');")
			  .split("%>").join("p.push('")
			  .split("\r").join("\\'")
		  + "');}return p.join('');");
		return data ? fn(data) : fn;
	};
})();



// 全局快捷键
_$document.bind('keydown', function (event) {
	var target = event.target,
		nodeName = target.nodeName,
		rinput = /^INPUT|TEXTAREA$/,
		api = artDialog.focus,
		keyCode = event.keyCode;

	if (!api || !api.config.esc || rinput.test(nodeName)) return;
		
	keyCode === 27 && api._trigger(api.config.noText);
});



// 获取artDialog路径
_path = window['_artDialog_path'] || (function (script, i, me) {
	for (i in script) {
		// 如果通过第三方脚本加载器加载本文件，请保证文件名含有"artDialog"字符
		if (script[i].src && script[i].src.indexOf('artDialog') !== -1) me = script[i];
	};
	
	_thisScript = me || script[script.length - 1];
	me = _thisScript.src.replace(/\\/g, '/');
	return me.lastIndexOf('/') < 0 ? '.' : me.substring(0, me.lastIndexOf('/'));
}(document.getElementsByTagName('script')));




// 无阻塞载入CSS (如"artDialog.min.js?skin=aero")
_skin = window['_artDialog_skin'] || _thisScript.src.split('skin=')[1];
if (_skin) {
	var link = document.createElement('link');
	link.rel = 'stylesheet';
	link.type = 'text/css';
	link.href = _path + '/skin/' + _skin + '.css';
	$('head')[0].appendChild(link);
};



// 触发浏览器预先缓存背景图片
$(function () {
	setTimeout(function () {
		if (!_count) {
			artDialog({icon: 'alert', time: 9, focus: false, closeFn: function () {
				this.DOM.wrap[0].style.visibility = '';
			}}).DOM.wrap[0].style.visibility = 'hidden';
		};
	}, 150);
});



// 开启IE6 CSS背景图片缓存
try {
	document.execCommand('BackgroundImageCache', false, true);
} catch (e) {};



/** 模板 */
artDialog.templates = {

	// Template: UI Framework
	outer: [
	'<div class="aui_outer">',
		'<table class="aui_table aui_outerTable">',
			'<tr>',
				'<td class="aui_border aui_nw"></td>',
				'<td class="aui_border aui_n"></td>',
				'<td class="aui_border aui_ne"></td>',
			'</tr>',
			'<tr>',
				'<td class="aui_border aui_w"></td>',
				'<td class="aui_center"></td>',
				'<td class="aui_border aui_e"></td>',
			'</tr>',
			'<tr>',
				'<td class="aui_border aui_sw"></td>',
				'<td class="aui_border aui_s"></td>',
				'<td class="aui_border aui_se"></td>',
			'</tr>',
		'</table>',
	'</div>'].join(''),
	
	// Template: Content Framework
	inner: [
	'<table class="aui_table aui_inner">',
		'<tr>',
			'<td <% if (icon) { %>colspan="2"<% } %> class="aui_header">',
				'<div class="aui_titleWrap" <% if (title === false) { %>style="display:none"<% } %>>',
					'<div class="aui_title">',
						'<%=title%>',
					'</div>',
					'<a class="aui_close" href="javascript:/*artDialog*/;"><%=closeText%></a>',
				'</div>',
			'</td>',
		'</tr>',
		'<tr>',
			'<% if (icon) { %>',
			'<td class="aui_tdIcon"><div class="aui_icon aui_<%=icon%>"></div></td>',
			'<% } %>',
			'<td class="aui_main">',
				'<div class="aui_content" style="padding:<%=padding%>"></div>',
			'</td>',
		'</tr>',
		'<tr>',
			'<td <% if (icon) { %>colspan="2"<% } %> class="aui_footer">',
				'<div class="aui_buttons" style="display:none"></div>',
			'</td>',
		'</tr>',
	'</table>'].join('')

};



/**
 * 默认配置
 * @namespace
 */
artDialog.defaults = {
	content: '<div class="aui_loading" ><span>loading..</span></div>',
	title: '',		// 标题. 默认'消息'
	tmpl: null,					// 供插件定义内容模板
	button: null,				// 自定义按钮
	yesFn: null,				// 确定按钮回调函数
	noFn: null,					// 取消按钮回调函数
	yesText: '\u786E\u5B9A',	// 确定按钮文本. 默认'确定'
	noText: '\u53D6\u6D88',		// 取消按钮文本. 默认'取消'
	closeText: '\xd7',			// 关闭按钮文本. 默认'×'
	width: 'auto',				// 内容宽度
	height: 'auto',				// 内容高度
	minWidth: 96,				// 最小宽度限制
	minHeight: 32,				// 最小高度限制
	padding: '20px 25px',		// 内容与边界填充距离
	icon: null,					// 消息图标名称
	initFn: null,				// 对话框初始化后执行的函数
	closeFn: null,				// 对话框关闭执行的函数
	time: null,					// 自动关闭时间
	esc: true,					// 是否支持Esc键关闭
	focus: true,				// 是否支持对话框按钮聚焦
	show: true,					// 初始化后是否显示对话框
	plug: true,					// 是否执行插件
	follow: null,				// 跟随某元素
	path: _path,				// artDialog路径
	lock: false,				// 是否锁屏
	background: '#000',			// 遮罩颜色
	opacity: .7,				// 遮罩透明度
	duration: 300,				// 遮罩透明度渐变动画速度
	fixed: false,				// 是否静止定位
	left: '50%',				// X轴坐标
	top: 'goldenRatio',			// Y轴坐标
	zIndex: 1987,				// 对话框叠加高度值(重要：此值不能超过浏览器最大限制)
	resize: false,				// 是否允许用户调节尺寸
	drag: true					// 是否允许用户拖动位置
};
window.artDialog = $.dialog = $.artDialog = artDialog;
}((window.jQuery && (window.art = jQuery)) || window.art, this));
