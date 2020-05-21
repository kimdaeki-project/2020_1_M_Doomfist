package com.doom.s1.qnacheck;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.doom.s1.qna.QnaVO;
import com.doom.s1.qna.qnaFile.QnaFileVO;
import com.doom.s1.qna.tag.QnaTagVO;
import com.doom.s1.qnamenu.QnaMenuVO;
import com.doom.s1.storeList.StoreListVO;
import com.doom.s1.storeList.file.StoreFileVO;
import com.doom.s1.storeList.storeMenu.StoreMenuVO;
import com.doom.s1.storeList.tag.StoreTagVO;

@Repository
public class QnaCheckDAO {
	@Autowired
	private SqlSession session;
	private final String NAMESPACE="com.doom.s1.qnacheck.QnaCheckDAO.";
	
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		return session.insert(NAMESPACE+"qnaCheckInsert",qnaCheckVO);
	}
	public int qnaOK(long qna_storekey)throws Exception{
		return session.insert(NAMESPACE+"qnaOK",qna_storekey);
	}
	
	public int qnaOkDel(long qna_storekey)throws Exception{
		return session.delete(NAMESPACE+"qnaOkDel",qna_storekey);
	}
	
	public int storeFileInsert(StoreFileVO storeFileVO)throws Exception{
		return session.insert(NAMESPACE+"storeFileInsert",storeFileVO);
	}
	
	public int storeMenuInsert(StoreMenuVO menuVO)throws Exception{
		return session.insert(NAMESPACE+"storeMenuInsert",menuVO);
	}
	
	public int storeTagInsert(StoreTagVO storeTagVO)throws Exception{
		return session.insert(NAMESPACE+"storeTagInsert", storeTagVO);
	}

	public List<QnaCheckVO> Statuscheck(String id)throws Exception{
		return session.selectList(NAMESPACE+"Statuscheck",id);
	}
	
	public List<QnaFileVO> selctFile(long qna_storekey)throws Exception{
		return session.selectList(NAMESPACE+"selctFile",qna_storekey);
	}
	
	public List<QnaMenuVO> selectMenu(long qna_storekey)throws Exception{
		return session.selectList(NAMESPACE+"selectMenu",qna_storekey);
	}
	
	public List<QnaTagVO> selectTag(long qna_storekey)throws Exception{
		return session.selectList(NAMESPACE+"selectTag", qna_storekey);
	}
	
	public List<StoreListVO> keycompare(String id)throws Exception{
		return session.selectList(NAMESPACE+"keycompare",id);
	}


}
