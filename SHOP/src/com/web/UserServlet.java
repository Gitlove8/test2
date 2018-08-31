package com.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.User;
import com.service.UserService;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService service = new UserService();
	private User user = new User();
//	private HttpServletRequest request;
//	String path = request.getContextPath();
    public UserServlet() {
        super(); 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String kc = request.getParameter("kc");
		if("create".equals(kc)){
			String name = request.getParameter("uname");
			String pwd = request.getParameter("upwd");
			String email = request.getParameter("uemail");
			String phone = request.getParameter("uphone");
			String age = request.getParameter("uage");
			user.setName(name);
			user.setPwd(pwd);
			user.setEmail(email);
			user.setPhone(phone);
			user.setAge(age);
//			PrintWriter out = response.getWriter();
//			out.print("Hello Servlet!!!!");
			if(service.CreatUser(user)==0){
				response.sendRedirect("ok.jsp");
			}else{
				 response.sendRedirect("error.jsp");
			}
		}else if("login".equals(kc)){ 
			String name = request.getParameter("uname");
			String pwd = request.getParameter("upwd");
			user.setName(name);
			user.setPwd(pwd);
			if(service.LoginUser(user)==0){
				response.sendRedirect("car.jsp");
			}else{
				response.sendRedirect("error.jsp");
			}
		}else {
	        response.sendRedirect("error.jsp");
		}
	}
}
