package com.doom.s1.board;

import java.util.List;


import com.doom.s1.util.Pager;
import com.doom.s1.board.BoardVO;

public interface BoardService {

	public List<BoardVO> boardList(Pager pager)throws Exception;
	
	//Select
		public BoardVO boardSelect(long num) throws Exception;
		
		//Insert
		public int boardWrite(BoardVO boardVO) throws Exception;
		
		//update
		public int boardUpdate(BoardVO boardVO)throws Exception;
		
		//delete
		public int boardDelete(long num)throws Exception;
		
}
