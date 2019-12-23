package com.nuri.s5.controller;

import java.text.NumberFormat;
import java.util.List;
import java.util.Properties;

import javax.inject.Inject;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nuri.s5.model.MemberVO;
import com.nuri.s5.model.ReservationVO;
import com.nuri.s5.model.TourCalendarVO;
import com.nuri.s5.model.TourFilesVO;
import com.nuri.s5.model.TourNoticeVO;
import com.nuri.s5.model.TourVO;
import com.nuri.s5.model.VReservationVO;
import com.nuri.s5.service.TourCalendarServiceImpl;
import com.nuri.s5.service.TourServiceImpl;
import com.nuri.s5.util.Pager;

@Controller
@RequestMapping("/tour/**")
public class TourController {

	
	@Inject
	private TourServiceImpl tourServiceImpl;
	@Inject
	private TourCalendarServiceImpl tourCalendarServiceImpl;
	
	/* tourCalendar 예약폼*/

	@ResponseBody
	
	@GetMapping(value="VReservationUpdate2")
	public void VReservationUpdate2(VReservationVO vReservationVO,HttpServletRequest request, ModelMap mo) throws Exception{

		String host = "smtp.naver.com";
	    final String username = "sscrayon"; //네이버 아이디를 입력해주세요. @naver.com은 입력하지 마시구요. 
	    final String password = "sscrayon!!"; //네이버 이메일 비밀번호를 입력해주세요. 
	    int port=465; //포트번호 
	    
	    String name = vReservationVO.getName();
	    int price = vReservationVO.getVprice();
	    
	    String goods_name = "파리 VIP 맞춤 여행";
	    
	    String recipient = vReservationVO.getTourEmail(); //받는 사람의 메일주소를 입력해주세요. 
	    String subject = "Crayon :"+name+"님의 예약이 확정되었습니다.\r\n"; //메일 제목 입력해주세요. 
	    String body = "안녕하세요."+name+"님,\r\n"+
		    
		"\r\n"+
		goods_name+"예약이 확정되어 바우처를 보내드립니다.\r\n" +
		"고객님의 VIP가격은 "+price+"입니다.\r\n"+
		"\r\n"+
		"해당 상품을 이용하기 위해 필요한 정보는 마이페이지에 안내되어 있으니 이용전에 꼭 확인해주세요.\r\n"+
		"\r\n"+
		goods_name+"\r\n"+
		
		"\r\n"+
		"만약 바우처의 내용이 잘못 기재되어 있거나 궁금한 점이 있다면 아래 연락처로 문의해주세요.\r\n"+
		"\r\n"+
		"쌍용 크레파스 Travel:\r\n"+
		"TEL  070-4645-8279 \r\n"+
		"카카오톡 @ssangyong@crayon.com\r\n"+
		"\r\n"+
		"쌍용크레파스와 함께 더욱 즐겁고 신나는 여행이 되었으면 좋겠습니다!:)\r\n"+
		"\r\n"+
		"고맙습니다.\r\n"+
		"\r\n"+
		
		"localhost/s5/member/memberLogin\r\n"; //메일 내용 입력해주세요. 
		
		Properties props = System.getProperties(); // 정보를 담기 위한 객체 생성 
		
		// SMTP 서버 정보 설정 
	      props.put("mail.smtp.host", host); 
	      props.put("mail.smtp.port", port); 
	      props.put("mail.smtp.auth", "true"); 
	      props.put("mail.smtp.ssl.enable", "true"); 
	      props.put("mail.smtp.ssl.trust", host); 
	      //Session 생성 
	      Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() { 
	         String un=username; 
	         String pw=password; 
	         protected javax.mail.PasswordAuthentication getPasswordAuthentication() { 
	            return new javax.mail.PasswordAuthentication(un, pw);
	            } 
	         }); 
	      session.setDebug(true); //for debug
	      
	      Message mimeMessage = new MimeMessage(session); //MimeMessage 생성 
	      mimeMessage.setFrom(new InternetAddress("sscrayon@naver.com")); //발신자 셋팅 , 보내는 사람의 이메일주소를 한번 더 입력합니다. 이때는 이메일 풀 주소를 다 작성해주세요. 
	      mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); //수신자셋팅 //.TO 외에 .CC(참조) .BCC(숨은참조) 도 있음
	      
	      
	      mimeMessage.setSubject(subject); //제목셋팅 
	      mimeMessage.setText(body); //내용셋팅 
	      Transport.send(mimeMessage); //javax.mail.Transport.send() 이용
	      
	}
	
	
	
	
	@PostMapping(value="VReservationUpdate1")
	public int VReservationUpdate1(VReservationVO vReservationVO) throws Exception{
		System.out.println(vReservationVO.getVipno());
		System.out.println(vReservationVO.getVprice());
		

		int result = tourServiceImpl.vReservationUpdate1(vReservationVO);
		
		return result;
	}
	
	@GetMapping(value = "ReservationResult")
	public ModelAndView ReservationResult(Pager pager, ReservationVO reservationVO)throws Exception{
	pager.setPerPage(4);
	ModelAndView mv = new ModelAndView();
	List<ReservationVO> ar = tourServiceImpl.ReservationList(pager);
	mv.addObject("list", ar);
	mv.setViewName("tour/ReservationResult");
	return mv;
	}

	@GetMapping("VReservationList")
	public ModelAndView VReservationList(VReservationVO vReservationVO, Pager pager) throws Exception{
		ModelAndView mv= new ModelAndView();
		List<VReservationVO> ar = tourServiceImpl.vReservationList(vReservationVO,pager);
		mv.addObject("list",ar);
		mv.addObject("pager", pager);
		mv.setViewName("tour/VReservationList");
		
		return mv;
	}

	
	@GetMapping(value = "vReservation")
	public ModelAndView vReservation(VReservationVO vReservationVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		String content =vReservationVO.getContent();
		mv.addObject("content",content);
		
		return mv;
	}
	
	@PostMapping(value="vReservation")
	public ModelAndView vReservation(VReservationVO vReservationVO,HttpSession session) throws Exception {
		ModelAndView mv =  new ModelAndView();
		int result = tourServiceImpl.vReservation(vReservationVO, session);
		System.out.println(result);
		
		mv.setViewName("redirect:../");
		return mv;
	}
	


	@GetMapping(value = "Reservation")
	public void Reservation(ReservationVO reservationVO) throws Exception {
		
	}
	
	@PostMapping(value = "Reservation")
	public ModelAndView Reservation(TourCalendarVO tourCalendarVO,ReservationVO reservationVO,HttpSession session) throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		reservationVO.setTourNum(tourCalendarVO.getTourNum());
		
		int result = tourServiceImpl.Reservation(reservationVO, session);
		System.out.println(result);
		mv.addObject("dto", reservationVO);
		String msg = "Fail";
		if (result > 0) {
			msg = "Success";
		}
		mv.addObject("msg", msg);
		mv.addObject("path", "../pay/kakaoPay");
		mv.setViewName("common/common_result");
		return mv;
	}
	
	@GetMapping(value = "ReservationDelete")
	public ModelAndView ReservationDelete (ReservationVO reservationVO) throws Exception{
		int result = tourServiceImpl.ReservationDelete(reservationVO);
		String msg = "Fail";

		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
		
	}
	
	
	@GetMapping(value = "VReservationDelete")
	public ModelAndView VReservationDelete (VReservationVO vReservationVO) throws Exception{
		int result = tourServiceImpl.VReservationDelete(vReservationVO);
		String msg = "Fail";

		ModelAndView mv = new ModelAndView();
		if (result > 0) {
			msg = "Success";
		}

		mv.addObject("msg", msg);
		mv.addObject("path", "../");
		mv.setViewName("common/common_result");
		return mv;
		
	}
	
	
	
	
	
	
	
	

	

	@GetMapping(value = "ReservationListMy")
	public ModelAndView memberMyPage(HttpSession session,ReservationVO reservationVO) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		reservationVO.setEmail(memberVO.getEmail());
		List<ReservationVO> rr = tourServiceImpl.ReservationListMy(reservationVO);
		mv.addObject("list2", rr);
		mv.addObject("dto", reservationVO);
		
		mv.setViewName("tour/ReservationListMy");
		
		return mv;
	}
	
	@GetMapping(value="vReservationMy")
	public ModelAndView memberMyPage(HttpSession session,VReservationVO vReservationVO)throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		vReservationVO.setEmail(memberVO.getEmail());
		List<VReservationVO> vr = tourServiceImpl.vReservationMy(vReservationVO);
		mv.addObject("list3", vr);
		mv.addObject("dto2", vReservationVO);
		
		mv.setViewName("tour/vReservationMy");
		return mv;
	}
	
	
	
	

/////////////////////////// tour file ///////////////////////////////////
	@GetMapping(value = "fileWrite")
	public ModelAndView fileWrite(TourFilesVO tourFilesVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.fileWrite(tourFilesVO);
		mv.addObject("result", result);
		mv.setViewName("common/common_ajaxResult");
		return mv;
	}
/////////////////////////// tour admin ///////////////////////////////////
	
	@GetMapping(value = "tourDelete")
	public ModelAndView tourDelete(TourNoticeVO tourNoticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = tourServiceImpl.tourDelete(tourNoticeVO);
		if(result > 0) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "삭제 성공");
			mv.addObject("path", "../member/adminPage");
		}else {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "삭제 실패");
			mv.addObject("path", "../member/adminPage");
		}
		return mv;
	}
	
	@GetMapping(value = "tourUpdate")
	public ModelAndView tourUpdate(TourNoticeVO tourNoticeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO = tourServiceImpl.tourSelect(tourNoticeVO);
		mv.addObject("dto", tourNoticeVO);
		
		return mv;
	}
	
	@PostMapping(value = "tourUpdate")
	public ModelAndView tourUpdate(TourNoticeVO tourNoticeVO, HttpSession session, MultipartFile [] file, String [] time, String [] timeTable)throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO.setCompared(tourNoticeVO.getCompared().replace("\r\n", "<br>"));
		tourNoticeVO.setInclude(tourNoticeVO.getInclude().replace("\r\n", "<br>"));
		tourNoticeVO.setExclude(tourNoticeVO.getExclude().replace("\r\n", "<br>"));
		tourNoticeVO.setAlert(tourNoticeVO.getAlert().replace("\r\n", "<br>"));
		tourNoticeVO.setPrepared(tourNoticeVO.getPrepared().replace("\r\n", "<br>"));
		tourNoticeVO.setAttention(tourNoticeVO.getAttention().replace("\r\n", "<br>"));
		tourNoticeVO.setRefund(tourNoticeVO.getRefund().replace("\r\n", "<br>"));
		tourNoticeVO.setYouTube(tourNoticeVO.getYouTube().replace("\r\n", "<br>"));
		int result = tourServiceImpl.tourUpdate(tourNoticeVO, file, session, time, timeTable);
		mv.addObject("dto", tourNoticeVO);
		
		if(result > 0) {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "업데이트 성공");
			mv.addObject("path", "./tourUpdate");
		}else {
			mv.setViewName("common/common_result");
			mv.addObject("msg", "업데이트 실패");
			mv.addObject("path", "../");
		}
		return mv;
	}
	
	
	@GetMapping(value = "tourList")
	public ModelAndView tourList(TourVO tourVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<TourVO> ar = tourServiceImpl.tourList(tourVO);
//		tourFilesVO.setNum(ar.get(0).gettNum());
//		List<TourFilesVO> list = tourServiceImpl.fileSelect(tourFilesVO);
		mv.addObject("list", ar);
		mv.setViewName("tour/tourList");
		return mv;
	} 

	@GetMapping(value = "ReservationList")
	public ModelAndView reservationList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ReservationVO> ar = tourServiceImpl.ReservationList(pager);
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		mv.setViewName("tour/ReservationList");
		return mv;
	}
	

	
	
	@GetMapping(value = "tourGoods")
	public ModelAndView tourSelect(TourNoticeVO tourNoticeVO, TourCalendarVO tourCalendarVO, TourFilesVO tourFilesVO) throws Exception{
		ModelAndView mv = new ModelAndView();
		tourCalendarVO = tourCalendarServiceImpl.calendarSelect(tourCalendarVO);
		tourNoticeVO.setTourNum(tourCalendarVO.getTourNum());
		tourNoticeVO = tourServiceImpl.tourSelect(tourNoticeVO);
		tourFilesVO.setNum(tourNoticeVO.getNum());
		List<TourFilesVO> ar = tourServiceImpl.fileSelect(tourFilesVO);
//		tourCalendarVO.setTourNum(tourNoticeVO.getTourNum());
		mv.addObject("files", ar);
		mv.addObject("dto", tourNoticeVO);
		mv.addObject("dto2", tourCalendarVO);
		mv.setViewName("tour/tourGoods");
		return mv;
	}
	
	
	@GetMapping(value = "tourWrite")
	public ModelAndView tourWrite(HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
//		MemberVO member = (MemberVO)session.getAttribute("member");
//		mv.addObject("member", member);
		return mv;
	} 
	
	@PostMapping(value = "tourWrite")
	public ModelAndView tourWrite(TourNoticeVO tourNoticeVO, MultipartFile [] file, HttpSession session, String [] time, String [] timeTable) throws Exception{
		ModelAndView mv = new ModelAndView();
		tourNoticeVO.setCompared(tourNoticeVO.getCompared().replace("\r\n", "<br>"));
		tourNoticeVO.setInclude(tourNoticeVO.getInclude().replace("\r\n", "<br>"));
		tourNoticeVO.setExclude(tourNoticeVO.getExclude().replace("\r\n", "<br>"));
		tourNoticeVO.setAlert(tourNoticeVO.getAlert().replace("\r\n", "<br>"));
		tourNoticeVO.setPrepared(tourNoticeVO.getPrepared().replace("\r\n", "<br>"));
		tourNoticeVO.setAttention(tourNoticeVO.getAttention().replace("\r\n", "<br>"));
		tourNoticeVO.setRefund(tourNoticeVO.getRefund().replace("\r\n", "<br>"));
		int result = tourServiceImpl.tourWrite(tourNoticeVO, file, session, time, timeTable);
		mv.addObject("dto", tourNoticeVO);
		if(result>0) {
			mv.setViewName("redirect:./tourList");
		}
		return mv;
	}
	
	
	@GetMapping(value = "tourCal")
	public void tourCal() throws Exception {

	}
	
	@GetMapping(value = "realCal")
	public void realCal() throws Exception {

	}
	
	@GetMapping(value = "tourVIP")
	   public void tourVIP() throws Exception {

	   }
	
	
	

}
