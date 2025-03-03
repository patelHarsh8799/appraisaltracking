package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class OtpService {
	
	@Autowired
	JavaMailSender otpMailSender;
	
	public void sendOtpMail (String email,String otp) {
		String subject = "Forget Password";
		String body = "This is your OTP : " + otp;
		String form = "harshp7675@gmail.com";
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(form);
		message.setSubject(subject);
		message.setTo(email);
		message.setText(body);
		
		otpMailSender.send(message);
	}

}
