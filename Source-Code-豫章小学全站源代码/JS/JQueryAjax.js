    var ZoomLa = {};

	/*ajax登陆
	*/
ZoomLa.ajaxlogin = function (username, password,callback) {
		
    var url = "/user/login.aspx?" + Math.random() + "";
    $.post(url, { "UserName": username,
        "Password": password,
        "postlogin": "True",
        "DropExpiration": "",
        "ajaxlogin": "True"
    },
    function (data) {
        if (data != null && data != "") {
            if (data.indexOf('错误') == -1) {
								//登录成功
								callback();
            }
            else {  
						 alert('登录失败，请重新登录');  
            }
        }
        else {
					  alert('登录失败，请重新登录');  
        }
    }, "");
}

/*ajax退出
*/
ZoomLa.ajaxlogout = function (callback) {
    var url = "/user/logout.aspx?" + Math.random() + "";
    $.post(url, {},
    function (data) {
            callback();
    });
}
