package com.javakc.student.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncordingFilter {
	 public void destroy( ){
	        /* 在 Filter 实例被 Web 容器从服务移除之前调用 */
	    }
	 
	 String encode;
	 
	
    public void  doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain chain) 
    		throws IOException, ServletException {
    	arg0.setCharacterEncoding(encode);
        // 输出站点名称
        /*System.out.println("站点网址：http://www.runoob.com");*/

        // 把请求传回过滤链
        chain.doFilter(arg0,arg1);
    }
   
    public void  init(FilterConfig config) throws ServletException {
        // 获取初始化参数
        encode = config.getInitParameter("encode"); 

        // 输出初始化参数
        /*System.out.println("网站名称: " + site); */
    }
}
