package com.doom.s1.qnacheck;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.doom.s1.qna.QnaVO;
import com.doom.s1.qna.qnaFile.QnaFileVO;
import com.doom.s1.storeList.StoreListVO;

@Service
public class QnaCheckService {
	@Autowired
	private QnaCheckDAO qnaCheckDAO;

	
	public int qnaCheckInsert(QnaCheckVO qnaCheckVO)throws Exception{
		
		return qnaCheckDAO.qnaCheckInsert(qnaCheckVO);
		
	}

	
	public int qnaOK(long qna_storekey)throws Exception{
		
		
		List<QnaFileVO> qnaFileVO = qnaCheckDAO.selctFile(qna_storekey);
		
		for (QnaFileVO qnaFileVO2 : qnaFileVO) {
			QnaFileVO vo = new QnaFileVO();
			vo.setQf_filename(qnaFileVO2.getQf_filename());
			vo.setQf_key(qnaFileVO2.getQf_key());
			vo.setQf_oriname(qnaFileVO2.getQf_oriname());
			vo.setQna_storekey(qnaFileVO2.getQna_storekey());
			

			qnaCheckDAO.storeFileInsert(vo);
			
		}
		
	
		return 0;
	}
	
	public int qnaNo(long qna_storekey)throws Exception{
		
		int result = qnaCheckDAO.qnaOkDel(qna_storekey);
		
		return result;
	}
	
	public List<QnaVO> Statuscheck(String id)throws Exception{
		return qnaCheckDAO.Statuscheck(id);
	}
	


}
