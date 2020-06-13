//获取竞拍封顶数量
function GetShopNum() {
    $.get(
            "/Action/DataComm.aspx?menu=ShopNum",
            function (obj) {
                var val = obj;
                var nums = val.split("||");
                var UserNum = 0;  //用户已拍到的商品数量
                var ShopNum = 0; //商品封顶数量
                if (nums != null && nums.length > 1) {
                    ShopNum = nums[0];
                    UserNum = nums[1];
                }
                alert(ShopNum);
                alert(UserNum);
            }
                );
}