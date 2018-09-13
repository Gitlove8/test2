package com.software.service;

import com.software.dao.PassageDao;
import com.software.domain.Passage;

public class PassageService {
	private PassageDao passageDao = new PassageDao();
	
	/**
	 * 查询全部文章
	 * @throws Exception 
	 */
	public Passage findAllPassage() throws Exception {
		return passageDao.findAllPassage();
	}
	
	/**
	 * 查询企业概况
	 * @throws Exception 
	 */
	public String find_culture_group_overview() throws Exception{
		return passageDao.find_culture_group_overview();
	}
	
	/**
	 * 查询品牌介绍
	 * @throws Exception 
	 */
	public String find_culture_brand_introduction() throws Exception{
		return passageDao.find_culture_brand_introduction();
	}
	
	/**
	 * 查询项目优势
	 * @throws Exception 
	 */
	public String find_culture_project_advantages() throws Exception{
		return passageDao.find_culture_project_advantages();
	}
	
	/**
	 * 查询材料概述
	 * @throws Exception 
	 */
	public String find_material_overview() throws Exception{
		return passageDao.find_material_overview();
	}
	
	/**
	 * 查询工艺专利
	 * @throws Exception 
	 */
	public String find_process_patent() throws Exception{
		return passageDao.find_process_patent();
	}
	
	/**
	 * 查询服务保障
	 * @throws Exception 
	 */
	public String find_service_guarantee() throws Exception{
		return passageDao.find_service_guarantee();
	}
	
	/**
	 * 查询服务流程
	 * @throws Exception 
	 */
	public String find_service_process() throws Exception{
		return passageDao.find_service_process();
	}

	/**
	 * 修改企业概况
	 * @param content
	 * @throws Exception 
	 */
	public void change_group_overview(String content) throws Exception {
		passageDao.change_group_overview(content);
	}
	
	/**
	 * 修改品牌介绍
	 * @param content
	 * @throws Exception 
	 */
	public void change_brand_introduction(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_brand_introduction(content);
	}

	/**
	 * 修改项目优势
	 * @param content
	 * @throws Exception 
	 */
	public void change_project_advantages(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_project_advantages(content);
	}

	/**
	 * 修改材料概述
	 * @param content
	 * @throws Exception 
	 */
	public void change_material_overview(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_material_overview(content);
	}

	/**
	 * 修改工艺专利
	 * @param content
	 * @throws Exception 
	 */
	public void change_process_patent(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_process_patent(content);
	}

	/**
	 * 修改服务流程
	 * @param content
	 * @throws Exception 
	 */
	public void change_service_guarantee(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_service_guarantee(content);
	}

	public void change_service_process(String content) throws Exception {
		// TODO Auto-generated method stub
		passageDao.change_service_process(content);
	}
}
