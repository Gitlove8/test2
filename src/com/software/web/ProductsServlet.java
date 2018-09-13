package com.software.web;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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

import com.software.domain.BuildingArea;
import com.software.domain.BuildingStyle;
import com.software.domain.BuildingType;
import com.software.domain.ProductStage;
import com.software.domain.Products;
import com.software.service.BuildingAreaService;
import com.software.service.BuildingStyleService;
import com.software.service.BuildingTypeService;
import com.software.service.ProductStageService;
import com.software.service.ProductsService;

import sun.nio.ch.IOUtil;

@SuppressWarnings("serial")
@WebServlet("/ProductsServlet")
public class ProductsServlet extends HttpServlet{
	ProductsService productsService= new ProductsService();
    BuildingAreaService buildingAreaService = new BuildingAreaService();
    BuildingStyleService buildingStyleService = new BuildingStyleService();
    BuildingTypeService buildingTypeService = new BuildingTypeService();
    ProductStageService productStageService = new ProductStageService();
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	String action = request.getParameter("action"); 
		System.out.println("shangbian xiangzai:::::"+action);
    	 if (action.equals("showBuildingProductsByProductName")){
         	showBuildingProductsByProductName(request, response);
         }else if (action.equals("adminshowBuildingProductsByProductName")){
          	adminshowBuildingProductsByProductName(request, response);
         }else if (action.equals("addBuildProduct")){
        	 addBuildProduct(request, response);
           }
    	doGet(request, response);
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
request.setCharacterEncoding("UTF-8");
        
		
    	response.setCharacterEncoding("UTF-8");
    	String Id = request.getParameter("id");
    	int id = 0; 
    	if (Id!=null) {
        	id= Integer.parseInt(Id);
		}else {
			
		}
    	String action = request.getParameter("action"); 
		HttpSession session = request.getSession();
    	request.setCharacterEncoding("UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	response.setContentType("text/html; charset=utf-8"); 
    	String ID = request.getParameter("id");
    	String buildArray = request.getParameter("buildArray");
        if (action.equals("showAllProducts")){
            showAllProducts(request, response);
        }else if (action.equals("showTheProductDetails")){
            showTheProductDetails(request, response);
        }else if (action.equals("showAllIsBuildingProducts")){
        	showAllIsBuildingProducts(request, response);
        }else if (action.equals("adminshowAllIsBuildingProducts")){
        	adminshowAllIsBuildingProducts(request, response);
        }else if (action.equals("findSomebyarea")){
        	request.setCharacterEncoding("UTF-8");
        	String area   = request.getParameter("area");
            session.setAttribute("area", area);
            showSomeIsBuildingProducts(request, response);
        }else if (action.equals("findSomebytype")){
        	request.setCharacterEncoding("UTF-8");
        	String type   = request.getParameter("type");
            session.setAttribute("type", type);
            showSomeIsBuildingProducts(request, response);
        }else if (action.equals("findSomebystage")){
        	request.setCharacterEncoding("UTF-8");
        	String stage   = request.getParameter("stage");
            session.setAttribute("stage", stage);
            showSomeIsBuildingProducts(request, response);
        }else if (action.equals("showProductsByProductName")){
            showProductsByProductName(request, response);
        }else if (action.equals("adminDelOneBuildingProducts")){
        	adminDelOneBuildingProducts(request, response,ID);
        }else if (action.equals("adminshowOneBuildProduct")){
        	adminshowOneBuildProduct(request, response,id);
        }else if (action.equals("adminDelBatchBuildingProducts")){
        	try {
				adminDelBatchBuildingProducts(request, response,buildArray);
			} catch (Exception e) {
				e.printStackTrace();
			}
        }
    }
	
	/*8
	 * 显示详细信息
	 */
	private void adminshowOneBuildProduct(HttpServletRequest request, HttpServletResponse response ,int id) throws ServletException, IOException {
		Products product = productsService.getTheProductByProductID(id);
		 id = Integer.parseInt(request.getParameter("id"));
		 request.setAttribute("product", product);
		 ArrayList style = (ArrayList) buildingStyleService.returnAllBuildingStyle();
		 ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
		 request.setAttribute("style", style);
	     request.setAttribute("types", types);
		request.getRequestDispatcher("/background/jsps/buildProduct-info.jsp").forward(request, response);
	}

	/**
	 * 批量删除
	 * @param request
	 * @param response
	 * @param buildArray 
	 * @param iD
	 * @throws IOException 
	 * @throws ServletException 
	 * @throws Exception 
	 */
    private void adminDelBatchBuildingProducts(HttpServletRequest request, HttpServletResponse response, String buildArray) throws ServletException, IOException, Exception {
    	productsService.adminDelBatchBuildingProducts(buildArray); 
    	adminshowAllIsBuildingProducts(request, response);
	}

	/**
     * 管理员删除一条在建工地记录
     * @param request
     * @param response
     * @throws IOException 
     * @throws ServletException 
     */
    private void adminDelOneBuildingProducts(HttpServletRequest request, HttpServletResponse response,String id) throws IOException, ServletException {
		int i = Integer.parseInt(id);
    	productsService.adminDelOneBuildingProducts(i);
    	adminshowAllIsBuildingProducts(request, response);
	}



	/**
     * 根据名字显示在建工地
     * @param request
     * @param response
     * @throws IOException 
     * @throws ServletException 
     */
    private void showBuildingProductsByProductName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String productName = request.getParameter("productName");
    	System.out.println("mingzi:"+productName);
        ArrayList productsList = productsService.getBuildingProductsListByProductName(productName);
        ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
        request.setAttribute("productsList", productsList);
        request.setAttribute("types", types);
        request.getRequestDispatcher("/foreground/jsps/SiteLive.jsp").forward(request, response);
	}
    
    /**
     * 后台根据名字显示在建工地
     * @param request
     * @param response
     * @throws IOException 
     * @throws ServletException 
     */
    private void adminshowBuildingProductsByProductName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String productName = request.getParameter("productName");
    	System.out.println("mingzi:"+productName);
        ArrayList productsList = productsService.getBuildingProductsListByProductName(productName);
        ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
        request.setAttribute("productsList", productsList);
        request.setAttribute("types", types);
        request.getRequestDispatcher("/background/jsps/buildProducts_List.jsp").forward(request, response);
	}

	/**
     * 显示部分在建工地
     * @param request
     * @param response
	 * @throws IOException 
     * @throws ServletException 
     */
    private void showSomeIsBuildingProducts(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	request.setCharacterEncoding("UTF-8");
    	String s = (String) request.getSession().getAttribute("stage");
		String t = (String) request.getSession().getAttribute("type");
		String a = (String) request.getSession().getAttribute("area");
		if (s==null) {
			s = "all";
		}
		if (t==null) {
			t = "all";
		}
		if (a==null) {
			a = "all";
		}
		
		ArrayList productsList = productsService.showSomeIsBuildingProducts(s,t,a);
		 ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
		request.setAttribute("productsList", productsList);
        request.setAttribute("types", types);
        
    	request.getRequestDispatcher("/foreground/jsps/SiteLive.jsp").forward(request, response);
		
	}


	private void showProductsByProductName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");

        ArrayList productsList = productsService.getProductsListByProductName(productName);
        request.setAttribute("productsList", productsList);
        request.getRequestDispatcher("/foreground/jsps/product_center.jsp").forward(request, response);

    }

	private void showTheProductDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Products product = null;
        BuildingArea buildingArea = null;
        BuildingStyle buildingStyle = null;
        BuildingType buildingType = null;
        ProductStage productStage = null;

        int productID = Integer.parseInt(request.getParameter("productID"));
        product = productsService.getTheProductByProductID(productID);
        buildingArea = buildingAreaService.getTheProductAreaByAreaID(product.getProduct_area_id());
        buildingStyle = buildingStyleService.getTheProductBuildStyleByStyleID(product.getProduct_build_style_id());
        buildingType = buildingTypeService.getTheProductHouseTypeByHouseTypeID(product.getProduct_house_type_id());
        productStage = productStageService.getTheProductStageByStageID(product.getProduct_stage_id());

        request.setAttribute("product", product);
        request.setAttribute("buildingArea", buildingArea);
        request.setAttribute("buildingStyle", buildingStyle);
        request.setAttribute("buildingType", buildingType);
        request.setAttribute("productStage", productStage);

        request.getRequestDispatcher("/product_detail.jsp").forward(request, response);
    }

    private void showAllProducts(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList productsList = productsService.getAllProductsList();
        request.setAttribute("productsList", productsList);
        
        request.getRequestDispatcher("/foreground/jsps/product_center.jsp").forward(request, response);
    }

    /*8
     * 显示所有在建工地
     */
    private void showAllIsBuildingProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	HttpSession session = request.getSession();
    	String area   = request.getParameter("area");
    	String type   = request.getParameter("type");
    	String stage  = request.getParameter("stage");
    	session.setAttribute("area", area);
    	session.setAttribute("type", type);
    	session.setAttribute("stage", stage);
    	 ArrayList productsList = (ArrayList) productsService.returnAllIsBuilding();
    	 ArrayList types = (ArrayList) buildingTypeService.returnAllBuildingType();
         request.setAttribute("productsList", productsList);
         request.setAttribute("types", types);
    	 request.getRequestDispatcher("/foreground/jsps/SiteLive.jsp").forward(request, response);
	}
    /*8
     * 显示后台所有在建工地
     */
    private void adminshowAllIsBuildingProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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
    	request.getRequestDispatcher("/background/jsps/buildProducts_List.jsp").forward(request, response);
        /*for(int i=0 ;i<productsList.size();i++){
        	response.getWriter().append(productsList.get(i).getProduct_name());
        	
        }*/
	}
    
    /*8
     * 管理员添加在建工地
     */
	private void addBuildProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String iofo = request.getParameter("info");
		/*int areaId = Integer.parseInt( request.getParameter("area"));
		int typeId = Integer.parseInt(request.getParameter("type"));
		int stageId = Integer.parseInt(request.getParameter("stage"));*/
		String city = request.getParameter("city");
		String path = request.getParameter("image");
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String pdate=df.format(new Date());
		Products products  = new Products();
		products.setProduct_picture_path(path);
//		products.setProduct_area_id(areaId);
		products.setProduct_city(city);
//		products.setProduct_house_type_id(typeId);
		products.setProduct_info(iofo);
		products.setProduct_name(name);
		products.setProduct_publish_time(pdate);
//		products.setProduct_stage_id(stageId);
		
		String uploadPath = "D:/赵海川/jsp/软件/workspace/QingKunDecoration/WebContent/foreground/img/products";
		
		 //1 工厂
		 FileItemFactory fileItemFactory = new DiskFileItemFactory();
		
		 //2 核心类
		 ServletFileUpload servletFileUpload = new ServletFileUpload(fileItemFactory);
		 
		 try {
			List<FileItem> fileItems = servletFileUpload.parseRequest(request);
			for(FileItem fileItem : fileItems){
				String imageName = "201612204548.png";
				String fieldName = fileItem.getFieldName();
				InputStream ips = fileItem.getInputStream();
				//5,10流的拷贝操作
				File file= new File( uploadPath+"//"+imageName);//先创建一个文件
				FileOutputStream ops= new FileOutputStream(file);//输出流
				
				IOUtils.copy(ips, ops);
				IOUtils.closeQuietly(ips);
				IOUtils.closeQuietly(ops);
				
			}
			
			
			
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		
	}
}
