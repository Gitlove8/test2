package com.software.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.News;
import com.software.service.NewsService;
import com.software.service.PassageService;
import com.sun.webkit.ContextMenu.ShowContext;
@WebServlet("/NewsServlet")
public class NewsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private NewsService NewsService = new NewsService();

	public NewsServlet() {
		super();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("UTF-8");
			String action = request.getParameter("action");
			String select_value = request.getParameter("select_value");
		//	String input_value = request.getParameter("input_value");
			/*if (select_value.equals(1)) {
				find_news_by_title(request, response);
			} else if (select_value.equals(2)) {
				find_news_by_content(request, response);
			} else*/ if (action.equals("show_all_news")){
				show_all_news(request, response);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void find_news_by_title(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		List<News> list = NewsService.FindTheNewsByNewsTitle(request.getParameter("input_value"));
		request.setAttribute("list", list);
		request.getRequestDispatcher("foreground/jsps/news_center.jsp").forward(request, response);
	}

	public void find_news_by_content(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		List<News> list = NewsService.FindTheNewsByNewsContent(request.getParameter("input_value"));
		request.setAttribute("list", list);
		request.getRequestDispatcher("foreground/jsps/news_center.jsp").forward(request, response);
	}
	
	public void show_all_news(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		List<News> list = NewsService.ShowAllNews();
		request.setAttribute("list", list);
		request.getRequestDispatcher("foreground/jsps/news_center.jsp").forward(request, response);
	}
}
