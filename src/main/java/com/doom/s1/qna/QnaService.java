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
	
	public int qnaJoin(QnaVO qnaVO, MultipartFile[] files,long [] qm_price, String [] qm_menu) throws Exception{
		
		String path = servletContext.getRealPath("/resources/qna_images");
		qnaVO.setQna_storekey(qnaDAO.qnaNum());
		System.out.println(qnaVO.getQna_storekey());
		int result = qnaDAO.qnaJoin(qnaVO);
		
		for(MultipartFile file : files) {
			if(file.getSize()>0) {
				QnaFileVO qnaFileVO = new QnaFileVO();
				String fileName = fileSaver.saveByTransfer(file, path);
				System.out.println(path);
				qnaFileVO.setQna_storekey(qnaVO.getQna_storekey());
				qnaFileVO.setQf_filename(fileName);
				qnaFileVO.setQf_oriname(file.getOriginalFilename());
				qnaFileVO.setQf_key(1);
			
				qnaFileDAO.fileInsert(qnaFileVO);
				
				
			}
		}
		
		QnaMenuVO qnaMenuVO = new QnaMenuVO();
		for (String menu : qm_menu) {
			qnaMenuVO.setQm_menu(menu);
			qnaMenuVO.setQna_storekey(qnaVO.getQna_storekey());
			
			
		}
		for (long price : qm_price) {
			qnaMenuVO.setQm_price(price);
			qnaMenuVO.setQna_storekey(qnaVO.getQna_storekey());
			
			qnaMenuDAO.qnaMenuInsert(qnaMenuVO);	
		}

		
		return result;
	}
	
	public List<QnaVO> qnaList(Pager pager)throws Exception{
		
		pager.makeRow();
		long totalCount = qnaDAO.qnaCount(pager);
		pager.makePage(totalCount);
		
		return qnaDAO.qnaList(pager);
		
	}
	
	public QnaVO qnaSelect(long qna_storekey)throws Exception{
		return qnaDAO.qnaSelect(qna_storekey);
	}
}
