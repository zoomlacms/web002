/*
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';

    //-------------------- 外观样式 --------------------//
    config.language = 'zh-cn';  //配置语言
    config.font_names = '宋体;楷体_GB2312;新宋体;黑体;隶书;幼圆;微软雅黑;Arial;Comic Sans MS;Courier New;Tahoma;Times New Roman;Verdana'; //字体


    //-------------------- 上传路径 --------------------//
    var ckpath = '/Plugins';  //上级目录,可根据ckfinder的实际目录作相应修改
    //   

    //config.filebrowserBrowseUrl = ckpath + '/ckfinder/ckfinder.html';                  //上传文件的查看路径
    //config.filebrowserImageBrowseUrl = ckpath + '/ckfinder/ckfinder.html?Type=Images'; //上传图片的查看路径
    //config.filebrowserFlashBrowseUrl = ckpath + '/ckfinder/ckfinder.html?Type=Flash';  //上传Flash的查看路径

    // config.filebrowserUploadUrl = ckpath + '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';        //上传文件的保存路径
    config.filebrowserUploadUrl = ckpath + '/Ckeditor/Upload.aspx?tre='+Date()+'&nodeid=' + $("#hfNode").val();
    // config.filebrowserImageUploadUrl = ckpath + '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images'; //上传图片的保存路径
    // config.filebrowserFlashUploadUrl = ckpath + '/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';  //上传Flash的保存路径
};
