package com.brs.controller;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EmailController {

	static String emailToRecipient, emailSubject, emailMessage;
	static final String emailFromRecipient = "souvik.dinda.sd@gmail.com";

	static ModelAndView modelViewObj;

	@Resource
	private JavaMailSender mailSenderObj;
	
	@RequestMapping(value = "/loginPassword", method = RequestMethod.POST)
	public ModelAndView sendEmailToClient(@RequestParam("email") String emailTo) {

		// Reading Email Form Input Parameters		
		emailSubject = "Reset Password";
		emailMessage = "Click the link below to change your password:\nhttp://192.168.100.116:9090/Demo/spring-mvc/resetForgetPassword";
		emailToRecipient = emailTo;

		// Logging The Email Form Parameters For Debugging Purpose
		System.out.println("\nReceipient?= " + emailToRecipient + ", Subject?= " + emailSubject + ", Message?= " + emailMessage + "\n");

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");				
				mimeMsgHelperObj.setTo(emailToRecipient);
				mimeMsgHelperObj.setFrom(emailFromRecipient);				
				mimeMsgHelperObj.setText(emailMessage);
				mimeMsgHelperObj.setSubject(emailSubject);
			}
		});
		System.out.println("Message Sent Successfully");

		modelViewObj = new ModelAndView("login");
		return  modelViewObj;	
	}
}
