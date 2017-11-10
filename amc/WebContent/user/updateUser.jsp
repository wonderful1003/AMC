<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>

<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="ko">
	
<head>
   <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>회원 정보수정</title>
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
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'>
    
    <!-- Stylesheets -->
    <!-- jQuery UI --> 
        <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="stylesheet">

        <!-- Mobile menu -->
        <link href="/css/gozha-nav.css" rel="stylesheet" />
        <!-- Select -->
        <link href="/css/external/jquery.selectbox.css" rel="stylesheet" />
        <!-- Swiper slider -->
        <link href="/css/external/idangerous.swiper.css" rel="stylesheet" />
    
        <!-- Custom -->
        <!-- <link href="/css/style.css?v=1" rel="stylesheet" /> -->

        <!-- Modernizr --> 
        <!-- <script src="/js/external/modernizr.custom.js"></script> -->
    
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
   
        <!--   Sweetalert2 CDN  -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.0/sweetalert2.all.min.js"></script>
   
        <!--   semantic UI  -->
        <link rel="stylesheet" type="text/css" href="../semantic/semantic.min.css">
        <script
        src="https://code.jquery.com/jquery-3.1.1.min.js"
        integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
        crossorigin="anonymous"></script>
        <script src="../semantic/semantic.min.js"></script>
</head>

<body>
	<div class="wrapper">
    	<!-- Banner -->
        <div class="banner-top">
            <img alt='top banner' src="../images/banners/space.jpg">
        </div> 
        <header class="header-wrapper header-wrapper--home">
			<jsp:include page="/layout/topToolbar.jsp" />
   		</header>
		<!--  화면구성 div Start /////////////////////////////////////-->
		<div class="container" id="body">
			<div class="page-header text-center">
	       		<h2 class="text-info">회원정보수정</h2>
		       	<h5 class="text-muted">내 정보를 <strong class="text-danger">최신정보로 관리</strong>해 주세요.</h5>
		    </div><br/><br/>
			<form id="form" class="form row" method='post' novalidate="">
		  		<div class="row">
			    	<label for="userId" class="col-sm-offset-1 col-sm-3 control-label"><strong>아 이 디</strong></label>
				    	<div class="col-sm-3" style="display:inline">
				      		<input type="text" class="form__name" id="userId" name="userId" value="${user.userId }" readonly> 
				    	</div>
				    	<div class="col-sm-3">
				    		<span id="helpBlock" class="help-block">
			      					<strong class="text-danger">아이디는 수정불가</strong>
			     				</span>
				    	</div>
		  		</div><br/>
		  		
		  		
		  		
		  		<c:if test='${user.password != null}'>
			  		<div class="row">
			    		<label for="password" class="col-sm-offset-1 col-sm-3 control-label"><strong>비밀번호</strong></label>
			    		<div class="col-sm-3">
			      			<input type="password" class="form__name" id="password" name="password" placeholder="변경비밀번호">
			    		</div>
			  		</div><br/>
			  		<div class="row">
			    		<label for="password2" class="col-sm-offset-1 col-sm-3 control-label"><strong>비밀번호 확인</strong></label>
			    		<div class="col-sm-3">
			      			<input type="password" class="form__name" id="password2" name="password2" placeholder="변경비밀번호 확인">
			    		</div>
			     			<span id="helpBlock2" class="help-block2 col-sm-2"></span>
			  		</div><br/>
		  		</c:if>
		  		
		  		
		  		<div class="row">
		    		<label for="userName" class="col-sm-offset-1 col-sm-3 control-label"><strong>이름</strong></label>		
		    		<div class="col-sm-3">
		      			<input type="text" class="form__name" id="userName" name="userName" value="${user.userName}" placeholder="변경회원이름">
		    		</div>
		  		</div><br/>
		  		<div class="row">
		    		<label for="addr" class="col-sm-offset-1 col-sm-3 control-label"><strong>주소</strong></label>
		    		<div class="col-sm-3">
		      			<input type="text" class="form__name" id="addr" name="addr"  value="${user.addr}" placeholder="변경주소">
		    		</div>
		  		</div><br/>
	  	  		<div class="row">
		    		<label for="addr" class="col-sm-offset-1 col-sm-3 control-label"><strong>상세주소</strong></label>
		    		<div class="col-sm-3">
		      			<input type="text" class="form__name" id="addr" name="addr"  value="${user.addrDetail}" placeholder="변경주소">
		    		</div>
		  		</div><br/>
		  		<div class="row">
		    		<label for="addr" class="col-sm-offset-1 col-sm-3 control-label"><strong>가입일</strong></label>
		    		<div class="col-sm-3">
		      			<input type="text" class="form__name" id="userRegDate" name="userRegDate"  value="${user.userRegDate}" readonly>
		    		</div>
		  		</div><br/>
		  		<div class="row">
		    		<label for="phone" class="col-sm-offset-1 col-sm-3 control-label"><strong>휴대전화번호</strong></label>
		     		<div class="col-sm-2">
				      	<select class="search-sort" name="phone1" id="phone1">
						  	<option value="010" ${ ! empty user.phone1 && user.phone1 == "010" ? "selected" : ""  } >010</option>
							<option value="011" ${ ! empty user.phone1 && user.phone1 == "011" ? "selected" : ""  } >011</option>
							<option value="016" ${ ! empty user.phone1 && user.phone1 == "016" ? "selected" : ""  } >016</option>
							<option value="018" ${ ! empty user.phone1 && user.phone1 == "018" ? "selected" : ""  } >018</option>
							<option value="019" ${ ! empty user.phone1 && user.phone1 == "019" ? "selected" : ""  } >019</option>
						</select>
		    		</div>
		    		<div class="col-sm-2">
		      			<input type="text" class="form__name" id="phone2" name="phone2" value="${ ! empty user.phone2 ? user.phone2 : ''}"  placeholder="변경번호">
		    		</div>
		    		<div class="col-sm-2">
		      			<input type="text" class="form__name" id="phone3" name="phone3" value="${ ! empty user.phone3 ? user.phone3 : ''}"   placeholder="변경번호">
		    		</div>
	  			</div><br/><br/><br/>
			  	<div class="form-group">
			    	<div class="col-sm-offset-4  col-sm-4 text-center">
			      		<button type="button" class="btn btn-md btn--info" id="update">수 &nbsp;정</button>
				  		<button type="button" class="btn btn-md btn--info" id="back" role="button">취 &nbsp;소</button>
			    	</div>
			  	</div>
			</form>
 		</div>
	</div>
		<jsp:include page="/layout/bottomToolbar.jsp" />
		<jsp:include page="/layout/loginModal.jsp" />
			
   <!-- JavaScript-->
        <!-- jQuery 3.1.1--> 
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
        <script>window.jQuery || document.write('<script src="/js/external/jquery-3.1.1.min.js"><\/script>')</script>
        <!-- Migrate --> 
        <script src="/js/external/jquery-migrate-1.2.1.min.js"></script>
        <!-- jQuery UI -->
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <!-- Bootstrap 3--> 
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/js/bootstrap.min.js"></script>

        <!-- Mobile menu -->
        <script src="/js/jquery.mobile.menu.js"></script>
         <!-- Select -->
        <script src="/js/external/jquery.selectbox-0.2.min.js"></script>
        <!-- Swiper slider -->
        <script src="/js/external/idangerous.swiper.min.js"></script>

        <!-- Form element -->
        <script src="/js/external/form-element.js"></script>
        <!-- Form validation -->
        <script src="/js/form.js"></script>

        <!-- Custom -->
        <script src="/js/custom.js"></script>
	 	
</body>
	<script type="text/javascript">
	
		//============= "수정"  Event 연결 =============
		 $(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$( "#update" ).on("click" , function() {
				fncUpdateUser();
			});
		});	
		
		
		//============= "취소"  Event 처리 및  연결 =============
		$(function() {
			//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			$("#back").on("click" , function() {
				alert("수정을 취소하시겠습니까?");
				  history.back();
			});
		});	
		
		//=============이메일" 유효성Check  Event 처리 =============
		 $(function() {
			 
			 $("input[name='email']").on("change" , function() {
					
				 var email=$("input[name='email']").val();
			    
				 if(email != "" && (email.indexOf('@') < 1 || email.indexOf('.') == -1) ){
			    	alert("이메일 형식이 아닙니다.");
			     }
			});
			 
		});	
	
		$(function(){
			$('#password2').bind('keyup',function(){
				if( $('#password').val() != $(this).val()){
					$('span.help-block2').text("비밀번호가 다릅니다.").css('color','red');
				}else{
					$('span.help-block2').text("확인").css('color','blue');
				}
			});
		});
		
		///////////////////////////////////////////////////////////////////////
		function fncUpdateUser() {
			var name=$("input[name='userName']").val();
			var pw=$("input[name='password']").val();
			var pw_confirm=$("input[name='password2']").val();
			
			if(name == null || name.length <1){
				alert("이름은  반드시 입력하셔야 합니다.");
				return;
			}
			if(pw == null || pw.length <1){
				alert("패스워드는  반드시 입력하셔야 합니다.");
				/* return check=false; */
				return; 
			}
			if(pw_confirm == null || pw_confirm.length <1){
				alert("패스워드 확인은  반드시 입력하셔야 합니다.");
				/* return check=false; */
				return;
			}
				
			var value = "";	
			if( $("input[name='phone2']").val() != ""  &&  $("input[name='phone3']").val() != "") {
				var value = $("option:selected").val() + "-" 
									+ $("input[name='phone2']").val() + "-" 
									+ $("input[name='phone3']").val();
			}
			
			//Debug...
			//alert("phone : "+value);
			$("input:hidden[name='phone']").val( value );
				
			$("#form").attr("method" , "POST").attr("action" , "/user/updateUser").submit();
		}
	
	</script>
<style type="text/css">
 	#body{	 	
 	
 	/* background-color: #EDEDED; */
      	background-color: #e0e0e0;
      	margin-top:100px;
      	margin-bottom:5px;
      	padding-top: -50px;
 	    /* padding-top: 10px;
	    padding-bottom: 10px; */
	    /*padding-left: 20px;
	    padding-right: 20px; */
	    /* margin-left: 1px;
	    margin-right: 1px; */
	    padding-bottom: 10px;
	    border-radius: 15px;
	    border-color:#000000;
	    border-width: 30px;
 	    box-shadow:inset 0 0 10px #a0a0a0; 

 	}
 	html{
	        height: auto;
	  	}
	.btn {
	  display: inline-block;
	  margin-bottom: 0;
	  font-weight: normal;
	  text-align: center;
	  vertical-align: middle;
	  touch-action: manipulation;
	  cursor: pointer;
	  background-image: none;
	  border: 1px solid transparent;
	  white-space: nowrap;
	  padding: 6px 12px;
	  font-size: 14px;
	  line-height: 1.42857143;
	  border-radius: 4px;
	  -webkit-user-select: none;
	  -moz-user-select: none;
	  -ms-user-select: none;
	  user-select: none;
	}	
	.btn-info {
	  color: #ffffff;
	  background-color: #1B516E;
	  border-color: #3A199C;
	}
		  	
	.form .form__name {
	  margin-bottom: 10px;
	  width: 100%;
	  border: none;
	  box-shadow: none;
	  border: 1px solid #dbdee1;
	  -webkit-border-radius: 3px;
	  -moz-border-radius: 3px;
	  border-radius: 3px;
	  font-size: 13px;
	  color: #000000;
	  padding: 9px 18px 10px !important;
	  position: relative;
	}
	
	input, select {
	margin-bottom: 10px;
	height: 100%;
	width: 100%;
	border: none;
	box-shadow: none;
	border: 1px solid #dbdee1;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	font-size: 13px;
	color: #000000;
	padding: 9px 18px 10px !important;
	}

</style>
</html>