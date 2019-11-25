package dao;


import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class ItemDaoImpl extends SqlSessionDaoSupport implements ItemDao {
  
	public List list(){
		List list=getSqlSession().selectList("list");
		return list;
	}
	
	
	public List popularList() {
		List list=getSqlSession().selectList("popularlist");
		return list;
	}
}
