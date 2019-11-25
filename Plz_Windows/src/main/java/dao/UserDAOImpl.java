package dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import exception.IdPasswordNotMatchingException;
import util.AuthInfo;
import util.LoginCommand;

@Repository
public class UserDAOImpl {

	protected Log log = LogFactory.getLog(UserDAO.class);
    
    @Autowired
    private SqlSessionTemplate sqlSession;
      
    protected void printQueryId(String queryId) {
        if(log.isDebugEnabled()){
            log.debug("\t QueryId  \t:  " + queryId);
        }
    }
      
    public Object insert(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.insert(queryId, params);
    }
      
    public Object update(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.update(queryId, params);
    }
      
    public Object delete(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.delete(queryId, params);
    }
      
    public Object selectOne(String queryId){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId);
    }
      
    public Object selectOne(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectOne(queryId, params);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId){
        printQueryId(queryId);
        return sqlSession.selectList(queryId);
    }
      
    @SuppressWarnings("rawtypes")
    public List selectList(String queryId, Object params){
        printQueryId(queryId);
        return sqlSession.selectList(queryId,params);
    }
    
    //본래 UserServiceImpl내용 기재


    @Inject
    private UserDAO userDAO;
 
    public AuthInfo loginAuth(LoginCommand loginCommand) throws Exception {
        UserVO user = userDAO.selectById(loginCommand.getId());
        if(user == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!user.matchPassword(loginCommand.getPw())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(user.getID(), user.getNAME(), user.getGRADE());
    }
    
}
