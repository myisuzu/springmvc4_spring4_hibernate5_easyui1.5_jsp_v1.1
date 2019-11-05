//jQuery.noConflict();
jQuery(window).bind('load', function () {


    $(".indent-col-main").superSlider_teacher({
        prevBtn: "#left_but",//左按钮
        nextBtn: "#right_but",//右按钮
        listCont: "#slider_list",//滚动列表外层
        scrollWhere: "next",//自动滚动方向next
        delayTime: 5000,//自动轮播时间间隔
        speed: 700,//滚动速度
        amount: 1,//单次滚动数量
        showNum: 4,//显示数量
        autoPlay: true,//自动播放
        hoverObj: "#slider_list > li"
    });
       
		jQuery('#left_but').hover(
		   function () {
			 jQuery(this).addClass("over");
		   },
		   function () {
			 jQuery(this).removeClass("over");
		   })
		
		jQuery('#right_but').hover(
		   function () {
			 jQuery(this).addClass("over");
		   },
		   function () {
			 jQuery(this).removeClass("over");
		   })

		jQuery('.products-grid li').hover(
		   function () {
			 jQuery(this).find('.product-name').stop(true, true).slideDown("slow");
		   },
		   function () {
			 jQuery(this).find('.product-name').hide("slow");
		   })

    //推荐课程走马灯
		$(".videoReCommend-col-main").superSlider({
		    prevBtn: "#videoReCommend_left_but",//左按钮
		    nextBtn: "#videoReCommend_right_but",//右按钮
		    listCont: "#videoReCommend_slider_list",//滚动列表外层
		    scrollWhere: "next",//自动滚动方向next
		    delayTime: 5000,//自动轮播时间间隔
		    speed: 700,//滚动速度
		    amount: 1,//单次滚动数量
		    showNum: 4,//显示数量
		    autoPlay: true//自动播放
		});

    //推荐课程走马灯（1100px盒子模型）
		$(".new-video-col-main").superSlider({
		    prevBtn: "#new-video_left_but",//左按钮
		    nextBtn: "#new-video_right_but",//右按钮
		    listCont: "#new-video_slider_list",//滚动列表外层
		    scrollWhere: "next",//自动滚动方向next
		    delayTime: 5000,//自动轮播时间间隔
		    speed: 700,//滚动速度
		    amount: 1,//单次滚动数量
		    showNum: 4,//显示数量
		    autoPlay: true//自动播放
		});

    //线下课程广告走马灯
		$("#the_four_ads").superSlider({
		    prevBtn: "#offlinead_left_but",//左按钮
		    nextBtn: "#offlinead_right_but",//右按钮
		    listCont: "#the_four_ads_box",//滚动列表外层
		    scrollWhere: "next",//自动滚动方向next
		    delayTime: 5000,//自动轮播时间间隔
		    speed: 700,//滚动速度
		    amount: 1,//单次滚动数量
		    showNum: 4,//显示数量
		    autoPlay: true//自动播放
		});

		jQuery('#videoReCommend_left_but').hover(
		   function () {
		       jQuery(this).addClass("over");
		   },
		   function () {
		       jQuery(this).removeClass("over");
		   })

		jQuery('#videoReCommend_right_but').hover(
		   function () {
		       jQuery(this).addClass("over");
		   },
		   function () {
		       jQuery(this).removeClass("over");
		   })
    	
		

	});
