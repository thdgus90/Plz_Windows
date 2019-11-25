package dao;


import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import logic.QuestionBoard;


@Repository
public class BoardDAOImpl extends SqlSessionDaoSupport implements BoardDAO {
  
	
	public List<QuestionBoard> list(Map<String, Object> map) {
		List<QuestionBoard> list=getSqlSession().selectList("selectList", map);
		System.out.println("list()");
		return list;
	}
	
	
	public int getRowCount(Map<String,Object> map) {
		System.out.println("getRowCount()");
		return getSqlSession().selectOne("selectCount",map);
	}
	
	
	
	public int maxNumber() {
		System.out.println("maxNumber()");
		return getSqlSession().selectOne("maxNumber");
	}
	
	
	public void stepUpdate(Map<String, Object> map) {
		System.out.println("stepUpdate()");
		getSqlSession().update("stepUpdate",map);
	}
	
	
	public void insert(QuestionBoard board) {
		getSqlSession().insert("insertBoard",board);
	}
	
	
	public void updateRead(int num) {
		getSqlSession().update("updateRead",num);	
		System.out.println("updateRead()");
	}
	
	
	public QuestionBoard getArticle(int num) {
		QuestionBoard article=(QuestionBoard)getSqlSession().selectOne("selectBoard", num);
		System.out.println("getArticle()");
		return article;
	}
	
	
	public void updateArticle(QuestionBoard article) {
		getSqlSession().update("updateArticle", article);	
	}
	
	
	public void deleteArticle(int num) {
		getSqlSession().delete("deleteArticle",num);
	}
	
	public Hashtable pageList(String pageNum,int count) {
    	
    	//1.����¡ ó������� ������ hashtable��ü�� ����
    	Hashtable<String,Integer> pgList=new Hashtable<String,Integer>();
    	//ListAction������ ������ ����¡ó���� ��� ó��
	     int pageSize=10;//numPerPage->�������� �����ִ� �Խù���(=���ڵ��) 10
	     int blockSize=10;//pagePerBlock->���� �����ִ� �������� 10
	     
	    //�Խ����� �� ó�� �����Ű�� ������ 1���������� ���
	    if(pageNum==null){
	    	pageNum="1";//default(������ 1�������� �������� �ʾƵ� ������� �ϱ⶧����),���� �ֱ��� ��
	    }
	    int currentPage=Integer.parseInt(pageNum);//"1"->1 ����������(=nowPage)
	    //�޼��� ȣ��->���� ���ڵ��ȣ
	    //                  (1-1)*10+1=1,(2-1)*10+1=11,(3-1)*10+1=21)
	    int startRow=(currentPage-1)*pageSize+1; //���� ���ڵ� ��ȣ
	    int endRow=currentPage*pageSize;//1*10=10,2*10=20,3*10=30 ->������ ���ڵ��ȣ
	    int number=0;//beginPerPage->���������� �����ϴ� �� ó���� ������ �Խù���ȣ
	    System.out.println("���� ���ڵ��(count)=>"+count);
	    //            122-(1-1)*10=122,122-(2-1)*10=112
	    number=count-(currentPage-1)*pageSize;
	    System.out.println("�������� number=>"+number);
	    
	    //����������,����,���������� ���
	    //                      122/10=12.2+1=>12.2+1.0=13.2=13������
	       int pageCount=count/pageSize+(count%pageSize==0?0:1);
	    //���� �������� ���->10->10���,3->3���
	       int startPage=0;//1,2,3,,,,10 [���� �� 10]->11,12,,,,20
	       if(currentPage%blockSize!=0){//1~9,11~19,21~29
	    	   startPage=currentPage/blockSize*blockSize+1;
	       }else{ //10%10=0,(10,20,30)
	    		               //((10/10)-1)*10+1
	    	   startPage=((currentPage/blockSize)-1)*blockSize+1;
	       }
	       int endPage=startPage+blockSize-1;//1+10-1=10
	       System.out.println("startPage="+startPage+",endPage="+endPage);
	       if(endPage > pageCount)
	    	   endPage=pageCount;//������������=����������
	       //����¡ó���� ���� �����->Hashtable,HashMap->ListAction����->�޸𸮿� ����->list.jsp
	       pgList.put("pageSize", pageSize);//<->pgList.get(Ű��)("pageSize")
	       pgList.put("blockSize", blockSize);
	       pgList.put("currentPage", currentPage);
	       pgList.put("startRow", startRow);
	       pgList.put("endRow", endRow);
	       pgList.put("count", count);
	       pgList.put("number", number);
	       pgList.put("startPage", startPage);
	       pgList.put("endPage", endPage);
	       pgList.put("pageCount", pageCount);
	       
	       return pgList;
    }
}
