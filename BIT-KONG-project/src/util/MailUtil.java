package util;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Properties;
import java.util.Scanner;

import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.Session;

public class MailUtil{
	private String id = "bitkongsick@gmail.com";
	
	
	public String connectEmail(String email,String authNum){
		String to1=email; // 인증위해 사용자가 입력한 이메일주소
		String host="smtp.gmail.com"; // smtp 서버
		String subject="50만원 결제 인증번호"; // 보내는 제목 설정
		String fromName="비트콩식"; // 보내는 이름 설정
		String from="bitkongsick@gmail.com"; // 보내는 사람(구글계정)
		String content="인증번호 ["+authNum+"]"+"사이트 주소:"+"https://hearthstone.blizzard.com/ko-kr"; // 이메일 내용 설정
		String pass = "xjptwnougjchvshk";
        // SMTP 이용하기 위해 설정해주는 설정값들
		try{
		Properties props=new Properties();
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port","465");
		props.put("mail.smtp.user",from);
		props.put("mail.smtp.auth","true");
		props.put("mail.transport.protocol", "smtp");
		props.setProperty
                       ("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		Session mailSession 
           = Session.getInstance(props,new javax.mail.Authenticator(){
			    protected PasswordAuthentication getPasswordAuthentication(){
				    return new PasswordAuthentication
                                        (id,pass); // gmail계정
			}
		});
		
		Message msg = new MimeMessage(mailSession);
		InternetAddress []address1 = {new InternetAddress(to1)};
		msg.setFrom(new InternetAddress
                      (from, MimeUtility.encodeText(fromName,"utf-8","B")));
		msg.setRecipients(Message.RecipientType.TO, address1); // 받는사람 설정
		msg.setSubject(subject); // 제목설정
		msg.setSentDate(new java.util.Date()); // 보내는 날짜 설정
		msg.setContent(content,"text/html; charset=utf-8"); // 내용설정
		
		Transport.send(msg); // 메일보내기
		}catch(MessagingException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
		return authNum;
	}
	private String findPassword() {
		String pass = "";
		try {
			Scanner in = new Scanner(new File("./pass.txt"));
			while (in.hasNext()) {          
				System.out.println(pass);
				pass = in.next();                    
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		return pass;
	}
	
	
   
}