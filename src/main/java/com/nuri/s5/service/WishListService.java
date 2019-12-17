package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.WishListDAO;
import com.nuri.s5.model.WishListVO;

@Service
public class WishListService {
	
	@Inject
	private WishListDAO wishListDAO;
	
	public List<WishListVO> listShow(WishListVO wishListVO)throws Exception{
		return wishListDAO.listShow(wishListVO);
	}
	
	public int listInsert(WishListVO wishListVO)throws Exception{
		return wishListDAO.listInsert(wishListVO);
	}
	
	public int listDelete(WishListVO wishListVO)throws Exception{
		return wishListDAO.listDelete(wishListVO);
	}

}
