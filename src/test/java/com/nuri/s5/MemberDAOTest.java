package com.nuri.s5;

import static org.junit.Assert.*;

import java.sql.Date;

import javax.inject.Inject;

import org.junit.Test;

import com.nuri.s5.dao.MemberDAOImpl;
import com.nuri.s5.model.MemberVO;

public class MemberDAOTest extends TestAbstractCase{

	@Inject
	private MemberDAOImpl memberDAOImpl;
	
	//@Test
	public void Join()throws Exception {
		MemberVO memberVO = new MemberVO();
		memberVO.setEmail("test@g.com");
		memberVO.setBirth("1999-12-13");
		memberVO.setName("test");
		memberVO.setPw("test");
		
		int result = memberDAOImpl.memberJoin(memberVO);
		assertEquals(1, result);
	}

	//@Test
	public void update()throws Exception{
		MemberVO memberVO = new MemberVO();
		
		memberVO.setEmail("admin@g.com");
		memberVO.setName("admin");
		memberVO.setPw("admin");
		
		int result = memberDAOImpl.memberUpdate(memberVO);
		assertEquals(1,	result);
	}
	
	@Test
	public void delete()throws Exception{
		MemberVO memberVO = new MemberVO();
		
		memberVO.setEmail("wow@g.com");
		
		int result = memberDAOImpl.memberDelete(memberVO);
		assertEquals(1, result);
	}
	
	
	
}
