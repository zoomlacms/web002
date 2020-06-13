// JavaScript Document
//div移动和选中
var beforeObj=null;
var borderhtml = "<span class='rleftUp'><img  src='/User/Develop/Images/round.gif'></span><span class='rleftDown'><img src='/User/Develop/Images/round.gif'></span><span class='rrightUp'><img  src='/User/Develop/Images/round.gif'></span><span class='rrightDown'><img  src='/User/Develop/Images/round.gif'></span>";

$(function(){
	 $(document).click(function(){ if(beforeObj){ 
	 		 var result=event.target || event.srcElement;
			 if(result.tagName!="DIV"){
				 $(beforeObj).removeClass(".addBorder");
				 $(beforeObj).find(".rleftUp,.rleftDown,.rrightUp,.rrightDown").remove();
				 beforeObj=null;
			 } 
			}
	  });
})
	 
function AddBorder(obj)
{
	isDiv=true;
	if(obj!=beforeObj){
		if(beforeObj){
			if($(beforeObj).hasClass(".addBorder"))
			{
				$(beforeObj).removeClass(".addBorder");
				$(beforeObj).find(".rleftUp,.rleftDown,.rrightUp,.rrightDown").remove();
			}
		}
		if(!$(obj).hasClass(".addBorder")){
			$(obj).addClass(".addBorder");
			$(obj).append(borderhtml);
			beforeObj=obj;
		} 
	}
}

function getEvent() //同时兼容ie和ff的写法
 {
     if (document.all) return window.event;
     func = getEvent.caller;
     while (func != null) {
         var arg0 = func.arguments[0];
         if (arg0) {
             if ((arg0.constructor == Event || arg0.constructor == MouseEvent) || (typeof (arg0) == "object" && arg0.preventDefault && arg0.stopPropagation)) {
                 return arg0;
             }
         }
         func = func.caller;
     }
     return null;
 }

//移动
 $(function(){
	 var padtop=0;
	 var padleft=0;
	 var ismove=false;
	 $(".pophead").mousedown(function(){
		  AddBorder($(this).parent(":first")[0]);
		  var ptop= $(this).parent(":first").css("top");
		  var pleft= $(this).parent(":first").css("left");
		  ptop=ptop.substring(0,ptop.length-2);
		  pleft=pleft.substring(0,pleft.length-2);
		  var evt=getEvent();
		  padleft=evt.clientX-parseInt(pleft);
		  padtop=evt.clientY-parseInt(ptop);
		  var msg="位置：("+ptop+","+pleft+")";
		   ClearBoxMsg();
		 CreateBoxMsg(msg,evt);
		  $(this).bind("mousemove",function(){
			     var mevt = getEvent();
                 var pmleft = mevt.clientX - padleft;
                 var pmtop = mevt.clientY - padtop;
                $(this).parent(":first").css("top", pmtop);
                $(this).parent(":first").css("left", pmleft);
				msg="位置：("+pmtop+","+pmleft+")";
			 	MoveBoxMsg(msg,mevt);
			  });
	 });
	  $(".pophead").mouseup(function () {
		 padtop = 0;
		 padleft = 0;
		// $(this)
	    $(this).unbind("mousemove");
	 	ClearBoxMsg();
	 });
	 });
	 
function CreateBoxMsg(msg,evt)
{ 
	$("body").append("<div id='boxMsg' class='boxMsg'>"+msg+"</div>");
	$(".boxMsg").css("top",evt.clientY+10);
	$(".boxMsg").css("left",evt.clientX+10);
	
	
}
function MoveBoxMsg(msg,evt)
{
	$(".boxMsg").css("top",evt.clientY+10);
	$(".boxMsg").css("left",evt.clientX+10);
	$(".boxMsg").html(msg);
}
function ClearBoxMsg(){
	$(".boxMsg").remove();
}
   /**	 
	$(".rrightDown").live("mousedown",function(event){
		beforeX=event.pageX;
		beforeY=event.pageY;
		resizeobj=$(this).parent("div:first");
		var msg="大小：(宽："+resizeobj.width()+",高："+resizeobj.height()+")";
		ClearBoxMsg();
		CreateBoxMsg(msg,event.pageY,event.pageX);
		
		$(this).bind("mousemove", function(event){
			 
			var rright=resizeobj.css("right");
			var rbottom=resizeobj.css("bottom");
			rright=rright.substring(0,rright.length-2);
			rbottom=rbottom.substring(0,rbottom.length-2);
			rright=parseInt(rright)-event.pageX+beforeX;
			rbottom=parseInt(rbottom)-event.pageY+beforeY;
			resizeobj.css({"right":rright,"bottom":rbottom});
			
			beforeX=event.pageX;
			beforeY=event.pageY;
			var msg="大小：(宽："+resizeobj.width()+",高："+resizeobj.height()+")";
			MoveBoxMsg(msg,event.pageY,event.pageX);
		 });
	});
	$(".rrightDown").live("mouseup", function(event){
			$(this).unbind("mousemove");
			var rparent=$(this).parent("div:first");
			rparent.width($(this).width());
			rparent.height($(this).height());
			ClearBoxMsg();
		})
	 

	$(".rrightDown").live("mousedown",function(event){
		beforeX=event.pageX;
		beforeY=event.pageY;
		resizeobj=$(this).parent().parent("div:first");
		var msg="大小：(宽："+resizeobj.width()+",高："+resizeobj.height()+")";
		ClearBoxMsg();
		CreateBoxMsg(msg,event.pageY,event.pageX);
		
		$(this).bind("mousemove", function(event){
		     
			var rwidth=event.pageX-beforeX+resizeobj.width();
			var rheight=resizeobj.height()+event.pageY-beforeY;
			
			resizeobj.width(rwidth);
			resizeobj.height(rheight);
			beforeX=event.pageX;
			beforeY=event.pageY;
			var msg="大小：(宽："+rwidth+",高："+rheight+")";
			MoveBoxMsg(msg,event.pageY,event.pageX);
		 });
	});
	$(".rrightDown").live("mouseup", function(event){
			$(this).unbind("mousemove");
				ClearBoxMsg();
		
		})
	**/
 
/**
<script type="text/javascript">
$(function(){
	 var currentmove;
	 var ismove=false;
	 var distancetop=0;
	 var distanceleft=0;
	$(document).mousedown(function(event){ 
	   currentmove=event.target;
	   distancetop=event.pageY-$(currentmove).position().top;
	   distanceleft=event.pageX-$(currentmove).position().left;
	   ismove=true;
	}); 
	$(document).mousemove(function(event){ 
	   if(ismove)
	   {
		  var mtop=event.pageY-distancetop;
		  var mleft=event.pageX-distanceleft;
		  $(currentmove).css({"top":mtop,"left":mleft});
	   }
	});
	$(document).mouseup(function(event){

		ismove=false;
		currentmove=null;
	});
	
	})
</script>
**/
/***改变模型大小**/
  this.rleftUp= this.Mask.children(".rleftUp:first");
  this.rleftDown=this.Mask.children(".rleftDown:first");
  this.rrightUp= this.Mask.children(".rrightUp:first");
  this.rrightDown=this.Mask.children(".rrightDown:first");
   //左上改变大小..........
  var startTop=0;
  var startLeft=0;
  var beforEvtX=0;
  var beforEvtY=0;
  this.rleftUp.mousedown(function(event){ 
	var ptop= moveObj.position().top;
	var	pleft= moveObj.position().left;
 
	startLeft=event.pageX- pleft;
	startTop=event.pageY-ptop;
    var msg="大小：(宽："+moveObj.width()+",高："+moveObj.height()+")";
	ClearBoxMsg();
	CreateBoxMsg(msg,event.pageY,event.pageX);
	
	beforEvtX=event.pageX;
	beforEvtY=event.pageY;
 
	$(this).bind("mousemove",function(event){
		 
		ptop= moveObj.position().top;
		pleft= moveObj.position().left;
		var mleft=0;
		var mwidth=0;
		var mtop=0;
		var mheight=0;
		var gapleft=beforEvtX-event.pageX;
		var gaptop=event.pageY-beforEvtY
		 if(gapleft>-15&&gapleft<15 &&gaptop>-15&&gaptop<15  ){  
			mleft=pleft+(event.pageX-beforEvtX);
			mwidth=moveObj.width()-(event.pageX-beforEvtX);
			mtop=ptop+(event.pageY-beforEvtY);
			mheight=moveObj.height()-(event.pageY-beforEvtY);
			 
			beforEvtY=event.pageY;
			moveObj.css({"left":mleft,"top":mtop});
			moveObj.css({"width":mwidth,"height":mheight});
			var msg="大小：(宽："+moveObj.width()+",高："+moveObj.height()+")";
			MoveBoxMsg(msg,event.pageY,event.pageX);
		 }else{
			  $(this).unbind("mousemove");
				ClearBoxMsg();
		 }   
	  });
  $(this).mouseup(function(){ 
   $(this).unbind("mousemove");
    ClearBoxMsg();
   });
 

   });
   //左下改变大小 
	 