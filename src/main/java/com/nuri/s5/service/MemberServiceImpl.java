package com.nuri.s5.service;

import java.util.List;

import javax.inject.Inject;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.nuri.s5.dao.MemberDAOImpl;
import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.TourCalendarVO;
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
	public int memberAdminDelete(MemberVO memberVO)throws Exception{
		
		return memberDAOImpl.memberAdminDelete(memberVO);
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
	public List<MemberVO> memberList(Pager pager)throws Exception{
		pager.makeRow();
		pager.makePage(memberDAOImpl.memberCount(pager));
		return memberDAOImpl.memberList(pager);
	}
	@Override
	public int memberCount(Pager pager) throws Exception{
		return memberDAOImpl.memberCount(pager);
	}
	@Override
	public int memberCountUpdate(MemberVO memberVO)throws Exception{
		return memberDAOImpl.memberCountUpdate(memberVO);
	}
	
	//투어 추가
	@Override
	public int touradd(TourCalendarVO tourCalendarVO)throws Exception{
		return memberDAOImpl.touradd(tourCalendarVO);
	}
	@Override
	public int tourDelete(TourCalendarVO tourCalendarVO)throws Exception{
		return memberDAOImpl.tourDelete(tourCalendarVO);
	}
	

}
