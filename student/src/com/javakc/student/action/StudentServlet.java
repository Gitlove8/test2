package com.javakc.student.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javakc.student.service.StudentService;
import com.javakc.student.service.impl.StudentServiceImpl;
import com.javakc.student.vo.StudentModel;


@SuppressWarnings("serial")
/*@WebServlet("/StudentServlet")*/
public class StudentServlet extends HttpServlet {
	StudentService service = new StudentServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
//		数据展示
		
		String kc = req.getParameter("kc");
		if("create".equals(kc)){
			//新增操作
			String name = req.getParameter("name");
			String age = req.getParameter("age");
			String sex = req.getParameter("sex");
			StudentModel sm = new StudentModel();
			sm.setName(name);
			sm.setAge(Integer.valueOf(age));
			sm.setSex(sex);
			service.create(sm);
			resp.sendRedirect("/student/ind");
			
		}else if("toupdate".equals(kc)){
			String id = req.getParameter("id");
			StudentModel sm=service.load(id);
			req.setAttribute("sm", sm);
			req.getRequestDispatcher("student/update.jsp").forward(req, resp);
		}else if("update".equals(kc)){
			String id = req.getParameter("id");
			String name = req.getParameter("name");
			String age = req.getParameter("age");
			String sex = req.getParameter("sex");
			
			StudentModel sm = new StudentModel();
			sm.setName(name);
			sm.setAge(Integer.valueOf(age));
			sm.setSex(sex);
			sm.setId(id);
			this.service.update(sm); 
			
			resp.sendRedirect("/student/ind");
		} else if("delete".equals(kc)){
			String id = req.getParameter("id");
			
			this.service.delete(id); 
			
			resp.sendRedirect("/student/ind");
		}else{
			List<StudentModel> list = service.query();
			req.setAttribute("list", list); 
			req.getRequestDispatcher("student/list.jsp").forward(req, resp);
		}
		
		
	}

}
