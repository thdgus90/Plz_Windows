package dao;


import org.springframework.stereotype.Repository;

@Repository    //인터페이스안에는 내용을 쓸 수없음. 선언만가능
	public interface UserDAO {
	    public UserVO selectById(String id) ;
	    
	}