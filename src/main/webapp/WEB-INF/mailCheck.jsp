
<%@page import="javax.mail.internet.MimeUtility"%>
<%@page import="java.util.Date"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.internet.AddressException"%>
<%@page import="com.util.SendMail"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.mail.Transport"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.internet.InternetAddress"%>
<%@ page import="javax.mail.Address"%>
<%@ page import="javax.mail.internet.MimeMessage"%>
<%@ page import="javax.mail.Session"%>
<%@ page import="javax.mail.Authenticator"%>
<%@ page import="java.util.Properties"%>
<%@ page import="com.controller.TempKey"%>
<<<<<<< HEAD
	
=======



	<%-- <%= request.getp %> --%>
>>>>>>> branch 'master' of https://github.com/lk1030/coinallproject.git
	
	<%	
	
	TempKey temp = new TempKey();
	String key = temp.getKey(6, true);		
	
	String userEmail =request.getParameter("userEmail");
	//System.out.println(userEmail);
	
	
	
	/* response.sendRedirect("mypage/recruitment.jsp"+key);
	System.out.println(key); */
	
	String host = "smtp.naver.com";
    String subject = "네이버를 이용한 메일발송";
    String from = "wheksql89@naver.com"; //보내는 메일
    String fromName = "Test";
    String to = userEmail;
    String content = "네이버를 이용한 메일 발송 Test입니다. 감사합니다."+ key;

   try{
     //프로퍼티 값 인스턴스 생성과 기본세션(SMTP 서버 호스트 지정)
     Properties props = new Properties();
     //네이버 SMTP 사용시
     props.put("mail.smtp.starttls.enable","true");
     props.put("mail.transport.protocol","smtp");
     props.put("mail.smtp.host", host);
     
     props.put("mail.smtp.port","465");  // 보내는 메일 포트 설정
     props.put("mail.smtp.user", from);
     props.put("mail.smtp.auth","true");
     props.put("mail.smtp.debug", "true");
     props.put("mail.smtp.socketFactory.port", "465");
     props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
     props.put("mail.smtp.socketFactory.fallback", "false");


     Authenticator auth = new SendMail();
     Session mailSession = Session.getDefaultInstance(props,auth);
   
     Message msg = new MimeMessage(mailSession);
     msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName,"UTF-8","B"))); //보내는 사람 설정
    InternetAddress[] address = {new InternetAddress(to)};
    
     msg.setRecipients(Message.RecipientType.TO, address); //받는 사람설정
   
     msg.setSubject(subject); //제목설정
    msg.setSentDate(new java.util.Date()); //보내는 날짜 설정
    msg.setContent(content,"text/html; charset=EUC-KR"); //내용 설정(MIME 지정-HTML 형식)
    
     Transport.send(msg); //메일 보내기

    System.out.println("메일 발송을 완료하였습니다.");
     }catch(MessagingException ex){
      System.out.println("mail send error : "+ex.getMessage());
       ex.printStackTrace();
     }catch(Exception e){
      System.out.println("error : "+e.getMessage());
       e.printStackTrace();
     }
    

	%>
<%= userEmail %>