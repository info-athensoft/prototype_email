package com.athensoft.common.controller.email;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.athensoft.common.service.email.EmailService;


@Controller
public class EmailController {
	
	private EmailService emailService;
	
	@Autowired
	public void setEmailService(EmailService emailService){
		this.emailService = emailService;
	}
	
	@RequestMapping("/goto_email_single.do")
	public ModelAndView gotoEmailSingle(){
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "send-email-single";
		mav.setViewName(viewName);
		
		//test service
		//emailService.testService("send_email_single.do");
					
		return mav;
	}
	
	
	@RequestMapping("/goto_email_multi.do")
	public ModelAndView gotoEmailMulti(){
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "send-email-multi";
		mav.setViewName(viewName);
		
		//test service
		//emailService.testService("send_email_multi.do");
		
		return mav;
	}
	
	@RequestMapping("/send_email_single.do")
	public ModelAndView sendEmailSingle(@RequestParam String message_body){
		System.out.println("entering send_email_single.do");
		ModelAndView mav = new ModelAndView();
		
		//set view
		String viewName = "send-email-single";
		mav.setViewName(viewName);
		
		//test service
		//emailService.sendSimpleMail(message_body);
		emailService.sendMail(message_body);
		
					
		return mav;
	}
	
	
	
}
