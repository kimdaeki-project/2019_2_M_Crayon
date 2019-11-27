package com.nuri.s5.service;

import javax.servlet.http.HttpSession;

import com.nuri.s5.model.MemberVO;

public interface MemberService {
	
	//memberJoin
		public int memberJoin(MemberVO memberVO,HttpSession session)throws Exception;
		//memberLogin
		public MemberVO memberLogin(MemberVO memberVO)throws Exception;
		//memberUpdate
		public int memberUpdate(MemberVO memberVO)throws Exception;
		//memberDelete
		public int memberDelete(MemberVO memberVO)throws Exception;
		//memberSelect
		public MemberVO memberSelect(MemberVO memberVO)throws Exception;
		//memberidCheck
		public MemberVO memberIdCheck(MemberVO memberVO)throws Exception;
}