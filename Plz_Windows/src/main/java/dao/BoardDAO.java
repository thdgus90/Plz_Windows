package dao;

import java.util.Hashtable;
import java.util.List;
import java.util.Map;


import logic.QuestionBoard;


public interface BoardDAO {
	
	public List<QuestionBoard> list(Map<String,Object> map);
	
	public int getRowCount(Map<String,Object> map);
	
	public int maxNumber();
	
	public void stepUpdate(Map<String,Object> map);
	
	public void insert(QuestionBoard board);
	
	public void updateRead(int num);
	
	public QuestionBoard getArticle(int num);
	
	public void updateArticle(QuestionBoard article);
	
	public void deleteArticle(int num);
	
	public Hashtable pageList(String pageNum,int count);
}
