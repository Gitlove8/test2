package com.software.service;

import java.util.ArrayList;
import java.util.List;

import com.software.dao.NewsDao;
import com.software.domain.News;

public class NewsService {
	private NewsDao newsDao = new NewsDao();
	
	public List<News> ShowAllNews(){   //查看全部新闻
		return newsDao.ShowAllNews();
	}
	
	public List<News> FindTheNewsByNewsTitle(String news_title){   //标题查找
		return newsDao.FindTheNewsByNewsTitle(news_title);
	}
	
	public List<News> FindTheNewsByNewsContent(String news_content){   //内容查找
		return newsDao.FindTheNewsByNewsTitle(news_content);
	}
}
