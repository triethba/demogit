jQuery(document).ready(function($) {			
		
		$("a").each(function() {
			$(this).attr("hideFocus", "true").css("outline", "none");
		});
	
		$(".dropdown ul").parent("li").addClass("parent");
		$(".dropdown li:first-child, .pricing_box li:first-child").addClass("first");
		$(".dropdown li:last-child, .pricing_box li:last-child, .sidebar_box .widget-container:last-child").addClass("last");
		$(".dropdown li:only-child").removeClass("last").addClass("only");	
		$(".dropdown .current-menu-item, .dropdown .current-menu-ancestor").prev().addClass("current-prev");		

		$("ul.tabs").tabs("> .tabcontent", {
			tabs: 'li', 
			effect: 'fade'
		});
		
	$(".recent_posts > li:odd, .popular_posts > li:odd, .styled_table table>tbody>tr:odd").addClass("odd");
	$(".widget_recent_comments li:even, .widget_recent_entries li:even, .widget_twitter .tweet_item:even, .widget_archive ul > li:even, .widget_categories ul > li:even, .widget_nav_menu ul > li:even, .widget_links ul > li:even, .widget_meta ul > li:even, .widget_pages ul > li:even").addClass("even");
	
// cols
	$(".row .col:first-child").addClass("alpha");
	$(".row .col:last-child").addClass("omega"); 	

// quick search
	$("#link_q_filter").click(function(){
		$(this).toggleClass("active");
		$(this).next(".quick_filter_box").slideToggle(300,'easeInOutCubic');
	});
	
// toggle content
	$(".toggle_content").hide(); 
	
	$(".toggle").toggle(function(){
		$(this).addClass("active");
		}, function () {
		$(this).removeClass("active");
	});
	
	$(".toggle").click(function(){
		$(this).next(".toggle_content").slideToggle(300,'easeInQuad');
	});
	
	$(".table-pricing tr:even").addClass("even");

// gallery
	$(".gl_col_2 .gallery-item::nth-child(2n)").addClass("nomargin");
	
// pricing
	$(".pricing_box li.price_col").css('width',$(".pricing_box ul").width() / $(".pricing_box li.price_col").size());

// buttons	
	if (!$.browser.msie) {
		$(".button_link, .button_styled, .btn-share, .tf_pagination .page_prev, .tf_pagination .page_next, .btn-submit, .button_link_arrow").hover(function(){
			$(this).stop().animate({"opacity": 0.90});
		},function(){
			$(this).stop().animate({"opacity": 1});
		});
	}
	
// preload images
	var cache = [];
	$.preLoadImages = function() {
    var args_len = arguments.length;
    for (var i = args_len; i--;) {
      var cacheImage = document.createElement('img');
      cacheImage.src = arguments[i];
      cache.push(cacheImage);
    }
	$.preLoadImages("images/dropdown_sprite.png","images/dropdown_sprite2.png");
}	
// scroll to top
$(function () {  
     $(window).scroll(function () {  
         if ($(this).scrollTop() != 0) {  
             $('.link-top').fadeIn();  
         } else {  
             $('.link-top').fadeOut();  
         }  
     });  
     $('.link-top').click(function () {  
         $('body,html').animate({  
             scrollTop: 0  
         },  
         1200);  
     });  
 });
});
