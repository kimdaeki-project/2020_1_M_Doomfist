package com.doom.s1.paySecond;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PaySecondDAO {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.paySecond.PaySecondDAO.";
	
	

}
