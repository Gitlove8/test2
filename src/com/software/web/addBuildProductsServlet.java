package com.software.web;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.mysql.jdbc.StringUtils;
import com.software.domain.Products;
import com.software.service.BuildingAreaService;
import com.software.service.BuildingStyleService;
import com.software.service.BuildingTypeService;
import com.software.service.ProductStageService;
import com.software.service.ProductsService;
import com.sun.javafx.scene.traversal.Hueristic2D;

@WebServlet("/addBuildProductsServlet")
public class addBuildProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ProductsServlet pServlet = new ProductsServlet();
	ProductsService productsService= new ProductsService();
    BuildingAreaService buildingAreaService = new BuildingAreaService();
    BuildingStyleService buildingStyleService = new BuildingStyleService();
    BuildingTypeService buildingTypeService = new BuildingTypeService();
    ProductStageService productStageService = new ProductStageService();
    ProductsServlet productsServlet = new ProductsServlet();
	
    public addBuildProductsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		adminshowAllIsBuildingProducts(request, response);
	}
	private void adminshowAllIsBuildingProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	String area   = request.getParameter("area");
    	String type   = request.getParameter("type");
    	String stage  = request.getParameter("stage");
    	session.setAttribute("area", area);
    	session.setAttribute("type", type);
    	session.setAttribute("stage", stage);
    	ArrayList<Products> productsList = (ArrayList) productsService.returnAllIsBuilding();
    	ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
        request.setAttribute("productsList", productsList);
        request.setAttribute("types", types);
//        response.sendRedirect("/QingkunDecoration/background/jsps/buildProducts_List.jsp");
    	request.getRequestDispatcher("/background/jsps/buildProducts_List.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Products products  = new Products();
		String uploadPath = "D:/赵海川/jsp/软件/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/QingKunDecoration/foreground/img/products";
		SimpleDateFormat df=new SimpleDateFormat("yyyyMMddHHmmss");
		 //1 工厂
		 FileItemFactory fileItemFactory = new DiskFileItemFactory();
		
		 //2 核心类
		 ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		 Map<String , String> pMap = new HashMap<String, String>();
		 try {
			List<FileItem> fileItems = servletFileUpload.parseRequest(request);
			int flag = 0;
			for(FileItem fileItem : fileItems){
//				String fieldName = fileItem.getFieldName();
				SimpleDateFormat dff=new SimpleDateFormat("yyyyMMddHHmmss");
				String name=dff.format(new Date())+".jpg";
//				String name = fileItem.getName();
				if (fileItem.isFormField()) {
					pMap.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
				}else {
					if (fileItem.getName().equals("")) {
						flag=1;
					}else{
						
						InputStream ips = fileItem.getInputStream();
						File file= new File( uploadPath+File.separator+name);//先创建一个文件
						FileOutputStream ops= new FileOutputStream(file);//输出流
						products.setProduct_picture_path("products/"+name);
						
						IOUtils.copy(ips, ops);
						IOUtils.closeQuietly(ips);
						IOUtils.closeQuietly(ops);
					}
					
				}
			}
			System.out.println("jihe::"+pMap);
			SimpleDateFormat dff=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String pdate=dff.format(new Date());
			int a = Integer.parseInt(pMap.get("area"));
			int t = Integer.parseInt(pMap.get("type"));
			int s = Integer.parseInt(pMap.get("stage"));
			int style = Integer.parseInt(pMap.get("style"));
			if (flag==1) {
				System.out.println("路径："+productsService.getTheProductByProductID(Integer.parseInt(pMap.get("id"))).getProduct_picture_path());
				products.setProduct_picture_path(productsService.getTheProductByProductID(Integer.parseInt(pMap.get("id"))).getProduct_picture_path());
			} 
			products.setProduct_stage_id(s);;
			products.setProduct_area_id(a);
			products.setProduct_house_type_id(t);
			products.setProduct_city(pMap.get("city"));
			products.setProduct_build_style_id(style);
			products.setProduct_info(pMap.get("info"));
			products.setProduct_name(pMap.get("name"));
			products.setProduct_publish_time(pdate);
			if (pMap.get("id")==null) {
				
			}else {
				
				products.setProduct_id(Integer.parseInt(pMap.get("id")));
			}
			Products naem = productsService.getTheProductByProductID(products.getProduct_id());
			if (naem.getProduct_name()==null) {
				productsService.addBuildProduct(products);
			}else {
				productsService.updateBuildProduct(products);
			}
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 doGet(request, response);
		
	}
		
	
}
