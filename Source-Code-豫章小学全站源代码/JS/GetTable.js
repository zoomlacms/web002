function GetExcel(obj) {
    var gt;
    ($("#" + obj)).find("tr").each(function (i, item) {
        ($(item)).find("td").each(function (j, iten) {
            gt += $.trim($(iten).text()) + "$t";
        });
        gt += "$n";
    });
    window.location.href = "/manage/Content/GetExcel.aspx?txt=" + $.trim(gt.replace("undefined", ""));
}
