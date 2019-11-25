package dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

public interface ItemDao {
	public List list();
	public List popularList();
}
