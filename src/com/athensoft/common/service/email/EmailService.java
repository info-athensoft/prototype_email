package com.athensoft.common.service.email;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;



/**
 * References: 	http://wang3065.iteye.com/blog/1718381
 * 				http://blog.csdn.net/smcwwh/article/details/7095027
 * @author User
 *
 */
@Service
public class EmailService {
	
	MailSender mailSender ;
	
	@Autowired
	public void setMailSender(MailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	JavaMailSenderImpl senderImpl ;
	
	@Autowired
	public void setJavaMailSenderImpl(JavaMailSenderImpl senderImpl) {
		this.senderImpl = senderImpl;
	}

	public void sendSimpleMail(String msg){
		System.out.println("sendSimpleMail() of"+ this.getClass().getName()+"\t\t"+msg);
		
		SimpleMailMessage mail = new SimpleMailMessage();
//		mail.setFrom("fangze@gmail.com");   //test gmail sender
		mail.setFrom("lada314@gmail.com");	//test athensoft email sender
		mail.setTo("support@athensoft.com");
		mail.setSubject("athensoft email sender test");
		
		String strMsg = "<html><body><a href='www.athensoft.com'>Welcome to INF. Athensoft</a><br/><img src='http://www.athensoft.com/content/img/slide/b6.jpg'/></body></html>";
		mail.setText(strMsg);
		try{
			mailSender.send(mail);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void sendMail(String msg){
		System.out.println("sendMail() of"+ this.getClass().getName()+"\t\t"+msg);
//		MimeMessage mail = mailSender.createMimeMessage();
		//JavaMailSenderImpl senderImpl = new JavaMailSenderImpl();
		MimeMessage mail = senderImpl.createMimeMessage();
		
		MimeMessageHelper messageHelper = new MimeMessageHelper(mail);
		try{
			messageHelper.setFrom("support@athensoft.com");
//			messageHelper.setTo("595472653@qq.com");  
			messageHelper.setTo("athens314@hotmail.com");  
          
			messageHelper.setSubject("[INF.ATHENSOFT]Test html email");
			String strMsg = "<html><body><a href='www.athensoft.com'>Welcome to INF. Athensoft</a><br/><img src='http://www.athensoft.com/content/img/slide/b6.jpg' width='100'/>";
			
			strMsg += "<form action='http://www.athensoft.com' method='post'>"
					+ "<input type='submit' value='Love My Husband'>"
					+"</form></body></html>";
			
			messageHelper.setText(strMsg,true);
        
        	senderImpl.send(mail);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	

}
