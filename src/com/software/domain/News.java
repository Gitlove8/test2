package com.software.domain;

public class News {   //新闻
	private String news_title;   //新闻标题
	private String news_content; //新闻内容
	private String news_publish_time;   //新闻发布时间
	private String news_picture_path;   //新闻图片路径
	private int news_id;            //新闻id
	
	public News(){
		super();
	}
	
	public News(String news_title, String news_content, String news_publish_time, String news_picture_path, int news_id){
		this.news_title = news_title;
		this.news_content = news_content;
		this.news_publish_time = news_publish_time;
		this.news_picture_path = news_picture_path;
		this.news_id = news_id;
	}
	
	public String getNews_title() {
		return news_title;
	}

	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}

	public String getNews_content() {
		return news_content;
	}

	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}

	public String getNews_publish_time() {
		return news_publish_time;
	}

	public void setNews_publish_time(String news_publish_time) {
		this.news_publish_time = news_publish_time;
	}

	public String getNews_picture_path() {
		return news_picture_path;
	}

	public void setNews_picture_path(String news_picture_path) {
		this.news_picture_path = news_picture_path;
	}

	public int getNews_id() {
		return news_id;
	}

	public void setNews_id(int news_id) {
		this.news_id = news_id;
	}
	
}
