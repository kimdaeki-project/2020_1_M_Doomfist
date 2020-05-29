package com.doom.s1.qnacheck;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doom.s1.qna.QnaVO;
import com.doom.s1.qna.qnaFile.QnaFileVO;
import com.doom.s1.qnamenu.QnaMenuVO;
import com.doom.s1.storeList.StoreListVO;
import com.doom.s1.storeList.file.StoreFileVO;
import com.doom.s1.storeList.storeMenu.StoreMenuVO;

@Service
public class QnaCheckService {
	@Autowired
	private QnaCheckDAO qnaCheckDAO;

	
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		
		return qnaCheckDAO.qnaCheckInsert(qnaCheckVO);
		
	}

	
	public int qnaOK(long qna_storekey)throws Exception{
		
		int result = qnaCheckDAO.qnaOK(qna_storekey);
		List<QnaFileVO> qnaFileVO = qnaCheckDAO.selctFile(qna_storekey);
		
		for (QnaFileVO qnaFileVO2 : qnaFileVO) {
			StoreFileVO storeFileVO = new StoreFileVO();
			storeFileVO.setStfile_name(qnaFileVO2.getQf_filename());
			storeFileVO.setStfile_oriname(qnaFileVO2.getQf_oriname());
			storeFileVO.setSt_key(qna_storekey);
			
			qnaCheckDAO.storeFileInsert(storeFileVO);
		}
		List<QnaMenuVO> qnaMenuVO = qnaCheckDAO.selectMenu(qna_storekey);
		
		for (QnaMenuVO qnaMenuVO2 : qnaMenuVO) {
			StoreMenuVO menuVO = new StoreMenuVO();
			menuVO.setSm_menu(qnaMenuVO2.getQm_menu());
			menuVO.setSm_price(qnaMenuVO2.getQm_price());
			menuVO.setSt_key(qna_storekey);
			
			qnaCheckDAO.storeMenuInsert(menuVO);
		}
		
		
		
		qnaCheckDAO.qnaOkDel(qna_storekey);
		
	
		return result;
	}
	
	public int qnaNo(long qna_storekey)throws Exception{
		
		int result = qnaCheckDAO.qnaOkDel(qna_storekey);
		
		return result;
	}
	
	public List<QnaCheckVO> Statuscheck(String id)throws Exception{
		return qnaCheckDAO.Statuscheck(id);
	}
	
	public List<StoreListVO> keycompare(String id)throws Exception{
		return qnaCheckDAO.keycompare(id);
	}
	

	

}
