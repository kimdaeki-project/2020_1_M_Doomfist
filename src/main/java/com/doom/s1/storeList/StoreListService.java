package com.doom.s1.storeList;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.doom.s1.storeList.file.StoreFileDAO;
import com.doom.s1.storeList.file.StoreFileVO;
import com.doom.s1.storeList.reviewFile.ReviewFileDAO;
import com.doom.s1.storeList.reviewFile.ReviewFileVO;
import com.doom.s1.storeList.storeMenu.StoreMenuDAO;
import com.doom.s1.storeList.storeMenu.StoreMenuVO;
import com.doom.s1.storeList.tag.StoreTagDAO;
import com.doom.s1.storeList.tag.StoreTagVO;
import com.doom.s1.util.FileSaver;
import com.doom.s1.util.Pager;

@Service
public class StoreListService {
	
	@Autowired
	private StoreListDAO storeListDAO;
	@Autowired
	private StoreMenuDAO storeMenuDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileSaver fileSaver;
	@Autowired
	private ReviewFileDAO reviewFileDAO;
	@Autowired
	private StoreFileDAO storeFileDAO;
	@Autowired
	private StoreTagDAO storeTagDAO;
	
	
	public int storeDelete(List<String> list) throws Exception{
		return storeListDAO.storeDelete(list);
	}
	
	public List<StoreTagVO> tagNumSelect(Pager pager)throws Exception{
		return storeTagDAO.tagNumSelect(pager);
	}
	
	public StoreListVO listCheck2(Pager pager, long st_key)throws Exception{
//		pager.setPerpage(9);
//		pager.makeRow();
//		long totalCount = storeListDAO.listCount2(pager);
//		pager.makePage(totalCount);
		
		StoreListVO storeListVO=storeListDAO.listCheck2(st_key);	
		
		return storeListVO;
	}
	
	public List<StoreListVO> listCheck(Pager pager)throws Exception{
		pager.setPerpage(9);
		pager.makeRow();
		long totalCount = storeListDAO.listCount(pager);
//		System.out.println("첫번째 토탈카운트"+totalCount);
//		if(totalCount==0) {
//			totalCount = storeListDAO.listCount2(pager);
//			System.out.println("두번째 토탈카운트"+totalCount);
//		}
		pager.makePage(totalCount);
//		System.out.println("startRow :"+pager.getStartRow());
//		System.out.println("lastRow :" +pager.getLastRow());
//		System.out.println("startNum :"+pager.getStartNum());
//		System.out.println("lastNum :" +pager.getLastNum());
		
		List<StoreListVO>storeListVOs =storeListDAO.listCheck(pager);	
		
		return storeListVOs;
	}
	
	public List<StoreFileVO> storeFileSelect(long st_key)throws Exception{
		return storeFileDAO.storeFileSelect(st_key);
	}
	
	public List<StoreListVO> storeReviewSelect(long st_key)throws Exception{
		return storeListDAO.storeReviewSelect(st_key);
	}
	
	public long storeReviewDelete(long re_num)throws Exception{
		return storeListDAO.storeReviewDelete(re_num);
	}
		
	public long storeReviewWrite(StoreListVO storeListVO, MultipartFile[] files)throws Exception{
		
		String path = servletContext.getRealPath("/resources/uploadNotice");
		System.out.println(path);
		
		//sequence 번호받기
		storeListVO.setRe_num(storeListDAO.reviewNum());
		//storereview테이블 insert
		long result = storeListDAO.storeReviewWrite(storeListVO);
		
		for (MultipartFile file : files) {
			if(file.getSize()>0) {
				ReviewFileVO reviewFileVO = new ReviewFileVO();
				String refile_name = fileSaver.saveByTransfer(file, path);
				reviewFileVO.setRe_num(storeListVO.getRe_num());
				reviewFileVO.setRefile_name(refile_name);
				reviewFileVO.setRefile_oriname(file.getOriginalFilename());
				reviewFileDAO.fileInsert(reviewFileVO);
			}
		}
		
		return result;
	}
	

	public StoreListVO storeListSelect(long st_key)throws Exception{
		return storeListDAO.storeListSelect(st_key);
	}
	
	public List<StoreMenuVO> storeMenuSelect(long st_key)throws Exception{
		return storeMenuDAO.storeMenuList(st_key);
	}

	public List<ReviewFileVO> reviewFileSelect(long re_num)throws Exception{
		return reviewFileDAO.fileSelect(re_num);
	}
	
	public List<StoreTagVO> storeTagSelect(long st_key)throws Exception{
		return storeTagDAO.storeTagSelect(st_key);
	}
	
}
