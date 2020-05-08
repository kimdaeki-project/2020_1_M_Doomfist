package com.doom.s1.board;

import java.util.List;

import com.doom.s1.util.Pager;

public interface BoardDAO {
	//멤버변수 상수
	//추상메서드
	//public abstract 
	//생략해도 자동으로 만들어짐
	
	//count
	public long boardCount(Pager pager)throws Exception;
	
	//List
	public List<BoardVO> boardList(Pager pager) throws Exception;
	
	//select
	public BoardVO boardSelect(long num) throws Exception;
	
	//insert
	public int boardWrite(BoardVO boardVO)throws Exception;

	//delete
	public int boardDelete(long num)throws Exception;
	
	//update
	public int boardUpdate(BoardVO boardVO) throws Exception;
	
	//likes update
	public int likesUpdate(long num)throws Exception;
	
	
}
