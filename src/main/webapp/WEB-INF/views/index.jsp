<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<link href="<c:url value="/resources/css/layout/header.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/css/layout/main.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">	
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<!-------------------------------header----------------------------->

	<div class="header">
		<div class="header_inner">
			<div class="logoWrap">
				<img alt="" src="./resources/images/mainHome/logo.jpg">
			</div>
			<div class="navigationWrap">
				<a href="#">투어상품</a>
				<a href="#">FAQ</a>
				<a href="#">여행리뷰</a>
				<a href="#">회사소개</a>
				<a href="#">마이페이지</a>
			</div>
			<div class="snsWrap">
				<img alt="" src="./resources/images/mainHome/sns_instagram.jpg">
				<img alt="" src="./resources/images/mainHome/sns_kakao.jpg">
			</div>

		</div>
	</div>

	<!-------------------------------Main----------------------------->
	
	<div class="body">
		<div class="main_body">
			<div id="main_body_image">
			
				<div class="body_inner">
					<div class="main_font">
						<!-- <span>파리</span>
						<span>크레파스</span> -->
						<div>파리 크레파스</div>
					</div>
					
					<div class="main_font2">
						<span>Paris</span>
						<span>Crayon</span>
					</div>
				</div><!-- body_inner 끝 -->
			</div> <!-- main_body_image끝 -->	
			<div class="body_box">
				<div class="tour_main">
					<div class="tour_main_txt">파리 크레파스
						<strong>투어 상품</strong>
					</div>
					<div class="tour_main_img">
		
						<section class="slides"> 
						  
						  <section class="slides-nav">
						    <nav class="slides-nav__nav">
						      <button class="slides-nav__prev js-prev">Prev</button>
						      <button class="slides-nav__next js-next">Next</button>
						      <button>All</button>
						    </nav>
						  </section>
						
						  <section class="slide is-active">
						    <div class="slide__content">
						      <figure class="slide__figure"><div class="slide__img">
						      <a href="#"><img class="test" alt="" src="./resources/images/mainHome/T4.jpg" style="width:900px;height:540px;"></a>
						      </div></figure>
						      <header class="slide__header">
						        <h2 class="slide__title">
						          <span class="title-line"><span>Paris</span></span>
						          <span class="title-line"><span>Walking tour</span></span>
						        </h2>
						      </header>
						    </div>
						  </section>
						
						  <section class="slide">
						    <div class="slide__content">
						      <figure class="slide__figure"><div class="slide__img">
						      <a href="#"><img alt="" src="./resources/images/mainHome/T6.jpg" style="width:900px;height:540px;"></a>
						      </div></figure>
						      <header class="slide__header">
						        <h2 class="slide__title">
						          <span class="title-line"><span>Belgium</span></span>
						          <span class="title-line"><span>Tour</span></span>
						        </h2>
						      </header>
						    </div>
						  </section>
						
						  <section class="slide">
						    <div class="slide__content">
						      <figure class="slide__figure"><div class="slide__img">
						      <a href="#"><img alt="" src="./resources/images/mainHome/T7.jpg" style="width:900px;height:540px;"></a>
						      </div></figure>
						      <header class="slide__header">
						        <h2 class="slide__title">
						          <span class="title-line"><span>Rivoli, Paris</span></span>
						          <span class="title-line"><span>museum Tour</span></span>
						        </h2>
						      </header>
						    </div>
						  </section>
						
						  <section class="slide">
						    <div class="slide__content">
						      <figure class="slide__figure"><div class="slide__img">
						       <img alt="" src="./resources/images/mainHome/T8.jpg" style="width:900px;height:540px;">
						      </div></figure>
						      <header class="slide__header">
						        <h2 class="slide__title">
						          <span class="title-line"><span>Versailles & Giverny & Gogh</span></span>
						          <span class="title-line"><span>Tour</span></span>
						        </h2>
						      </header>
						    </div>
						  </section>
						</section>
					</div><!-- tour_main_img끝 -->
				</div><!--tour_main 끝 -->
				<div class="main_review">
					<div class="main_rebox_1">
							<div class="main_rebox_2">
								<p>파리크레파스</p>
								<strong>베스트 리얼 후기</strong>
							</div>
					</div>
				</div>
			
			
			</div> <!-- body_box끝 -->
		</div> <!-- main_body끝 -->
	
	
	
	
	
	</div>
	
	
	<script type="text/javascript">
	(function($) {
		 
		  var SliceSlider = {
		    
		    /**
		     * Settings Object
		     */
		    settings: {
		      delta:              0,
		      currentSlideIndex:  0,
		      scrollThreshold:    40,
		      slides:             $('.slide'),
		      numSlides:          $('.slide').length,
		      navPrev:            $('.js-prev'),
		      navNext:            $('.js-next'),
		    },
		    
		    /**
		     * Init
		     */
		    init: function() {
		      s = this.settings;
		      this.bindEvents();
		    },
		    
		    /**
		     * Bind our click, scroll, key events
		     */
		    bindEvents: function(){
		      
		      // Scrollwheel & trackpad
		      s.slides.on({
		        'DOMMouseScroll mousewheel' : SliceSlider.handleScroll
		      });
		      // On click prev
		      s.navPrev.on({
		        'click' : SliceSlider.prevSlide
		      });
		      // On click next
		      s.navNext.on({
		        'click' : SliceSlider.nextSlide
		      });
		      // On Arrow keys
		      $(document).keyup(function(e) {
		        // Left or back arrows
		        if ((e.which === 37) ||  (e.which === 38)){
		          SliceSlider.prevSlide();
		        }
		        // Down or right
		        if ((e.which === 39) ||  (e.which === 40)) {
		          SliceSlider.nextSlide();
		        }
		      });
		    },
		    
		    /** 
		     * Interept scroll direction
		     */
		    handleScroll: function(e){

		      // Scrolling up
		      if (e.originalEvent.detail < 0 || e.originalEvent.wheelDelta > 0) { 

		        s.delta--;
		     
		        if ( Math.abs(s.delta) >= s.scrollThreshold) {
		          SliceSlider.prevSlide();
		        }
		      }
		 
		      // Scrolling Down
		      else {
		 
		        s.delta++;
		 
		        if (s.delta >= s.scrollThreshold) {
		          SliceSlider.nextSlide();
		        }
		      }
		 
		      // Prevent page from scrolling
		      return false;
		    },

		    /**
		     * Show Slide
		     */
		    showSlide: function(){ 
		      // reset
		      s.delta = 0;
		      // Bail if we're already sliding
		      if ($('body').hasClass('is-sliding')){
		        return;
		      }
		      // Loop through our slides
		      s.slides.each(function(i, slide) {

		        // Toggle the is-active class to show slide
		        $(slide).toggleClass('is-active', (i === s.currentSlideIndex)); 
		        $(slide).toggleClass('is-prev', (i === s.currentSlideIndex - 1)); 
		        $(slide).toggleClass('is-next', (i === s.currentSlideIndex + 1)); 
		        
		        // Add and remove is-sliding class
		        $('body').addClass('is-sliding');

		        setTimeout(function(){
		            $('body').removeClass('is-sliding');
		        }, 1000);
		      });
		    },

		    /**
		     * Previous Slide
		     */
		    prevSlide: function(){
		      
		      // If on first slide, loop to last
		      if (s.currentSlideIndex <= 0) {
		        s.currentSlideIndex = s.numSlides;
		      }
		      s.currentSlideIndex--;
		      
		      SliceSlider.showSlide();
		    },

		    /**
		     * Next Slide
		     */
		    nextSlide: function(){
		      
		      s.currentSlideIndex++;
		   
		      // If on last slide, loop to first
		      if (s.currentSlideIndex >= s.numSlides) { 
		        s.currentSlideIndex = 0;
		      }
		 
		      SliceSlider.showSlide();
		    },
		  };
		  SliceSlider.init();
		})(jQuery);
	
	</script>


</body>
</html>
