<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Home</title>
<link href="<c:url value="/resources/css/layout/footer.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/reset.css"/>"
	rel="stylesheet">
<link href="<c:url value="/resources/css/layout/main.css"/>"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a076d05399.js">	
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<!-------------------------------header----------------------------->
	<c:import url="./layout/nav2.jsp"></c:import>
	<!-------------------------------Main----------------------------->

	<div class="body">
		<a href="#" class="top"> </a>
		<div class="main_body">
			<div id="main_body_image">

				<div class="body_inner">
					<div class="main_font">
						<!-- <span>파리</span>
						<span>크레파스</span> -->
						<div>파리 크레파스</div>
					</div>

					<div class="main_font2">
						<span>Paris</span> <span>Crayon</span>
					</div>
				</div>
				<!-- body_inner 끝 -->
			</div>
			<!-- main_body_image끝 -->
			<div class="body_box">
				<div class="tour_main">
					<div class="tour_main_txt">
						파리크레파스 <strong>투어 상품</strong>
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
									<figure class="slide__figure">
										<div class="slide__img">
											<a href="#"><img class="test" alt=""
												src="./resources/images/mainHome/T4.jpg"
												style="width: 900px; height: 540px;"></a>
										</div>
									</figure>
									<header class="slide__header">
										<h2 class="slide__title">
											<span class="title-line"><span>Paris</span></span> <span
												class="title-line"><span>Walking tour</span></span>
										</h2>
									</header>
								</div>
							</section>

							<section class="slide">
								<div class="slide__content">
									<figure class="slide__figure">
										<div class="slide__img">
											<a href="#"><img alt=""
												src="./resources/images/mainHome/T6.jpg"
												style="width: 900px; height: 540px;"></a>
										</div>
									</figure>
									<header class="slide__header">
										<h2 class="slide__title">
											<span class="title-line"><span>Belgium</span></span> <span
												class="title-line"><span>Tour</span></span>
										</h2>
									</header>
								</div>
							</section>

							<section class="slide">
								<div class="slide__content">
									<figure class="slide__figure">
										<div class="slide__img">
											<a href="#"><img alt=""
												src="./resources/images/mainHome/T7.jpg"
												style="width: 900px; height: 540px;"></a>
										</div>
									</figure>
									<header class="slide__header">
										<h2 class="slide__title">
											<span class="title-line"><span>Rivoli, Paris</span></span> <span
												class="title-line"><span>museum Tour</span></span>
										</h2>
									</header>
								</div>
							</section>

							<section class="slide">
								<div class="slide__content">
									<figure class="slide__figure">
										<div class="slide__img">
											<img alt="" src="./resources/images/mainHome/T8.jpg"
												style="width: 900px; height: 540px;">
										</div>
									</figure>
									<header class="slide__header">
										<h2 class="slide__title">
											<span class="title-line"><span>Versailles</span></span> <span
												class="title-line"><span>Giverny & Gogh</span></span> <span
												class="title-line"><span>Tour</span></span>
										</h2>
									</header>
								</div>
							</section>
						</section>
					</div>
					<!-- tour_main_img끝 -->
				</div>
				<!--tour_main 끝 -->
				<div class="main_review">
					<div class="main_rebox_1">
						<div class="main_rebox_23">
							<div class="main_rebox_2">
								<p>파리크레파스</p>
								<h3>
									<strong>베스트 리얼후기</strong>
								</h3>
							</div>
							<!-- rebox2 끝 -->
							<div class="main_rebox_3">
								<button class="re_prev_btn"></button>
								<button class="re_next_btn"></button>
								<!-- <img alt="" src="./resources/images/mainHome/left_btn.jpg">
									<img alt="" src="./resources/images/mainHome/right_btn.jpg"> -->
							</div>
							<!-- rebox3 끝 -->
						</div>
						<div class="main_rebox_4">
							<div class="main_rebox_4_2">

								<!-- <div class="main_re">
										<div class="img_circle">
										</div>
										<div class="re_txtbox">
											<div class="re_txtbox_title">
												<div class="re_txtbox_title">
												</div>
											</div>
										</div>
									</div>
							
									<div class="main_re">
										<div class="img_circle">
										</div>
										<div class="re_txtbox">
										</div>
									</div>
									
									<div class="main_re">
										<div class="img_circle">
										</div>
										<div class="re_txtbox">
										</div>
									</div>  -->


							</div>
							<!-- rebox_4_2 -->
						</div>
						<!-- 리뷰 들어갈 rebox_4 -->
					</div>
					<!-- rebox_끝 -->
				</div>
				<!-- review끝 -->
				<div class="ytb">
					<div class="ytb_box">
						<div class="ytb_box2"></div>
						<!-- ytb_box2끝 -->

						<div class='ytb_realbox_1'>
							<iframe src='https://www.youtube.com/embed/Tj2W0o3h3OI'
								frameborder='0' allowfullscreen></iframe>
						</div>
						<!-- 유투부 들어가는 상자 -->
						<div class="ytb_txt">
							<div class="ytb_txt_1">
								<div class="txt_font">
									<strong>인스타그램 라이브</strong> <br> <br> <br> <br>
									<p>파리 크레파스(paris crapas) 인스타그램을 팔로우 하</p>
									<p>시면 에트르타, 옹플뢰르, 몽생미셸의 생생한 현장을</p>
									<p>라이브 방송으로 보실 수 있습니다. 여행에 관해 궁금</p>
									<p>한 점이 있으시거나 현장이 어떤지 궁금하신 점들을</p>
									<p>현장에 있는 가이드를 통해 보실 수 있는 기회! 놓치지</p>
									<p>마세요 (정확한 방송 시간대는 인스타그램을통해 안내</p>
									<p>해 드리고있습니다)</p>
								</div>
								<br>
								<div class="txt_insta" id="insta"></div>
							</div>
						</div>

					</div>
					<!-- ytb_box끝 -->
				</div>
				<!-- ytb 유튭 큰박스 끝 -->

				<div class="blue_txt">
					<div class="blur_real_txt">
						<div class="b_t_1">
							<strong>파리크레파스</strong>
						</div>
						<div class="b_t_2">
							프랑스 여행의 관련된 모든 서비스를 한 곳에서 해결할 수 있는 파리크레파스 여행사입니다. <br>합리적인
							비용으로 여러분께 최상의 서비스와 감동을 드리겠습니다. <br> <br>10년이상 베테랑 가이드들의
							전문적인 노하우와 재미를 담아 여러분께 최고의 만족을 제공할 것을 약속합니다. <br>파리크레파스는 한국과
							프랑스 양국 사업자를 모두 가지고 있는 합법 여행사입니다. <br> <br> <strong>프랑스
								여행의 시작, 파리크레파스 여행사가 함께합니다.</strong>
						</div>

					</div>
				</div>
				<!-- blue_txt끝 -->

				<!-- --------footer -->
				<div class="footer">
					<div class="footer_box">
						<br> <br> <br>상호 : 파리크레파스 | 대표 : 김은경ㅣ<a href="#">[사업자
							정보보기]</a> <br>한국 주소 : 인천광역시 부평구 부일로19번길 8,1층 TEL : 070-4645-8279
						| E-MAIL : PARISCRAYON@NAVER.COM <br>한국 사업자 등록 번호 :
						122-14-72077 ㅣ통신 판매업 등록번호 : 제 2014 인천부평 - 00850 호 ㅣ 한국 관광 등록 번호 :
						제2015-000003호 <br> <br>한국 인 허가 보증보험번호 : 제 100-000-2016
						0161 1483 호 <br> <br>프랑스 주소 : 9 RUE ANDRE PINGAT 51100
						REIMS ㅣ프랑스 라인센스 번호 2015/21/0000464 | 프랑스 허가 번호 JEV 11 15 02414 <br>프랑스
						사업자 번호 : SIRET:805 399 433 R.C.S REIMS <br> <br>COPYRIGHT(C)2008
						PARIS CRAYON. ALL RIGHT RESERVED. CREATED BY PARISCRAYON. <br>
						<br> <input type=button id="view1" value="이용약관">ㅣ<input
							type=button id="view2" value="개인정보 보호방침">


					</div>

				</div>
				<!-- footer끝 -->


			</div>
			<!-- body_box끝 -->


		</div>
		<!-- main_body끝 -->




	</div>

	<!-- footer script -->
	<script type="text/javascript">
	
	$("#kakaplus").click(function(){
		open("http://pf.kakao.com/_vVuQT","_blank","resizable=yes,width=550,height=900px")
	});

	
	$("#insta").click(function(){
		open("https://www.instagram.com/pariscrapas/","_blank","resizable=yes,width=550,height=900px")
	});

	$("#view1").click(function(){
		open("http://www.pariscrayon.com/html/row.html","_blank","resizable=yes,width=550,height=900px")
	});

	$("#view2").click(function(){
		open("http://www.pariscrayon.com/html/privacy.html","_blank","resizable=yes,width=550,height=900px")
	});
	</script>

	<!-- slider script -->
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


	<script type="text/javascript">

	 $(document).ready(function() {
		
		$.ajax({
			type:"Get",
			url:"./review/reviewBest",
			error: function() {
				alert("통신실패")
			},
			success : function(data) {
				$(".main_rebox_4_2").html(data);
				/* alert("데이터 전송 성공"+data); */
			}
		});
	});


</script>

<script type="text/javascript">

$(function() {
    $(".re_prev_btn").on("click", function() {
        $(".main_rebox_4_2").animate(        // id가 "divBox"인 요소를
            {
                left: "+=100",        // 오른쪽으로 100픽셀 이동하고,
                opacity: 0.2        // 투명도를 0.2로 변경함.
            }, 500, function() {    // 0.5초에 걸쳐서 이펙트 효과가 진행됨.
                $(".re_txtbox").html("");
            }
        );
    });
});  



</script>





</body>
</html>
