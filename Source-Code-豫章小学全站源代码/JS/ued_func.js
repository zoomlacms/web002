//主题轮播开始
if ($("#photo_ul_zt li").size() > 2) {
    $("#photo_ul_zt").html("<div id='wrap_cycle'>" + $("#photo_ul_zt").html() + $("#photo_ul_zt").html() + "</div>");
    var wrap = $("#wrap_cycle"), i = 1, timeL, timeR, cur, state = "left", cN, per = parseInt($("#wrap_cycle li").width()) + parseInt($("#wrap_cycle li").css("marginLeft"));
    cN = $("#wrap_cycle li").size()
        wrap.width(per * cN)
        play = function (dir) {
            $("#bar_l_zt").unbind("click", play);
            $("#bar_r_zt").unbind("click", play);
            if (dir == "left") {
                cur = parseInt(wrap.css("left"))
                wrap.animate({ "left": cur - per }, 500, function () { i++; if (i == cN / 2 + 1) { wrap.css("left", 0); i = 1 } })
            }
            else {
                if (state == "left") { i == 1; wrap.css("left", -cN / 2 * per); }
                if (i == 1) wrap.css("left", -cN / 2 * per)
                cur = parseInt(wrap.css("left"))
                wrap.animate({ "left": cur + per }, 500, function () { i++; if (i == cN / 2 + 1) { i = 1; } })
            }
        }
        timeL = setInterval("play('left')", 3000)

        $("#bar_r_zt").bind("click", function () {
            if (timeL != undefined) clearInterval(timeL)
            if (timeR != undefined) clearInterval(timeR)
            play('right')
            state = "right"
            timeR = setInterval("play('right')", 3000)
        })
        $("#bar_l_zt").bind("click", function () {
            if (timeL != undefined) clearInterval(timeL)
            if (timeR != undefined) clearInterval(timeR)
            play('left')
            state = "left"
            timeL = setInterval("play('left')", 3000)
        })

        $("#photo_ul_zt").hover(
		function () {
		    if (timeL != undefined) clearInterval(timeL)
		    if (timeR != undefined) clearInterval(timeR)
		},
		function () {
		    if (state == "left") { timeL = setInterval("play('left')", 3000) }
		    if (state == "right") { timeR = setInterval("play('right')", 3000) }
		}
	)
}
	//主题轮播结束
