package com.software.utils;

public class Tool {
	/**
	 * 把String转换为int
	 * @param str
	 * @return
	 */
	public static int strToInt(String str){	
		if(str==null||str.equals(""))
			str="0";
		int i=0;
		try{
			i=Integer.parseInt(str);
		}catch(NumberFormatException e){
			i=0;
			e.printStackTrace();
		}
		return i;
	}
}
