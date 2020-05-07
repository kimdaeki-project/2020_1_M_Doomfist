package com.doom.s1.notice;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.board.BoardDAO;
import com.doom.s1.board.BoardVO;
import com.doom.s1.util.Pager;

@Repository
public class NoticeDAO implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.doom.s1.notice.NoticeDAO.";
	
	// 시퀀스 번호 알아낼려는거.
	public long boardNum() throws Exception{
		return sqlSession.selectOne(NAMESPACE+"boardNum");
		
	}
	
	@Override
	public long boardCount(Pager pager) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"boardCount", pager);
	}
	
	@Override
	public List<BoardVO> boardList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"boardList", pager);
	}

	@Override
	public BoardVO boardSelect(long num) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"boardSelect", num);
	}

	@Override
	public int boardWrite(BoardVO boardVO) throws Exception {
		return sqlSession.insert(NAMESPACE+"boardWrite", boardVO);
		
	}
	
	@Override
	public int boardDelete(long num) throws Exception {
		return sqlSession.delete(NAMESPACE+"boardDelete", num);
	}
	
	@Override
	public int boardUpdate(BoardVO boardVO) throws Exception {
		return sqlSession.update(NAMESPACE+"boardUpdate", boardVO);
	}
	
	@Override
	public int likesUpdate(long num) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.update(NAMESPACE+"likesUpdate", num);
	}
	

}
