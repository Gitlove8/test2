package com.software.dao;

import com.software.domain.News;
import com.software.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sound.sampled.LineListener;

public class NewsDao {
	Connection conn = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    Statement stmt = null;
    
    public List<News> ShowAllNews(){   //查看全部新闻
    	List<News> list = new ArrayList<News>();
    	News news = new News();
    	 try {
             conn = JDBCUtils.getConnnection();
             
             String sql = "select * from news";
             stmt = conn.createStatement();

             rs = stmt.executeQuery(sql);
             while (rs.next()) {
                 news.setNews_id(rs.getInt("news_id"));
                 news.setNews_title(rs.getString("news_title"));
                 news.setNews_content(rs.getString("news_content"));
                 news.setNews_publish_time(rs.getString("news_publish_time"));
                 news.setNews_picture_path(rs.getString("news_picture_path"));
                 list.add(news);
             }
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             JDBCUtils.release(rs, stmt, conn);
         }
         return list;
    }
    
    public List<News> FindTheNewsByNewsTitle(String news_title){   //按新闻标题查找
    	List<News> list = new ArrayList<News>();
    	News news = new News();
    	 try {
             conn = JDBCUtils.getConnnection();
             
             String sql = "select * from news where news_title like '%" + news_title + "%'";
             stmt = conn.createStatement();

             rs = stmt.executeQuery(sql);
             while (rs.next()) {
                 news.setNews_id(rs.getInt("news_id"));
                 news.setNews_title(rs.getString("news_title"));
                 news.setNews_content(rs.getString("news_content"));
                 news.setNews_publish_time(rs.getString("news_publish_time"));
                 news.setNews_picture_path(rs.getString("news_picture_path"));
                 list.add(news);
             }
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             JDBCUtils.release(rs, stmt, conn);
         }
         return list;
    }
    
    public List<News> FindTheNewsByNewsContent(String news_content){   //按新闻内容查找
    	List<News> list = new ArrayList<News>();
    	News news = new News();
    	 try {
             conn = JDBCUtils.getConnnection();
             
             String sql = "select * from news where news_content like '%" + news_content + "%'";
             stmt = conn.createStatement();

             rs = stmt.executeQuery(sql);
             while (rs.next()) {
                 news.setNews_id(rs.getInt("news_id"));
                 news.setNews_title(rs.getString("news_title"));
                 news.setNews_content(rs.getString("news_content"));
                 news.setNews_publish_time(rs.getString("news_publish_time"));
                 news.setNews_picture_path(rs.getString("news_picture_path"));
                 list.add(news);
             }
         } catch (Exception e) {
             e.printStackTrace();
         } finally {
             JDBCUtils.release(rs, stmt, conn);
         }
         return list;
    }
}
