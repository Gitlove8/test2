package com.software.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.software.domain.Goods;
import com.software.domain.ShopCar;
import com.software.domain.Users;
import com.software.service.ShopService;
import com.software.utils.Tool;


@WebServlet("/ShopServlet")
public class ShopServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ShopService  shopService = new ShopService(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String act = request.getParameter("act");
		if(act==null){
			displayAllGoods(request,response);
		}else if(act.equals("displayOneGoods")){
			displayOneGoods(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addGoods(request,response);
	}
	/**
	 * 首页显示所有商品
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void displayAllGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询所有商品
		List<Goods> goodsList = shopService.findAll();
		//返回json数据，页面用js显示
		JSONArray jArray = new JSONArray();
		if(goodsList.size()>0){			
			for(Goods goods:goodsList){
				JSONObject obj = new JSONObject();
				obj.put("id", goods.getId());
				obj.put("name", goods.getName());
				obj.put("price", goods.getPrice());
				obj.put("num", goods.getNum());
				jArray.add(obj);
			}
		}
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String s = jArray.toString();
		out.print(s);
/*		//将商品list传递到index.jsp
		request.setAttribute("goodsList", goodsList);
		request.getRequestDispatcher("/index.jsp").forward(request, response);*/
	}
	

	/**
	 * 显示商品明细
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void displayOneGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Tool.strToInt(request.getParameter("id"));
		//查询一个商品
		Goods goods = shopService.findGoodsById(id);
		//将商品list传递到index.jsp
		request.setAttribute("goods", goods);
		request.getRequestDispatcher("/shop/goodsInfo.jsp").forward(request, response);
	}
	/**
	 * 加入购物车
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void addGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Users user = (Users)(request.getSession().getAttribute("user"));
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/user/login.jsp");
			return;
		}
		//1、获得加入购物车的商品的id和数量
		int goodsId = Tool.strToInt(request.getParameter("goodsId"));
		int buyNum = Tool.strToInt(request.getParameter("buyNum"));
		String goodsName = request.getParameter("goodsName");
		ShopCar shopCar = new ShopCar();
		shopCar.setUsername(user.getUsername());
		shopCar.setGoodsId(goodsId);
		shopCar.setBuyNum(buyNum);
		shopCar.setGoodsName(goodsName);
		//2、调用service
		shopService.addGoods(shopCar);
		List<ShopCar> shopCarList = shopService.findShopCarByUsername(user.getUsername());
		//4、返回购物车页面shopCar.jsp
		request.setAttribute("shopCarList", shopCarList);
		request.getRequestDispatcher("/shop/shopCar.jsp").forward(request, response);
	}

}
