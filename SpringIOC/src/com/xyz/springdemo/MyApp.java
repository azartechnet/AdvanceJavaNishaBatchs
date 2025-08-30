package com.xyz.springdemo;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyApp {

	public static void main(String[] args) {
		
		ClassPathXmlApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		
		Coach c1=(Coach) context.getBean("my1");
		
		Coach c2=(Coach) context.getBean("my2");
		
		System.out.println("BaseballCoach::"+c1.getDailyWorkout());
		System.out.println("TrackCoach::"+c2.getDailyWorkout());

	}

}
