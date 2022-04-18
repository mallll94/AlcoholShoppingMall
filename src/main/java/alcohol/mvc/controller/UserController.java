package alcohol.mvc.controller;

import java.io.IOException;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import alcohol.mvc.dto.UserDTO;
import alcohol.mvc.service.UserService;
import alcohol.mvc.service.UserServiceImpl;

public class UserController implements Controller {

	private UserService userService = new UserServiceImpl();

	@Override   
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("UserController 제대로 오나?");
		return null;
	}

	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("UserController login도 제대로 오나?");
		// 넘어오는 userID,pwd 받기
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		//System.out.println(userId + userPwd);
		// 서비스 호출
		UserDTO dbDTO = userService.loginCheck(new UserDTO(userId, userPwd));
		// 그결과를 받아서 성공했으면
		//System.out.println(dbDTO);
		// sessionScope에 loginUser loginName 저장                         
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", dbDTO); // ${loginUser.userId}
		session.setAttribute("loginName", dbDTO.getUserName());
		session.setAttribute("loginGrade", dbDTO.getUserGrade());

		// index.jsp -> redirect
		ModelAndView mv = new ModelAndView("index.jsp", true);

		return mv;

	}

	public ModelAndView join(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("UserController join입니다.");

		// 전송된 데이터 받기
		String userId = request.getParameter("id");
		String userPwd = request.getParameter("pwd");
		String userName = request.getParameter("name");
		String userJumin = request.getParameter("userJumin");
		String userPhone = request.getParameter("tel");
		String userEmail = request.getParameter("userEmail");
		String userAddr = request.getParameter("userAddr");
		String userAddr2 = request.getParameter("userAddr2");
		String userAddr3 = request.getParameter("userAddr3");
		DateFormat df = new SimpleDateFormat("dd/MM/yyyy");
		String date = df.format(new Date());

		UserDTO userDTO = new UserDTO(userId, userPwd, userName, userJumin, userPhone, userEmail, userAddr, userAddr2,
				userAddr3, 0, 0, date);

		userService.insert(userDTO);

		// index.jsp -> redirect
		ModelAndView mv = new ModelAndView("index.jsp", true);

		return mv;

	}

}
