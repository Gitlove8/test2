package com.software.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.Passage;
import com.software.service.PassageService;


@WebServlet("/PassageServlet")
public class PassageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private PassageService passageService = new PassageService();
   
    public PassageServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String action = request.getParameter("action");
			String content = request.getParameter("content");
			if(action.equals("find_culture_group_overview")){
				find_culture_group_overview(request,response);
			}else if(action.equals("find_culture_brand_introduction")){
				find_culture_brand_introduction(request, response);
			}else if(action.equals("find_culture_project_advantages")){
				find_culture_project_advantages(request, response);
			}else if(action.equals("find_material_overview")){
				find_material_overview(request, response);
			}else if(action.equals("find_process_patent")){
				find_process_patent(request, response);
			}else if(action.equals("find_service_guarantee")){
				find_service_guarantee(request, response);
			}else if(action.equals("find_service_process")){
				find_service_process(request, response);
			}else if(action.equals("find_all_passage")){
				find_all_passage(request, response);
			}else if(action.equals("find_stepinto_qingkun")){
				find_stepinto_qingkun(request, response);
			}else if(action.equals("find_quaility_enginerring")){
				find_quaility_enginerring(request, response);
			}else if(action.equals("find_worry_free_service")){
				worry_free_service(request, response);
			}
			
			/**
			 * 走进晴坤
			 * */
			/*企业概况*/
			else if(action.equals("update_group_overview")){
				update_group_overview(request, response);
			}else if(action.equals("change_group_overview")){
				change_group_overview(request, response,content);
			}else if(action.equals("look_group_overview")){
				look_group_overview(request, response);
			}
			
			/*品牌介绍*/
			else if(action.equals("update_brand_introduction")){
				update_brand_introduction(request, response);
			}else if(action.equals("change_brand_introduction")){
				change_brand_introduction(request, response,content);
			}else if(action.equals("look_brand_introduction")){
				look_brand_introduction(request, response);
			}
			
			/*项目优势*/
			else if(action.equals("update_project_advantages")){
				update_project_advantages(request, response);
			}else if(action.equals("change_project_advantages")){
				change_project_advantages(request, response,content);
			}else if(action.equals("look_project_advantages")){
				look_project_advantages(request, response);
			}
			
			/**
			 * 品质工程
			 * */
			/*材料概述*/
			else if(action.equals("update_material_overview")){
				update_material_overview(request, response);
			}else if(action.equals("change_material_overview")){
				change_material_overview(request, response,content);
			}else if(action.equals("look_material_overview")){
				look_material_overview(request, response);
			}
			
			/*工艺专利*/
			else if(action.equals("update_process_patent")){
				update_process_patent(request, response);
			}else if(action.equals("change_process_patent")){
				change_process_patent(request, response,content);
			}else if(action.equals("look_process_patent")){
				look_process_patent(request, response);
			}
			
			/**
			 * 无忧服务
			 * */
			/*服务流程*/
			else if(action.equals("update_service_guarantee")){
				update_service_guarantee(request, response);
			}else if(action.equals("change_service_guarantee")){
				change_service_guarantee(request, response,content);
			}else if(action.equals("look_service_guarantee")){
				look_service_guarantee(request, response);
			}
			
			/*服务保障*/
			else if(action.equals("update_service_process")){
				update_service_process(request, response);
			}else if(action.equals("change_service_process")){
				change_service_process(request, response,content);
			}else if(action.equals("look_service_process")){
				look_service_process(request, response);
			}
			
			
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}
	
	/**
	 * 预览服务保障
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_service_process(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getService_process());
//		passageService.change_group_overview(content);
	}
	
	
	/**
	 * 修改服务保障zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_service_process(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_service_process(content);
	}
	
	/**
	 * 修改服务保障
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_service_process(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getService_process());
		request.setAttribute("method","change_service_process");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 预览服务流程
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_service_guarantee(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getService_guarantee());
//		passageService.change_group_overview(content);
	}
	
	
	/**
	 * 修改服务流程zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_service_guarantee(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_service_guarantee(content);
	}
	
	/**
	 * 修改服务流程
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_service_guarantee(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getService_guarantee());
		request.setAttribute("method","change_service_guarantee");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 预览工艺专利
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_process_patent(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getProcess_patent());
//		passageService.change_group_overview(content);
	}
	
	
	/**
	 * 修改工艺专利zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_process_patent(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_process_patent(content);
	}
	
	/**
	 * 修改工艺专利
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_process_patent(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getProcess_patent());
		request.setAttribute("method","change_process_patent");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	
	/**
	 * 预览材料概述
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_material_overview(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getMaterial_overview());
//		passageService.change_group_overview(content);
	}
	
	
	/**
	 * 修改材料概述zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_material_overview(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_material_overview(content);
	}
	
	/**
	 * 修改材料概述
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_material_overview(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getMaterial_overview());
		request.setAttribute("method","change_material_overview");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 预览项目优势
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_project_advantages(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getCulture_project_advantages());
//		passageService.change_group_overview(content);
	}
	
	/**
	 * 修改项目优势zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_project_advantages(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_project_advantages(content);
	}
	
	/**
	 * 修改项目优势
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_project_advantages(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getCulture_project_advantages());
		request.setAttribute("method","change_project_advantages");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 预览品牌介绍
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_brand_introduction(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getCulture_brand_introduction());
//		passageService.change_group_overview(content);
	}
	
	/**
	 * 修改品牌介绍zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_brand_introduction(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_brand_introduction(content);
	}
	
	/**
	 * 修改品牌介绍
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_brand_introduction(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getCulture_brand_introduction());
		request.setAttribute("method","change_brand_introduction");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 预览企业概况zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void look_group_overview(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		Passage passage = passageService.findAllPassage();
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(passage.getCulture_group_overview());
//		passageService.change_group_overview(content);
	}
	
	/**
	 * 修改企业概况zhong
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void change_group_overview(HttpServletRequest request, HttpServletResponse response,String content) throws  Exception{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		response.getWriter().append("预览： ").append(content);
		passageService.change_group_overview(content);
	}
	
	/**
	 * 修改企业概况
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void update_group_overview(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage.getCulture_group_overview());
		request.setAttribute("method","change_group_overview");
//		request.setAttribute("method", "free_service");
		request.getRequestDispatcher("background/jsps/article_update.jsp").forward(request, response);
	}
	
	/**
	 * 查询无忧服务
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void worry_free_service(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage);
		request.setAttribute("method", "free_service");
		request.getRequestDispatcher("background/jsps/article_list.jsp").forward(request, response);
	}
	
	/**
	 * 查询品质工程
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void find_quaility_enginerring(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage);
		request.setAttribute("method", "quaility_enginerring");
		request.getRequestDispatcher("background/jsps/article_list.jsp").forward(request, response);
	}
	
	/**
	 * 查询企业文化
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void find_stepinto_qingkun(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage);
		request.setAttribute("method", "steptinto_qingkun");
		request.getRequestDispatcher("background/jsps/article_list.jsp").forward(request, response);
	}
	
	/**
	 * 查询全部文章
	 * @throws IOException 
	 * @throws ServletException 
	 */
	public void find_all_passage(HttpServletRequest request, HttpServletResponse response) throws  Exception{
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		Passage passage = passageService.findAllPassage();
		request.setAttribute("passage",passage);
		request.setAttribute("method", "all");
//		response.getWriter().append("Served at: ").append("这是什么字？");
		request.getRequestDispatcher("background/jsps/article_list.jsp").forward(request, response);
	}
	
	/**
	 * 查询企业概况
	 * @throws Exception 
	 */
	public void find_culture_group_overview(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
//		response.getWriter().append("Served at: ").append("这是什么字？");
		String group_overview = passageService.find_culture_group_overview();
		request.setAttribute("group_overview",group_overview );
//		System.out.println(group_overview );
////		PrintWriter out = response.getWriter();
////		out.print("456");
//		System.out.println("上边" );
//		response.sendRedirect(request.getContextPath()+"/culture_group_overview.jsp");
		request.getRequestDispatcher("foreground/jsps/culture_group_overview.jsp").forward(request, response);
//		request.getRequestDispatcher("/foreground/jsps/goods/ordermain.jsp").forward(request, response);;
		
	}
	
	/**
	 * 查询品牌介绍
	 * @throws Exception 
	 */
	public void find_culture_brand_introduction(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String brand_introduction = passageService.find_culture_brand_introduction();
		request.setAttribute("brand_introduction",brand_introduction );
		request.getRequestDispatcher("/foreground/jsps/culture_brand_introduction.jsp").forward(request, response);
	}
	
	/**
	 * 查询项目优势
	 * @throws Exception 
	 */
	public void find_culture_project_advantages(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String project_advantages= passageService.find_culture_project_advantages();
		request.setAttribute("project_advantages",project_advantages);
		request.getRequestDispatcher("/foreground/jsps/culture_project_advantages.jsp").forward(request, response);
	}
	
	/**
	 * 查询材料概述
	 * @throws Exception 
	 */
	public void find_material_overview(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String material_overview= passageService.find_material_overview();
		request.setAttribute("material_overview",material_overview);
		request.getRequestDispatcher("/foreground/jsps/material_overview.jsp").forward(request, response);
	}
	
	/**
	 * 查询工艺专利
	 * @throws Exception 
	 */
	public void find_process_patent(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String process_patent= passageService.find_process_patent();
		request.setAttribute("process_patent",process_patent);
		request.getRequestDispatcher("/foreground/jsps/process_patent.jsp").forward(request, response);
	}
	
	/**
	 * 查询服务保障
	 * @throws Exception 
	 */
	public void find_service_guarantee(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String service_guarantee= passageService.find_service_guarantee();
		request.setAttribute("service_guarantee",service_guarantee);
		request.getRequestDispatcher("/foreground/jsps/service_guarantee.jsp").forward(request, response);
	}
	
	/**
	 * 查询服务流程
	 * @throws Exception 
	 */
	public void find_service_process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("UTF-8");
		response.setHeader("content-type","text/html;charset=UTF-8");
		String service_process= passageService.find_service_process();
		request.setAttribute("service_process",service_process);
		request.getRequestDispatcher("/foreground/jsps/service_process.jsp").forward(request, response);
	}
	
	
}
