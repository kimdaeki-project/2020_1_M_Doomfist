package com.doom.s1.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.util.Pager;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.member.MemberDAO.";
	
	public int memberJoin(MemberVO memberVO) throws Exception{
		return sqlSession.insert(NAMESPACE+"memberJoin", memberVO);
	}
	
	public int memberDelete(MemberVO memberVO) throws Exception{
		return sqlSession.delete(NAMESPACE+"memberDelete", memberVO);
	}
	
	public MemberVO memberLogin(MemberVO memberVO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"memberLogin", memberVO);
	}
	
	public int memberUpdate(MemberVO memberVO) throws Exception{
		return sqlSession.update(NAMESPACE+"memberUpdate", memberVO);
	}
	
	public Long memberCount(Pager memberPager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"memberCount", memberPager);
	}
	
	public List<MemberVO> memberList(Pager memberPager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"memberList", memberPager);
	}

}