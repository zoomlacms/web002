function initialize(uid, flag) {
    var doctxt;
    if (GBrowserIsCompatible()) {
        $.get('../ashx/GoogleMaps.ashx?mt=' + new Date().getTime() + "&v2=select&uid=" + uid, function (data) {
            var lng = data;

            var map = new GMap2(document.getElementById("map"));
            var blueIcon = new GIcon(G_DEFAULT_ICON);
            blueIcon.image = "../images/markerTransparent.png";
            markerOptions = { draggable: true, icon: blueIcon };
            if (data.replace(",,0,", "").replace("0", "").length > 0) {

                var m = lng.split(',')[2];
                map.setCenter(new GLatLng(lng.split(',')[0], lng.split(',')[1]), (m - 0));
                var marker = new GMarker(new GLatLng(lng.split(',')[0], lng.split(',')[1]), markerOptions)
                marker.openInfoWindowHtml(lng.split(',')[3]);
                doctxt = lng.split(',')[3]
                map.addOverlay(marker);
            } else {
                var geocoder = new GClientGeocoder();
                geocoder.getLatLng(IPData[3], function (point) {
                    if (!point) {
                        alert("无法解析:" + address);
                    } else {
                        map.setCenter(point, 13);
                        var marker = new GMarker(point, markerOptions);
                        marker.openInfoWindowHtml("<div style='text-align:center; line-height:20px'>您当前IP为：" + IPData[0] + "，</br>为" + IPData[2] + "-" + IPData[3]+"</div>");
                        map.addOverlay(marker);
                    }
                });
            }
            map.removeMapType(G_HYBRID_MAP);
            var mapControl = new GMapTypeControl();
            map.addControl(mapControl);
            map.addControl(new GLargeMapControl());
            map.enableScrollWheelZoom();
            map.enableGoogleBar();
            GEvent.addListener(map, 'click', function (overlay, point) {
                if (point) {
                    map.clearOverlays();
                    map.setCenter(point, point.z);
                    var marker = new GMarker(point, markerOptions);
                    map.addOverlay(marker);
                    map.removeMapType(G_HYBRID_MAP);
                    if (flag == 1) {

                        marker.openInfoWindowHtml("<input type='text' id='addtxt' onfocus=\"if(value=='您的位置'||value=='您的位置') {value=''};\" value=\"您的位置\" /> <input type='button' value='保存' onclick='update(" + point.y + "," + point.x + "," + uid + "," + map.getZoom() + ")' /> ");
                    } else {
                        marker.openInfoWindowHtml("您的位置");
                    }
                    var mapControl = new GMapTypeControl();
                    map.addControl(mapControl);
                    map.addControl(new GLargeMapControl());
                    map.enableGoogleBar();
                    GEvent.addListener(marker, 'click', function ()
                    { marker.openInfoWindowHtml(doctxt); });

                }
            });
            GEvent.addListener(marker, 'click', function () {
                marker.openInfoWindowHtml(doctxt);
            });
            GEvent.addListener(marker, "dragstart", function () {
                map.closeInfoWindow();
            });
            GEvent.addListener(marker, "dragend", function (overlay, point) {
                var lat = marker.getLatLng().lat();
                var lng = marker.getLatLng().lng();
                if (flag == 1) {
                    marker.openInfoWindowHtml("<input type='text' id='addtxt' onfocus=\"if(value=='您的位置'||value=='您的位置') {value=''};\" value=\"您的位置\" /> <input type='button' value='保存' onclick='update(" + lat + "," + lng + "," + uid + "," + map.getZoom() + ")' />");
                } else {
                    marker.openInfoWindowHtml("您的位置");
                }
            });
            $("#maxbtn").click(function () {

                map.zoomIn();

            });
            $("#minbtn").click(function () {
                map.zoomOut();
            });
            $("#didao").click(function () {
                //增加道路折线（不包含任何点）
                var polyline = new GPolyline([], "#ff0000", 6);
                map.addOverlay(polyline);

                //使道路折线对象处于可绘制状态， 用户可以用鼠标绘制方式增加道路顶点
                polyline.enableDrawing();

                //当鼠标移动到道路折线上时， 折线变为顶点可修改状态（显示可拖放的顶点）
                GEvent.addListener(polyline, 'mouseover', function () {
                    polyline.enableEditing();
                });

                //当鼠标离开道路折线时， 折线变为不可修改状态
                GEvent.addListener(polyline, 'mouseout', function () {
                    polyline.disableEditing();
                });

                GEvent.addListener(polyline, 'endline', function () {
                    var roadName = prompt("请输入道路名称", "");
                    if (roadName && roadName != '' && polyline.getVertexCount() > 1)//如果指定了道路名称， 且道路折线顶点数至少有2个， 保存该道路
                    {
                        roads.push([roadName, polyline]);
                    }
                    else//否则， 删除该道路
                    {
                        map.removeOverlay(polyline);
                    }
                });


            });

        });
    }
}
function ShowMap(uid, adds) {
        var doctxt;
        if (GBrowserIsCompatible()) {
            $.get('../ashx/GoogleMaps.ashx?mt=' + new Date().getTime() + "&v2=select&uid=" + uid, function (data) {
                var mcoctxt;
                var mlngx;
                var mlngy;
                var mlngz;
                var lng = data;
                var map = new GMap2(document.getElementById("map"));
                var blueIcon = new GIcon(G_DEFAULT_ICON);
                blueIcon.image = "../images/markerTransparent.png";
                markerOptions = { icon: blueIcon };
                if (adds.length == 0) {
                    if (data.replace(",,0,", "").replace("0", "").length > 0) {
                        var m = lng.split(',')[2];
                        mcoctxt = lng.split(',')[3];
                        $("#hlngx").val(lng.split(',')[0]);
                        $("#hlngy").val(lng.split(',')[1]);
                        $("#hlngz").val(map.getZoom());
                        map.setCenter(new GLatLng(lng.split(',')[0], lng.split(',')[1]), (m - 0));
                        var marker = new GMarker(new GLatLng(lng.split(',')[0], lng.split(',')[1]), markerOptions)
                        marker.openInfoWindowHtml(lng.split(',')[3]);
                        doctxt = lng.split(',')[3]
                        map.addOverlay(marker);
                    } else {
                        var geocoder = new GClientGeocoder();
                        geocoder.getLatLng(IPData[3], function (point) {
                            if (!point) {
                                alert("无法解析:" + address);
                            } else {
                                map.setCenter(point, 13);
                                var marker = new GMarker(point, markerOptions);
                                if ((uid - 0) > 0) {
                                    marker.openInfoWindowHtml("<input type='text' id='addtxt' onfocus=\"if(value=='您的位置'||value=='您的位置') {value=''};\" value=\"您的位置\" />");
                                } else {
                                    marker.openInfoWindowHtml("<div style='text-align:center; line-height:20px'>您当前IP为：" + IPData[0] + "，</br>为" + IPData[2] + "-" + IPData[3] + "</div>");
                                }
                                map.addOverlay(marker);
                                $("#hlngx").val(point.y);
                                $("#hlngy").val(point.x);
                                $("#hlngz").val(map.getZoom());
                                $("#Bbtn").click(function () {
                                    var t;
                                    var f;
                                    if (($("#hlngx").val() - 0) > 100) {
                                        f = $("#hlngy").val();
                                        t = $("#hlngx").val();
                                    } else {
                                        f = $("#hlngx").val();
                                        t = $("#hlngy").val();
                                    }
                                    update(t, f, uid, $("#hlngz").val(), $("#addtxt").val());
                                });
                            }
                        });
                    }
                } else {
                    var geocoder = new GClientGeocoder();
                    var ipare = adds;
                    var pz = 7;
                    if (adds.length > adds.replace("市", "").length) {
                        pz = 10;
                    }
                    geocoder.getLatLng(adds, function (point1) {
                        if (!point1) {
                            alert("无法解析:" + address);
                        } else {
                            map.setCenter(point1, (pz - 0));
                            var marker = new GMarker(point1, markerOptions);
                            if ((uid - 0) > 0) {

                                marker.openInfoWindowHtml("<input type='text' id='addtxt' onfocus=\"if(value=='您的位置'||value=='您的位置') {value=''};\" value=\"您的位置\" />");
                            }
                            else {
                                marker.openInfoWindowHtml("您的位置");
                            }
                            map.addOverlay(marker);
                            $("#hlngx").val(point1.y);
                            $("#hlngy").val(point1.x);
                            $("#hlngz").val(map.getZoom());

                        }
                    });
                }
                map.removeMapType(G_HYBRID_MAP);
                var mapControl = new GMapTypeControl();
                map.addControl(mapControl);
                map.addControl(new GLargeMapControl());
                map.enableScrollWheelZoom();
                map.enableGoogleBar();
                $("#maxmap").click(function () {

                    map.zoomIn();

                });
                $("#minmap").click(function () {
                    map.zoomOut();
                });
                GEvent.addListener(map, 'click', function (overlay, point2) {
                    if (point2) {
                        map.clearOverlays();
                        map.setCenter(point2, point2.z);
                        var marker = new GMarker(point2, markerOptions);
                        map.addOverlay(marker);
                        map.removeMapType(G_HYBRID_MAP);
                        if ((uid - 0) > 0) {
                            marker.openInfoWindowHtml("<input type='text' id='addtxt' onfocus=\"if(value=='您的位置'||value=='您的位置') {value=''};\" value=\"您的位置\" />");
                        } else {
                            marker.openInfoWindowHtml("您的位置");
                        }
                        $("#hlngx").val(point2.x);
                        $("#hlngy").val(point2.y);
                        $("#hlngz").val(map.getZoom());
                        mcoctxt = $("#addtxt").val();
                        var mapControl = new GMapTypeControl();
                        map.addControl(mapControl);
                        map.addControl(new GLargeMapControl());
                        map.enableGoogleBar();
                        GEvent.addListener(marker, 'click', function ()
                        { marker.openInfoWindowHtml(doctxt); });
                    }
                });
                GEvent.addListener(marker, 'click', function () {
                    marker.openInfoWindowHtml(doctxt);
                });
                $("#Bbtn").click(function () {
                    var t;
                    var f;
                    if (($("#hlngx").val() - 0) > 100) {
                        f = $("#hlngy").val();
                        t = $("#hlngx").val();
                    } else {
                        f = $("#hlngx").val();
                        t = $("#hlngy").val();
                    }
                    update(t, f, uid, $("#hlngz").val(), $("#addtxt").val());
                });

            });
        }
}

function update(lx, ly, uid, lz, txt) {
    $.get('../ashx/GoogleMaps.ashx?mt=' + new Date().getTime() + "&v2=updat&uid=" + uid + "&lx=" + ly + "&ly=" + lx + "&lz=" + lz + " &type=" + escape(txt), function (data) {
        alert(data);
        window.location.href = "../Model/MyMap.aspx";
        ;
    });
}



