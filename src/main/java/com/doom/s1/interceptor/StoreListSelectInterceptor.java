package com.doom.s1.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.doom.s1.storeList.StoreListDAO;
import com.doom.s1.storeList.StoreListVO;

@Component
public class StoreListSelectInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private StoreListDAO storeListDAO;
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response)throws Exception{
		boolean check =true;
		long st_key= Long.parseLong(request.getParameter("st_key"));
		System.out.println(st_key);
		List<StoreListVO> ar = storeListDAO.select_stKey();
		for (StoreListVO ar1 : ar) {
			if(ar1.getSt_key()!=st_key) {
				check= false;
				request.setAttribute("result", "선택하신 식당은 존재하지 않습니다.");
				request.setAttribute("path","../");
				
				RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
				view.forward(request, response);
			}
		}
		
		
		return check;
	}

}
