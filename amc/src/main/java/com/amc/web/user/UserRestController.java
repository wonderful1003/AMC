package com.amc.web.user;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.web.HttpMediaTypeNotAcceptableException;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import com.amc.service.user.UserService;
import com.amc.service.SNSLogin.InstaService;
import com.amc.service.SNSLogin.KakaoService;
import com.amc.service.SNSLogin.NaverService;
import com.amc.service.domain.User;

//==> 회원관리 RestController
@RestController
@RequestMapping("/user/json/*")
public class UserRestController {
	
	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

/*	@RequestMapping( value="getUser/{userId}", method={RequestMethod.GET,RequestMethod.POST} )
	public User getUser( @PathVariable String userId ) throws Exception{
		
		System.out.println("/user/json/getUser : GET");
		
		//Business Logic
		return userService.getUser(userId);
	}*/
	@RequestMapping( value="getUser/{tempId}", method={RequestMethod.GET,RequestMethod.POST} )
	public User getUser( @PathVariable String tempId ) throws Exception{
		
		System.out.println("/user/json/getUser : GET");
		String userId = tempId.replace(",", ".");
		
		//Business Logic
		return userService.getUser(userId);
	}
	
	@RequestMapping( value="deleteCheck", method={RequestMethod.GET,RequestMethod.POST} )
	public String deleteCheck( @RequestBody User user, Model model,
										HttpSession session  ) throws Exception{
		System.out.println("/user/json/deleteCheck : POST");
		return userService.deleteCheck(user);
	}
	
	@RequestMapping( value="loginUser", method=RequestMethod.POST )
	public User loginUser(	@RequestBody User user, Model model,
									HttpSession session ) throws Exception{
	
		System.out.println("/user/json/login : POST");
		//Business Logic
		System.out.println("::"+user);
		User dbUser=userService.getUser(user.getUserId());
		
		System.out.println("*******************************************************");
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		/*System.out.println("dbUser.roll :" + dbUser.getRole());*/

		
		/*if(dbUser==null || dbUser.getRole() == "not"){*/
		if(dbUser==null || dbUser.getRole().equals("not")){
			System.out.println("널 값이다");
			System.out.println(dbUser);
			model.addAttribute("user", dbUser);
		      
			return dbUser;
		}else{
			if(user.getPassword().equals(dbUser.getPassword())){
				session.setAttribute("user", dbUser);
			}
		}
		
		System.out.println("dbUser : " + dbUser);
		
		return dbUser;
	}
	
/*	@RequestMapping( value="checkDuplication/{userId:.+}", method=RequestMethod.GET )*/
	@RequestMapping( value="checkDuplication/{tempId}", produces="application/json;charset=UTF-8", method=RequestMethod.GET )
	public boolean checkDuplication( @PathVariable String tempId ) throws Exception{
		System.out.println("중복확인 체크"+tempId);
		String userId = tempId.replace(",", ".");
		return userService.checkDuplication(userId);
	}
		
	@RequestMapping( value="getId", method=RequestMethod.POST)
	public String getId(  @RequestBody User user,
							 HttpSession session) throws Exception {

	  System.out.println(user);
	  
	  /*userService.getId(user);*/
	  
      /*return "forward:/user/main.jsp";*/
	  System.out.println("여기는 controller : "+userService.getId(user));
	  
	  return userService.getId(user);
   }
	
	@RequestMapping( value="kakaoLogin", method=RequestMethod.POST )
	public User kakaoJsLogin(	@RequestBody User user,
									HttpSession session ) throws Exception{
		System.out.println("/user/json/kakaoLogin : POST");
		System.out.println("::"+user);
		User dbUser=userService.getUser(user.getUserId());
		
		if(dbUser==null){
			System.out.println("널 값이다");
		}else{
				session.setAttribute("user", dbUser);
		}
		System.out.println("dbUser : " + dbUser);
		return dbUser;
	}

	@RequestMapping(value="/androidGetUser")
	public String androidGetUser(@RequestParam("email")String userId, 
									@RequestParam("password")String password) throws Exception{
		
		String jsonString = "";
		
		System.out.println("안드로이드 : userId : "+userId+" password :"+password);
		
		User dbUser=userService.getUser(userId);
		
		if(dbUser==null){
			return jsonString;
		}else{
			if(dbUser.getPassword().equals(password)){
				System.out.println("안드로이드 유저 id,pw 맞음");
			}else{
				return jsonString;
			}
		}
		System.out.println("dbUser : " + dbUser);
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		return objectMapper.writeValueAsString(dbUser);

	}
	
	@RequestMapping(value="/addUuid")
	public String addUuid(@RequestParam("token")String token, 
									@RequestParam("userId")String userId) throws Exception{
				
		System.out.println("안드로이드에서 온 토큰 token : "+token+" userId :"+userId);
		
		return userService.addUuid(token, userId);
	}
	
}
