<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!doctype html>
<html>
<head>
	<!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>AMovie</title>
        <meta name="description" content="A Template by Gozha.net">
        <meta name="keywords" content="HTML, CSS, JavaScript">
        <meta name="author" content="Gozha.net">
    
    <!-- Mobile Specific Metas-->
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="telephone=no" name="format-detection">
    
    <!-- Fonts -->
        <!-- Font awesome - icon font -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- Roboto -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,700' rel='stylesheet' type='text/css'>
        <!-- Open Sans -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:800italic' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->

        <!-- Mobile menu -->
        <link href="/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="/css/external/jquery.selectbox.css" rel="stylesheet" />

        <!-- Slider Revolution CSS Files -->
        <link rel="stylesheet" type="text/css" href="/revolution/css/settings.css">
        <link rel="stylesheet" type="text/css" href="/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="/revolution/css/navigation.css">
    
        <!-- Custom -->
        <link href="/css/style.css?v=1" rel="stylesheet" />


        <!-- Modernizr --> 
         <script src="/js/external/modernizr.custom.js"></script> 
        
        <!-- JavaScript-->
		<!-- jQuery 3.1.1 --> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/external/jquery-3.1.1.min.js"><\/script>')</script>
        <!-- Migrate  -->
        <script src="/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- Bootstrap 3 --> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Slider Revolution core JavaScript files -->
        <script type="text/javascript" src="/revolution/js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="/revolution/js/jquery.themepunch.revolution.min.js"></script>

        <!-- Slider Revolution extension scripts. --> 
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.actions.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.migration.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
        <script type="text/javascript" src="/revolution/js/extensions/revolution.extension.video.min.js"></script>

        <!-- Mobile menu -->
        <script src="/js/jquery.mobile.menu.js"></script>
        <!-- Select -->
        <script src="/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Stars rate -->
        <script src="/js/external/jquery.raty.js"></script>
        
        <!-- Form element -->
        <script src="/js/external/form-element.js"></script>
        <!-- Form validation -->
        <!-- <script src="/js/form.js"></script> -->
   		<!--이거주석처리안하면 로그인 안됨 -->

        <!-- Twitter feed -->
        <!-- <script src="/js/external/twitterfeed.js"></script> -->
	   
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
</head>

  <!--       <script type="text/javascript">
        <!-- <script src="/js/custom.js"></script> -->
		
         <script type="text/javascript">
             $(document).ready(function() {
               init_Home();
             });
	    </script>  

		<script type="text/javascript">
    	//============= "로그인"  Event 연결 =============
		$( function() {
			$(".userManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/user/getUserList");
				}
			})
			
			$(".storeManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/product/getGoodsList?menu=manage&searchKeyword=G");
				}
				
			})
			
			$(".purchaseManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/purchase/getSaleList?searchKeyword=saleList");
				}
			})
			
			$(".movieManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/movie/getMovieList?menu=manage");
				}
			})
			
			$(".screenManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/screen/getScreenList");
				}
			})
			$(".bookingManage").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/booking/getAdminBookingList");
				}
			})
			
			$(".myInfo").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/user/getUser?=${sessionScope.user}");
				}
			})
			
			$(".myBooking").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/booking/getBookingList?searchCondition=now");
				}
			})
			
			$(".myWish").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/movie/getWishList");
				}
			})
			
			$(".myCancel").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/alarm/getCancelAlarmList?alarmFlag=C");
				}
			})
			
			$(".myOpen").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/alarm/getOpenAlarmList?alarmFlag=O");
				}
			})
			
			$(".myPurchase").on("click",function(){
				if( '${sessionScope.user.userId}' == ''){
					alert("로그인을 다시 해주세요");
				    $('.overlay').removeClass('close').addClass('open');
				}else{
					location.replace("/purchase/getPurchaseList");
				}
			})
			
		    $('.overlay-close').click(function (e) {
		        e.preventDefault;
		        $('.overlay').removeClass('open').addClass('close');
		
		        setTimeout(function(){
		            $('.overlay').removeClass('close');}, 500);
		    });
			
			$("#userId").focus();
			
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#login").on("click" , function() {
				var id=$("#userId").val();
				var pw=$("input:password").val();
				
				if(id == null || id.length <1) {
					alert('ID 를 입력하지 않으셨습니다.');
					$("#userId").focus();
					return;
				}
				
				if(pw == null || pw.length <1) {
					alert('패스워드를 입력하지 않으셨습니다.');
					$("#password").focus();
					return;
				}
				
				$.ajax( 
						{	
							url : "/user/json/loginUser",
							method : "POST" ,
							async : false,
							headers : {
								"Accept" : "application/json",
								"Content-Type" : "application/json"
							},
							data : JSON.stringify({
								userId : id,
								password : pw
							}),
							success : function(JSONData , status) {

								//Debug...
								//alert(status);
								//alert("JSONData : \n"+JSONData);
								//alert( "JSON.stringify(JSONData) : \n"+JSON.stringify(JSONData) );
								//alert("JSONData : "+ JSONData );
								//alert("status : "+ status );
									//alert(JSONData.role);
									console.log(JSONData.userId);
									
									if( JSONData.role == 'not' ){
										alert("탈퇴한회원입니다.");
									}else if( JSONData !='' ){
									//$(window.parent.document.location).attr("href","/index.jsp");
									/* $(self.location).attr("href","/index.jsp"); */ 
									window.parent.document.location.reload();
									
									}else{
										alert("아이디 , 패스워드를 확인하시고 다시 로그인 해주세요.");
									}
								},
							error:function(request,status,error){
								//alert(error);
								//alert("아이디 , 패스워드를 확인하시고 다시 로그인2...");
						    }
					}); 
				
			});
		});	
    	</script>



</head>
	

<div class="navbar  navbar-inverse navbar-fixed-top">
<!-- Header section -->
         <div class="container">
             <!-- Logo link-->
             <a href='/cinema/index' class="logo">
                 <!-- <img alt='logo' src="/images/logo.png"> -->
                 <img src="/images/AMC_Logo.png">
             </a>
             
             <!-- Main website navigation-->
             <nav id="navigation-box">
                 <!-- Toggle for mobile menu mode -->
                 <a href="#" id="navigation-toggle">
                     <span class="menu-icon">
                         <span class="icon-toggle" role="button" aria-label="Toggle Navigation">
                           <span class="lines"></span>
                         </span>
                     </span>
                 </a>
                 
                 <!-- Link navigation -->
                 <ul id="navigation">
                     <li>
                         <span class="sub-nav-toggle plus"></span>
                         <a href="#">영화</a>
                         <ul>
                             <li class="menu__nav-item"><a href="/movie/getMovieList?menu=movie">현재 상영 영화</a></li>
                             <li class="menu__nav-item"><a href="/movie/getMovieList?menu=commingsoon">상영 예정 영화</a></li>
                             <li class="divider"></li>
                             <li class="menu__nav-item"><a href="/movie/getMovieList?menu=preview">시사회</a></li>

                         </ul>
                     </li>
                     <li>
                         <span class="sub-nav-toggle plus"></span>
                         <a href="#">예매</a>
                         <ul>
                             <li class="menu__nav-item"><a href="/booking/getScreenMovieList">영화 예매</a></li>
                             <li class="menu__nav-item"><a href="/booking/getPreviewList">시사회 예매</a></li>
                         </ul>
                     </li>
                     <li>
                         <span class="sub-nav-toggle plus"></span>
                         <a href="/cinema/theaterInfo.jsp">영화관</a>
                     </li>
                     <li>
                         <span class="sub-nav-toggle plus"></span>
                         <a href="/community/getFreeBoardList">커뮤니티</a>
                     </li>
                     <li>
                         <span class="sub-nav-toggle plus"></span>
                         <a href="#">스토어</a>
                         <ul>
                             <li class="menu__nav-item"><a href="/product/getGoodsList?menu=search&searchKeyword=G">굿즈</a></li>
                             <li class="menu__nav-item"><a href="/product/getSnackList?menu=search&searchKeyword=S">스낵바</a></li>
                         </ul>
                     </li>
                     <c:if test="${!empty sessionScope.user}">
						<c:if test="${sessionScope.user.role eq 'admin'}">
	                     <li>
	                         <span class="sub-nav-toggle plus"></span>
	                         <a href="#">[관리자 메뉴]</a>
							<ul class="mega-menu__list">
	                                 <li class="mega-menu__nav-item userManage"><a href="#">회원 관리</a></li>
	                                 <li class="mega-menu__nav-item storeManage"><a href="#">상품 관리</a></li>
	                                 <li class="mega-menu__nav-item purchaseManage"><a href="#">판매 관리</a></li>
	                                 <li class="mega-menu__nav-item movieManage"><a href="#">영화 관리</a></li>
	                                 <li class="mega-menu__nav-item screenManage"><a href="#">상영 관리</a></li>
	                                 <li class="mega-menu__nav-item bookingManage"><a href="#">예매 관리</a></li>
	                             </ul>
	                     </li>
	                     </c:if>
                     </c:if>
                 </ul>
             </nav>
             
             <!-- Additional header buttons / Auth and direct link to booking-->
             
             <div class="control-panel">
             	<c:if test="${!empty sessionScope.user}">
                 <div class="auth auth--home">
                   <div class="auth__show">
                   </div>
                   <a href="#" class="btn btn--sign btn--singin">
                       	MyPage
                   </a>
                     <ul class="auth__function">
                         <li class="myInfo"><a href="#" class="auth__function-item">내 정보 보기</a></li>
                         <li class="myBooking"><a href="#" class="auth__function-item">예매 목록</a></li>
                         <li class="myWish"><a href="#" class="auth__function-item">위시리스트</a></li>
                         <li class="myCancel"><a href="#" class="auth__function-item">취소표 알리미</a></li>
                         <li class="myOpen"><a href="#" class="auth__function-item">티켓오픈시간 알리미</a></li>
                         <li class="myPurchase"><a href="#" class="auth__function-item">스토어 구매 목록</a></li>
                     </ul>
                 </div>
                 </c:if>
                 <!-- <a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">Book a ticket</a> -->
        	<!-- 유저가 비로그인 상태일 시 -->	
 			<c:if test="${empty sessionScope.user}">		
					<!-- <form class="navbar-form navbar-right"> -->
					<form class="navbar-form navbar-right">						
						<a href="#" class="btn btn-md btn--warning btn--book btn-control--home login-window">Book a ticket</a> 
					</form>
			</c:if>	
			
			<c:if test="${!empty sessionScope.user}">
				<ul class="nav navbar-nav navbar-right">
					<a href="#" class="user-info">[${sessionScope.user.userName}] 님</a>&emsp;
					<a href="/user/logoutUser">로그아웃</a>
				</ul>
			</c:if> 
        	
        	</div>
        	
         	
	 </div>
</div>
<style>

ul#navigation {
	margin : auto;
	width : 50%;
	padding : 0 0 0 100px;
	float: none;
	/* min-width:200px; */
}
.auth--home {
  position: relative;
  top: -10px;
  right: 155px;
}


</style>
</html>

