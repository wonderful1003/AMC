<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html>

<head>
   
</head>

<body>
    
   <div class="wrapper">
        <!-- Banner -->
         <div class="banner-top">
            <img alt='top banner' src="../images/banners/space.jpg">
        </div> 
          <header class="header-wrapper header-wrapper--home">
			<!-- ToolBar Start /////////////////////////////////////-->
			<jsp:include page="/layout/topToolbar.jsp" />
			<!-- ToolBar End /////////////////////////////////////-->
		  </header>  
    <div class="container">
        
        <!-- Main content -->
        <!--  <section class="container"> -->
        
                <!-- Search bar -->
 			<div class="col-sm-12">
 			
                <h1 class="page-heading"> ���� �� ��ȭ </h1>                
				
			     <!--   <div class="col-md-2 text-right">           -->
                  
                   <%--  <form class="form-inline" name="detailForm">                 
				    <label class="sr-only" for="searchKeyword">�˻���</label>
				    <input type="text" class="form-control" id="searchKeyword" name="searchKeyword"  placeholder="�˻���"
				    			 value="${! empty search.searchKeyword ? search.searchKeyword : '' }"  >
				    		
				  	</form> --%>
			
       				
       					<div class="col-sm-4 text-right" style="border: 1px; width:350px;float:left">
				                <form id='search-form' method='get' class="search" > 
				                    <div class="together">
				                    <input type="text" class="search__field"  id="searchKeyword" name="searchKeyword" placeholder="�˻���">
					                   
					                    <button type='submit' class="btn btn-md btn--danger search__button" name="search">�˻�</button>
				                   		<br/></br>
				                   		 <i class='fa fa-microphone' id="voidSearchIcon" style="font-size:20px;color:#717170"  ></i>	
				                    <input type="hidden" id="currentPage" name="currentPage" value="0" />
				               		</div>
				                </form>
					
					  
						  </div>  
    
               <br/>
               <br/>
               <br/>
               <hr/>
               
               
               
       
               
                 <!--  <i class='fa fa-search' id="searchIcon" style="color:grey"></i>  &nbsp; 	
				  <i class='fa fa-microphone' id="voidSearchIcon" style="color:grey"></i>	 -->
             
				  <!-- PageNavigation ���� ������ ���� ������ �κ� -->
				  <input type="hidden" id="currentPage" name="currentPage" value=""/>
				  <!-- Login Common PlugIn -->
				  <jsp:include page="/layout/loginModal.jsp" />     
              
             
                <div class="cinema-wrap">
	            	<div class="row">
				 		<c:set var="i" value="0" />
                		 <c:forEach var="movie" items="${list }">
                		 <c:set var="i" value="${i+1 }" />
                		 
	                            <div class="col-xs-6 col-sm-3 cinema-item">
	                                <div class="cinema">
	                                    <a href='/movie/getMovie?movieNo=${movie.movieNo}&menu=movie' class="cinema__images">
	                                        <img id="poster"alt='' src="${movie.postUrl }" >                                        
	                                    </a>
	                                    <a href="/movie/getMovie?movieNo=${movie.movieNo}&menu=movie" class="movieNm">${movie.movieNm }</a>
	                                    <style>P{margin-top:0px;margin-bottom:0px;}</style>
	                                    <p ><strong>������ :${movie.openDt } </strong> </p>
	                                    
	                    	    <div style="text-align: left;">
    						    
    						    </div>								
    							 
    							 <input type='hidden' name='test${movie.movieNo }'  value='${movie.movieNo }'>
     						
							    <span style="line-height:0%">
							    <c:set var="name" value="${movie.wishList.wishNo}"/>
	 								<c:if test="${name eq '0'}">
								<%-- bootstrap icon�� �۵��� ���� ����      --%>
								<%-- <i class='glyphicon glyphicon-heart-empty' id="${movie.movieNo}" style="color:#FF5733;
										text-align : center; margin:0 auto;">   --%>	
								<i class='fa fa-heart-o' id="${movie.movieNo}" style="color:#FF5733;text-align : center; margin:0 auto;"> 	 
											<input type='hidden' id='scMovieNo' 	 value="${movie.movieNo}">	 
							    			<input type='hidden' id='userId'  	 	 value="${user.userId}">	
									     </i> 						
								    </c:if>	
								    
								    <c:if test="${name ne '0'}">
									    <i class='fa fa-heart' id="${movie.movieNo}" style="color:#FF5733; text-align : center; margin:0 auto;">
									    	<input type='hidden' id='scMovieNo' 	 value="${movie.movieNo}">	 
							    			<input type='hidden' id='userId'  	 	 value="${user.userId}">	 
									    </i> 						
									</c:if>	
							   </span>                                                   

	                             &nbsp;&nbsp;

	                            <span style="line-height:0%">
	                             
	                            <input type='hidden' name='screenMovieNo'  value='"+val.movieNo+"'>	                                                  
	                            <i class='fa fa-phone' id='reserve-ticket' style="color:#FB1D04; text-align : center; margin:0 auto;">���� </i>   
	                            </span>
	                         
	                           
	                                    	     
	                                </div>
	                            </div>                      
	                    		
                		 </c:forEach>
                		  
					</div>
	           </div>     
                              
 				
 					<div class="coloum-wrapper">
	                    <div class="pagination paginatioon--full">
	                    	<c:if test="${resultPage.currentPage != 1 }">
	                            <a href='#' class="pagination__prev">prev</a>
	                    	</c:if>
	                     	<c:if test="${resultPage.endUnitPage !=  resultPage.currentPage}">	            
	                            <a href='#' class="pagination__next">next</a>
	                      	</c:if>
	                    </div>
	                      
	                </div>
	               
              </div>
        
        
      
    </div>
    	 <div class="clearfix"></div>	
	
	</div>	
	
	   
        
	 
		<jsp:include page="/layout/bottomToolbar.jsp" />
		
		
        <!-- Custom �̰��־���� ��ũ�ѳ�����top��ư����!!!!!!!!!!! -->
       
		<!-- ------------------------------------  -->
		<script src="/js/custom.js"></script>
</body>
       
    
  <!--  ///////////////////////// JavaScript ////////////////////////// -->   
   
    <script type="text/javascript">
  //=============    �˻� / page �ΰ��� ��� ���  Event  ó�� =============	
				
	  			function fncGetPageList(currentPage) {
	  
	  				//alert("1111")
	  
					$("#currentPage").val(currentPage)
					$("form").attr("method","POST").attr("action", "/movie/getMovieList?menu=search").submit();
				
					
				}
			    
			     //============= "�˻�"  Event  ó�� =============	
				 $(function() {
					 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
					$( "button.btn.btn-default" ).on("click" , function() {
						fncGetPageList(1);
					});
					
				 });
				
				//============= "�˻� Icon"  Event  ó�� =============	
				 $(function() {
					 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
					$( ".btn.btn-md.btn--danger.search__button").on("click" , function() {
						
						//alert("searchbutton called")
						fncGetPageList(1);
					});
					
				 });
				
				
				//============= "Banner Top Clieck "  Event  ó�� =============	
				 $(function() {
					 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
					$( ".banner-top").on("click" , function() {
						
						alert("Banner Top Clieck ")
						self.location = "/index.jsp";
					});
					
				 });
				
				

			    
					//============= "���� �˻� Icon"  Event  ó�� =============	
				 $(function() {
					 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
					$( "#voidSearchIcon").on("click" , function() {
						self.location = "/movie/getMovieList?menu=voiceRegniiton";
					});
					
				 });
				
				
					//============= "WishList(��) Event ó��" DeleteWish Event  ó�� =============	
					$(function() {
						 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
						 
						  $(document).on("click", ".fa-heart-o", function () {

								
								//var movieNo = $(this).next().val();		
								//var movieNo = $($(this).find('glyphicon glyphicon-heart-empty')).val();					 
				
								var movieNo = $(this).find('#scMovieNo').val();		
								var userId = $(this).find('#userId').val();			
								
								alert("movieNo: " + movieNo); 					
								alert("userId: " + userId); 
								
						 	    $(this).removeClass('fa fa-heart-o').addClass('fa fa-heart');
							    
									
								
								if(userId == null || userId == ''){
									alert("�α��� �� �̿� �����մϴ�.");
									return;
								}
								
											
								$.ajax( 
										{
											url : "/movie/json/switchWishList?movie.movieNo="+movieNo+"&user.userId="+userId+"&wishFlag=movie",									
											type : "GET" ,							
										}).done(function(data) {
									//���� ����� ���
									if (data == 'add') {
										var msg = '���ϱ� ��û';
										alert(msg);
									} else {
										alert("���ϱ� ���");
									}
								});
							
						})
						 
						 $(document).on("click", ".fa-heart", function () {
								
								
							 //var movieNo = $(this).next().val();		
							 //var movieNo = $($(this).find('glyphicon glyphicon-heart-empty')).val();					 
			
							var movieNo = $(this).find('#scMovieNo').val();		
							var userId = $(this).find('#userId').val();			
							
							alert("movieNo: " + movieNo); 					
							alert("userId: " + userId); 
							
							
							$(this).removeClass('fa fa-heart').addClass('fa fa-heart-o');
						
							if(userId == null || userId == ''){
								alert("�α��� �� �̿� �����մϴ�.");
								return;
							}
							
										
							$.ajax( 
									{
										url : "/movie/json/switchWishList?movie.movieNo="+movieNo+"&user.userId="+userId+"&wishFlag=movie",									
										type : "GET" ,							
									}).done(function(data) {
								//���� ����� ���
								if (data == 'add') {
									var msg = '���ϱ� ��û';
									alert(msg);
								} else {
									alert("���ϱ� ���");
								}
							});
						})
				
				});
					
					 
				//============= "����  Event ó��"  Event  ó�� =============	
				$(function() {
					 //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
					$("span:contains('����')" ).on("click" , function() {
						 self.location = "/booking/getScreenMovieList";	
					});	
				});
					
			/*     $(function() {
			        //==> DOM Object GET 3���� ��� ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
			        $("button[name='search']").on("click", function() {
			        	alert("222")
			      
			            fncGetPageList(1);
			        });
	      
			    }); */

	            $(document).ready(function() {
	                init_CinemaList();
	                
	                //alert($('html').height() )
	                //alert(window.outerHeight)
	                if($('html').height() < window.outerHeight){
	                	$('html').css('height', '100%');
	                }
	                
	                $("#movie-search-sort").css("width","200px");
	            });
	            
		</script>
		
		<!--  ///////////////////////// CSS ////////////////////////// -->
<style type="text/css">

	 body {
           padding-top: 70px;
           }
           .thumbnail {
           width: 300px;
           height: 250px;
           overflow: auto;
     }	
     
     #searchIcon
      {     color: #fff;       		
   			text-shadow: 1px 1px 1px #ccc;
   			font-size: 1.5em;
      }
      
    #voidSearchIcon
      {     color: #fff;       		
   			text-shadow: 1px 1px 1px #ccc;
   			font-size: 1.5em;
      }
     

	.countPage {
 		 	font-size: 13px;
   		 	margin-top: 10px;
	}

	.search{
		 	margin-right : 30px;
	}


	.movieNm {
		  font-size: 16px;
		  font-weight: bold;
		  display: block;
		  margin-bottom: 5px;
		  margin-top: 5px;

	}
	
	#poster{
		height : calc(50vh - 100px);	
		width : auto;	
		height:260px; 
		margin-left: auto;
		margin-right: auto; 
		display: table;

	}
	
	.search .search__field {
	  display: inline-block;
	  width: 100%;
	  padding: 9px 200px 9px 19px;
	  margin-top: 14px;
	  line-height: 18px;
	  -webkit-border-radius: 3px;
	  -moz-border-radius: 3px;
	  border-radius: 3px;
	  border: solid 1px #dbdee1;
	  background-color: #fff;
	  color: #4c4145;
	  font-size: 13px;
 
	}
	
	
	.search .sbHolder .sbOptions {
	  width: 400px;
	  top: 37px !important;
	  border: none;
	  padding: 14px 7px;
	  z-index: 23;
	  background-color: #4c4145;
	  -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.16);
	  -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.16);
	  box-shadow: 0 0 10px rgba(0, 0, 0, 0.16);
	}

    html{
     height: auto;
    }
      
</style>	

</html>