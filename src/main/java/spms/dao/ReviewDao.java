package spms.dao;

import java.util.HashMap;
import java.util.List;

import spms.vo.Review;

public interface ReviewDao {
	List<Review> selectList(HashMap<String, Object> paramMap) throws Exception;
	
	List<Review> selectList(int no) throws Exception;
	
	int selectOneCount(HashMap<String, Object> paramMap) throws Exception ;
	
	int insert(Review review) throws Exception ;
	
	int delete(HashMap<String, Object> paramMap) throws Exception ;
}
