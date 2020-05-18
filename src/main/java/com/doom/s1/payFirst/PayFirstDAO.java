package com.doom.s1.payFirst;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	
	public long payFirstDelete(long pf_check)throws Exception{
		return session.delete(NAMESPACE+"payFirstDelete", pf_check);
		
	}

}
