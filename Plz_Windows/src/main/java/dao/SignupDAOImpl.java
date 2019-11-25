package dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import logic.SignVO;

@Repository
public class SignupDAOImpl extends SqlSessionDaoSupport implements SignupDAO {
	
	
	public void insertMember(SignVO signVO) {
		// TODO Auto-generated method stub
		SqlSession session = getSqlSession();
		session.insert("insertMember",signVO);
	}

}
