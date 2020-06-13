// JavaScript Document
$(function () {
    /**-------选项卡事--------**/
    $(".fmain .titul").find("li").each(function (i, n) {
        $(n).click(function () {
            $(".floattab0,.floattab1,.floattab2,.floattab3,.floattab4,.floattab5").hide();
            $(this).parent().find(".titliover").attr("class", "titli");
            $(this).attr("class", "titliover").fadeIn();
            $(".floattab" + i).fadeIn();
        });
    })
})