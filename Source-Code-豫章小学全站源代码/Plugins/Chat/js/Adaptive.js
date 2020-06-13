// JavaScript Document<script>
var changeImgSize = function (obj, size) {
    if (size == undefined) size = { w: 100, h: 100, pd: 2 };
    if (size.pd == undefined) size.pd = 2;
    var w = size.w;
    var h = size.h;
    if (size.w < 1) size.w = 1;
    if (size.h < 1) size.h = 1;
    var m = Math.max(obj.offsetWidth / size.w, obj.offsetHeight / size.h);
    if (m > 1) {
        size.w = obj.offsetWidth / m;
        size.h = obj.offsetHeight / m;
    } else {
        size.w = obj.offsetWidth;
        size.h = obj.offsetHeight;
    }
    var pdX = pdY = 0;
    pdX = (w - size.w) / 2 + size.pd;
    pdY = (h - size.h) / 2 + size.pd;
    obj.style.width = parseInt(size.w - size.pd * 2) + "px";
    obj.style.height = parseInt(size.h - size.pd * 2) + "px";
    obj.style.padding = pdY + "px " + pdX + "px";
};
