/* animation */
var contentWayPoint = function() {
	var i = 0;
	$('.animate-box').waypoint( function( direction ) {

		if( direction === 'down' && !$(this.element).hasClass('animated') ) {
			
			i++;

			$(this.element).addClass('item-animate');
			setTimeout(function(){

				$('body .animate-box.item-animate').each(function(k){
					var el = $(this);
					setTimeout( function () {
						var effect = el.data('animate-effect');
						if ( effect === 'fadeIn') {
							el.addClass('fadeIn animated');
						} else if ( effect === 'fadeInLeft') {
							el.addClass('fadeInLeft animated');
						} else if ( effect === 'fadeInRight') {
							el.addClass('fadeInRight animated');
						} else {
							el.addClass('fadeInUp animated');
						}

						el.removeClass('item-animate');
					},  k * 200, 'easeInOutExpo' );
				});
				
			}, 100);
			
		}

	} , { offset: '85%' } );
};

// Reflect scrolling in navigation
var navActive = function(section) {

	var $el = $('#navbar > ul');
	$el.find('li').removeClass('active');
	$el.each(function(){
		$(this).find('a[data-nav-section="'+section+'"]').closest('li').addClass('active');
	});

};

var navigationSection = function() {

	var $section = $('section[data-section]');
	
	$section.waypoint(function(direction) {
		
		if (direction === 'down') {
			navActive($(this.element).data('section'));
		}
	}, {
		offset: '150px'
	});

	$section.waypoint(function(direction) {
		if (direction === 'up') {
			navActive($(this.element).data('section'));
		}
	}, {
		offset: function() { return -$(this.element).height() + 155; }
	});

};

function myload(url, category, title) {	
	/* project-overlay의 자식들에 애니메이션 추가 */
	$(".project-overlay").load(url, {"category": category, "title" :title} ,contentWayPoint);

	$(".project-overlay").removeClass("hidden");
	$("#colorlib-page").addClass("hidden");

	/* 최상단으로 스크롤 이동 */
	$('html').animate({scrollTop: 0}, 10);
}

function closeOverlay() {
	let curURL = $(window.location)[0].href;
	let lastIndex = curURL.lastIndexOf("#");
	let url = curURL.substring(0, lastIndex - 1);
	url += "/index";

	window.history.pushState(null, null, url);
	$(".project-overlay").addClass("hidden");
	$(".project-overlay").empty();
	$("#colorlib-page").removeClass("hidden");

	/* 메뉴 네비게이션 활성화 */
	navigationSection();
	$('html').animate({scrollTop: $('[data-section="project"]').offset().top - 55}, 10);
}

$("a[name='project-item']").click(function(event) {
	console.log("프로젝트 들어옴");
	event.preventDefault();
	let target = event.target;
	let url = target.getAttribute("path");
	let curURL = $(window.location)[0].href;
	let lastIndex = curURL.lastIndexOf("/");
	let url_split = url.split('/');
	let category = url_split[1];
	let title = url_split[2];
	
	console.log("url은 " + curURL.substring(0, lastIndex + 1) + "project");
	myload(curURL.substring(0, lastIndex + 1) + "project", category, title);

	let loadURL = curURL.substring(0, lastIndex + 1) + "#" + url;
	window.history.pushState(null, null, loadURL);
})