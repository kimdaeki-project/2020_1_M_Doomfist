package com.doom.s1.payFirst;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.paySecond.PaySecondVO;

@Repository
public class PayFirstDAO {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.payFirst.PayFirstDAO.";
	
	public int payFirstInsert(PayFirstVO firstVO) throws Exception{
		return session.insert(NAMESPACE+"payFirstInsert",firstVO);
		
	}
	
	public PayFirstVO payFirstSelect(long st_key) throws Exception{
		return session.selectOne(NAMESPACE+"payFirstSelect", st_key);
		
	}
	
	public List<PaySecondVO> payReceipt(String id)throws Exception{
		return session.selectList(NAMESPACE+"payReceipt", id);
	}
	
	public List<PayFirstVO> payAll(String id) throws Exception {
		return session.selectList(NAMESPACE+"payAll",id);
	}

}
