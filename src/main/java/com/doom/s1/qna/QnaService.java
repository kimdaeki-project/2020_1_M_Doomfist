package com.doom.s1.qna;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doom.s1.qna.qnaFile.QnaFileDAO;
import com.doom.s1.qna.qnaFile.QnaFileVO;
import com.doom.s1.qnamenu.QnaMenuDAO;
import com.doom.s1.qnamenu.QnaMenuVO;
import com.doom.s1.util.FileSaver;
import com.doom.s1.util.Pager;

@Service
public class QnaService {
	
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private QnaFileDAO qnaFileDAO;
	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private QnaMenuDAO qnaMenuDAO;
	
	public int qnaJoin(QnaVO qnaVO, MultipartFile[] files, QnaMenuVO qnaMenuVO) throws Exception{
		
		String path = servletContext.getRealPath("/resources/qna_images");
		qnaVO.setQna_storeKey(qnaDAO.qnaNum());
		System.out.println(qnaVO.getQna_storeKey());
		int result = qnaDAO.qnaJoin(qnaVO);
		
		for(MultipartFile file : files) {
			if(file.getSize()>0) {
				QnaFileVO qnaFileVO = new QnaFileVO();
				String fileName = fileSaver.saveByTransfer(file, path);
				qnaFileVO.setQna_num(qnaVO.getQna_storeKey());
				qnaFileVO.setQf_filename(fileName);
				qnaFileVO.setQf_oriname(file.getOriginalFilename());
				qnaFileVO.setQf_key(1);
			
				qnaFileDAO.fileInsert(qnaFileVO);
				
				
			}
		}
		// qna 메뉴 연결
//		qnaMenuVO.setQna_num(qnaVO.getQna_num());
//		qnaMenuVO.setQm_menu(qnaMenuVO.getQm_menu());
//		qnaMenuVO.getQm_price(qnaMenuVO.getQm_price());
//		qnaMenuDAO.qnaMenuInsert(qnaMenuVO);
		
		
		return result;
	}
	
	public List<QnaVO> qnaList(Pager pager)throws Exception{
		
		pager.makeRow();
		long totalCount = qnaDAO.qnaCount(pager);
		pager.makePage(totalCount);
		
		return qnaDAO.qnaList(pager);
		
	}
	
	public QnaVO qnaSelect(long qna_num)throws Exception{
		return qnaDAO.qnaSelect(qna_num);
	}
}
