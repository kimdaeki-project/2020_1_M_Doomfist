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
	
	public List<StoreListVO> listCheck(Pager pager)throws Exception{
		pager.setPerpage(9);
		pager.makeRow();
		long totalCount = storeListDAO.listCount(pager);
		pager.makePage(totalCount);
		
		return storeListDAO.listCheck(pager);		
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
