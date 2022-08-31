package util;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class MailUtil {

    private Session session;
    private String user = "hongsik2004@naver.com";
    public MailUtil() {
        String password = "";

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.naver.com");
        props.put("mail.smtp.port", 587);
        props.put("mail.smtp.auth", "true");

        session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
    }

    public void sendMessage(String title, String msg, String target) throws MessagingException {
    	title = "안녕하세요 비트콩 이메일 인증번호 입니다.";
    	msg = "인증번호 :";
        MimeMessage message = new MimeMessage(session);
        StringBuffer temp = new StringBuffer();
        Random rnd = new Random();
        for(int i= 0; i< 10; i++) {
        	int rindex = rnd.nextInt(3);
        	switch(rindex) {
        	case 0:
        			// a-z
        			temp.append((char) ((int) (rnd.nextInt(26)) + 97));
        			break; 
        	case 1:
        			// A-Z
        			temp.append((char) ((int) (rnd.nextInt(26)) + 65));
        			break;
        	case 2:
        			// 0-9
        			temp.append((rnd.nextInt(10)));
        			break;
        	}
        }
        
        message.setFrom(new InternetAddress(user));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(target));

        message.setSubject(title);
        message.setText(msg + temp);

        Transport.send(message);
    }
}
