package com.software.web;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.BuildingStyle;
import com.software.service.BuildingStyleService;
import com.software.service.BuildingTypeService;
import com.software.service.CategoryService;
import com.sun.xml.internal.bind.v2.runtime.Name;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CategoryService categoryService = new CategoryService();
	private BuildingTypeService buildingTypeService = new BuildingTypeService();
	private BuildingStyleService buildingStyleService = new BuildingStyleService();
    public CategoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String action = request.getParameter("action");
		String id = request.getParameter("Category");
		String name = request.getParameter("name");
		String son = request.getParameter("sonCategory");
		String newname = request.getParameter("newname");
		if (action.equals("add")) {
			addCategory(request,response,id,name);
		}else if (action.equals("look")) {
			look(request,response);
		}else if (action.equals("del")) {
			del(request,response,id,son);
		}else if (action.equals("update")) {
			update(request,response,id,son,newname);
		}
	}

	
	//修改子类名称
	private void update(HttpServletRequest request, HttpServletResponse response, String id, String son,
			String newname) throws ServletException, IOException {
		categoryService.update(id,son,newname);
		look(request,response);
	}

	//删除子类
	private void del(HttpServletRequest request, HttpServletResponse response, String id, String son) throws ServletException, IOException {
		categoryService.del(id,son);
		look(request,response);
	}

	//显示
	private void look(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
		 ArrayList style = (ArrayList) buildingStyleService.returnAllBuildingStyle();
		 request.setAttribute("style", style);
		 request.setAttribute("types", types);
		 request.getRequestDispatcher("background/jsps/product-category-add.jsp").forward(request, response);
	}

	//添加子分类名称
	private void addCategory(HttpServletRequest request, HttpServletResponse response, String id, String name) throws ServletException, IOException {
		categoryService.addCategory(id,name);
		look(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
