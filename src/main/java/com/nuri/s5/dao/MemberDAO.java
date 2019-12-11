package com.nuri.s5.dao;

import java.util.List;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.util.Pager;

public interface MemberDAO {
	
	//카카오
	public int memberKakao(MemberVO memberVO) throws Exception;
	//카카오 아이디 찾기
	public MemberVO selectKakao(MemberVO memberVO) throws Exception;
	
	
	//memberJoin
	public int memberJoin(MemberVO memberVO)throws Exception;
	//memberLogin
	public MemberVO memberLogin(MemberVO memberVO)throws Exception;
	//memberUpdate
	public int memberUpdate(MemberVO memberVO)throws Exception;
	//memberDelete
	public int memberDelete(MemberVO memberVO)throws Exception;
	//memberAdminDelete
	public int memberAdminDelete(MemberVO memberVO)throws Exception;
	//memberSelect
	public MemberVO memberSelect(MemberVO memberVO)throws Exception;
	//memberidCheck
	public MemberVO memberIdCheck(MemberVO memberVO)throws Exception;
	//memberSearchID(이름,생일)
	public MemberVO memberSearchID(MemberVO memberVO)throws Exception;
	//memberSearchPW(이메일,생일)
	public MemberVO memberSearchPW(MemberVO memberVO)throws Exception;
	//adminPage(List)
	public List<MemberVO> memberList(Pager pager)throws Exception;
	//adminCount
	public int memberCount(Pager pager) throws Exception;
	//adminCountUpdate
	public int memberCountUpdate(MemberVO memberVO)throws Exception;
	
}
