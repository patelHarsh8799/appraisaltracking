package com.grownited.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailService {
	
	@Autowired
	JavaMailSender mailSender;
	
	public void sendWelcomeMail(String email, String firstName) {
		String subject = "Welcome to Appresal Tracker";
		String body = "Dear" + firstName + ",\n\n" +
				"Welcome to Appraisal Tracker! We’re excited to have you on board as we strive to enhance performance management and career growth within our organization.\n\n" +
                "With Appraisal Tracker, you can:\n" +
                "✅ Track your performance goals & achievements\n" +
                "✅ Receive timely feedback from managers\n" +
                "✅ View appraisal history & reports\n" +
                "✅ Set career development plans\n\n" +
//                "To get started, simply log in to your account:\n" +
//                "🔗 [Login URL]\n\n" +
//				"Here is your temporary password :" + password + ", I recommanded that you change your password in Login secsion with forget password," +
                "If you have any questions, feel free to reach out to our support team at harshp3577@gmail.com.\n\n" +
                "Looking forward to your success!\n\n" +
                "Best regards,\n" +
//                "[Your Company Name]\n" +
                "Appraisal Tracker Team\n"; 
//               + "[Company Website]";
		String from = "harshp3577@gmail.com" ;
		
		//logic
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(from);
		message.setTo(email);
		message.setText(body);
		message.setSubject(subject);
		
		mailSender.send(message);
	}
}
