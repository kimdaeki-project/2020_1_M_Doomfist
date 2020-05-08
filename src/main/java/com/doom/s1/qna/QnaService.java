package com.doom.s1.qna;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doom.s1.qna.qnaFile.QnaFileDAO;
import com.doom.s1.qna.qnaFile.QnaFileVO;
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
	
	public int qnaJoin(QnaVO qnaVO, MultipartFile[] files) throws Exception{
		
		String path = servletContext.getRealPath("/resources/qna_images");
		qnaVO.setQna_num(qnaDAO.qnaNum());
		System.out.println(qnaVO.getQna_num());
		int result = qnaDAO.qnaJoin(qnaVO);
		
		for(MultipartFile file : files) {
			if(file.getSize()>0) {
				QnaFileVO qnaFileVO = new QnaFileVO();
				String fileName = fileSaver.saveByTransfer(file, path);
				qnaFileVO.setQna_num(qnaVO.getQna_num());
				qnaFileVO.setQf_filename(fileName);
				qnaFileVO.setQf_oriname(file.getOriginalFilename());
				qnaFileVO.setQf_key(1);
			
				qnaFileDAO.fileInsert(qnaFileVO);
				
				
			}
		}
		
		
		return result;
	}
	
	public List<QnaVO> qnaList(Pager pager)throws Exception{
		
		pager.makeRow();
		long totalCount = qnaDAO.qnaCount(pager);
		pager.makePage(totalCount);
		
		return qnaDAO.qnaList(pager);
		
	}
}
