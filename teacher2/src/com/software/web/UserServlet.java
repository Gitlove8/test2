package com.software.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.Goods;
import com.software.domain.Users;
import com.software.service.ShopService;
import com.software.service.UserService;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ShopService  goodsService = new ShopService(); 
	private UserService userService = new UserService();
    public UserServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	logout(request,response);
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		if(act.equals("register")){
			register(request, response);
		}else if(act.equals("validate")){
			validate(request, response);
		}else{
			login(request, response);
		}
	}
	/**
	 * 注销
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
    protected void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().invalidate();
		//查询所有商品
		List<Goods> goodsList = goodsService.findAll();
		//将商品list传递到index.jsp
		request.setAttribute("goodsList", goodsList);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		//response.sendRedirect(request.getContextPath()+"/index.jsp");
	}
	/**
	 * 登录
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
    protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
			//获取用户提交的信息
			request.setCharacterEncoding("utf-8");		
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			//封装到User对象中（登录就两个数据，可以不封装，注册要封装）
			//调用UserService中登录的方法
			Users user = userService.login(username,password);
			//成功就跳转，失败就提示
			if(user!=null){
				request.getSession().setAttribute("user", user);
				//查询所有商品
				List<Goods> goodsList = goodsService.findAll();
				//将商品list传递到index.jsp
				request.setAttribute("goodsList", goodsList);
				request.getRequestDispatcher("/index.jsp").forward(request, response);

				//response.sendRedirect(request.getContextPath()+"/index.jsp");		
			}else{
				request.setAttribute("error", "登录失败！");
				request.getRequestDispatcher("/user/login.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 注册
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
    protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    }
    /**
     * 验证用户名是否重复
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    protected void validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
    	if(userService.validate(username)){
    		out.write("用户名已存在");
    	}
    }    
}
