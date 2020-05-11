package com.doom.s1.qna.qnaFile;

import javax.servlet.Servlet;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doom.s1.qna.QnaDAO;
import com.doom.s1.util.FileSaver;

@Service
public class QnaFileService {
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private QnaFileDAO qnaFileDAO;
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private QnaDAO qnaDAO;
	
	
	public String fileInsert(QnaFileVO qnaFileVO,MultipartFile files)throws Exception{
		String path = servletContext.getRealPath("/resources/summer");
		path = fileSaver.saveByTransfer(files, path);
		path = servletContext.getContextPath()+"/resources/summer"+path;
		qnaFileVO.setQna_storekey(qnaDAO.qnaNum());
		
		return path;
	}
}
