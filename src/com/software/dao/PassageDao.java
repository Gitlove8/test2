package com.software.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.software.domain.Passage;
import com.software.utils.JDBCUtils;
/**
 * 文章数据库连接
 * @author 123
 *
 */
public class PassageDao {
	Connection conn = null;	
	Statement stm = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	
	/**
	 * 查询全部文章
	 * @throws Exception 
	 */
	public Passage findAllPassage() throws Exception {
		Passage passage = new Passage();
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT * FROM company_culture,quaility_enginerring,worry_free_service";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		while (rs.next()) { 
			passage.setCulture_group_overview(rs.getString("culture_group_overview"));
			passage.setCulture_brand_introduction(rs.getString("culture_brand_introduction"));
			passage.setCulture_project_advantages(rs.getString("culture_project_advantages"));
			
			passage.setMaterial_overview(rs.getString("material_overview"));
			passage.setProcess_patent(rs.getString("process_patent"));

			passage.setService_guarantee(rs.getString("service_guarantee"));
			passage.setService_process(rs.getString("service_process"));
		}
		return passage;
	}
	
	
	/**
	 * 查找企业概况
	 * @throws Exception 
	 */
	public String find_culture_group_overview() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT culture_group_overview FROM company_culture";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setCulture_group_overview(rs.getString("culture_group_overview"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getCulture_group_overview();
		
	}
	
	/**
	 * 查找品牌介绍
	 * @throws Exception 
	 */
	public String find_culture_brand_introduction() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT culture_brand_introduction FROM company_culture";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setCulture_brand_introduction(rs.getString("culture_brand_introduction"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getCulture_brand_introduction();
		
	}
	
	/**
	 * 查找项目优势
	 * @throws Exception 
	 */
	public String find_culture_project_advantages() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT culture_project_advantages FROM company_culture";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setCulture_project_advantages(rs.getString("culture_project_advantages"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getCulture_project_advantages();
		
	}
	
	/**
	 * 查找材料概述
	 * @throws Exception 
	 */
	public String find_material_overview() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT material_overview FROM quaility_enginerring";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setMaterial_overview(rs.getString("material_overview"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getMaterial_overview();
		
	}
	
	/**
	 * 查找工艺专利
	 * @throws Exception 
	 */
	public String find_process_patent() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT process_patent FROM quaility_enginerring";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setProcess_patent(rs.getString("process_patent"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getProcess_patent();
	}
	
	/**
	 * 查找服务保障
	 * @throws Exception 
	 */
	public String find_service_guarantee() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT service_guarantee FROM worry_free_service";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setService_guarantee(rs.getString("service_guarantee"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getService_guarantee();
	}
	
	/**
	 * 查找服务流程
	 * @throws Exception 
	 */
	public String find_service_process() throws Exception{
		conn = JDBCUtils.getConnnection();
		String sql = "SELECT service_process FROM worry_free_service";
		stm =conn.createStatement();
		rs = stm.executeQuery(sql);
		Passage passage = new Passage();
		while (rs.next()) { 
			passage.setService_process(rs.getString("service_process"));
		}
		JDBCUtils.release(rs, pstm, conn);
		return passage.getService_process();
	}

	/**
	 * 修改企业概况
	 * @param content
	 * @throws Exception 
	 */
	public void change_group_overview(String content) throws Exception {
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE company_culture SET culture_group_overview = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}

	/**
	 * 修改品牌优势
	 * @param content
	 * @throws Exception 
	 */
	public void change_brand_introduction(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE company_culture SET culture_brand_introduction = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}


	/**
	 * 修改项目优势
	 * @param content
	 * @throws Exception 
	 */
	public void change_project_advantages(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE company_culture SET culture_project_advantages = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}


	/**
	 * 修改材料概述
	 * @param content
	 * @throws Exception 
	 */
	public void change_material_overview(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE quaility_enginerring SET material_overview = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}


	/**
	 * 修改工艺专利
	 * @param content
	 * @throws Exception 
	 */
	public void change_process_patent(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE quaility_enginerring SET process_patent = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}


	public void change_service_guarantee(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE worry_free_service SET service_guarantee = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
		
	}


	public void change_service_process(String content) throws Exception {
		// TODO Auto-generated method stub
		conn = JDBCUtils.getConnnection();
		String sql = "UPDATE worry_free_service SET service_process = ?";
		ps = conn.prepareStatement(sql);
		ps.setString(1, content);
		ps.executeUpdate();
		JDBCUtils.release(rs, pstm, conn);
	}
}
