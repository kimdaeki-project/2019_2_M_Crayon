package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.MemberDAOImpl;
import com.nuri.s5.model.MemberVO;
import com.nuri.s5.util.Pager;
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAOImpl memberDAOImpl;
	
	@Override
	public int memberJoin(MemberVO memberVO, HttpSession session) throws Exception {
		// TODO Auto-generated method stub
		return memberDAOImpl.memberJoin(memberVO);
	}

	@Override
	public MemberVO memberLogin(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAOImpl.memberLogin(memberVO);
	}

	@Override
	public int memberUpdate(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAOImpl.memberUpdate(memberVO);
	}

	@Override
	public int memberDelete(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAOImpl.memberDelete(memberVO);
	}

	@Override
	public MemberVO memberSelect(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberVO memberIdCheck(MemberVO memberVO) throws Exception {
		// TODO Auto-generated method stub
		return memberDAOImpl.memberIdCheck(memberVO);
	}
	
	@Override
	public MemberVO memberSearchID(MemberVO memberVO)throws Exception{
		return memberDAOImpl.memberSearchID(memberVO);
	}
	@Override
	public MemberVO memberSearchPW(MemberVO memberVO)throws Exception{
		return memberDAOImpl.memberSearchPW(memberVO);
	}

	@Override
	public int memberKakao(MemberVO memberVO, HttpSession session) throws Exception {
		return memberDAOImpl.memberKakao(memberVO);
	}
	
	@Override
	public MemberVO selectKakao(MemberVO memberVO, HttpSession session)throws Exception{
		return memberDAOImpl.selectKakao(memberVO);
	}
	@Override
	public List<MemberVO> adminPage(Pager pager)throws Exception{
		pager.makeRow();
		pager.makePage(memberDAOImpl.adminCount(pager));
		return memberDAOImpl.adminPage(pager);
	}
	@Override
	public int adminCount(Pager pager) throws Exception{
		return memberDAOImpl.adminCount(pager);
	}
	@Override
	public int adminCountUpdate(MemberVO memberVO)throws Exception{
		return memberDAOImpl.adminCountUpdate(memberVO);
	}
	

}
