package com.xyz;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class App {

	public static void main(String[] args) {
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory factory=meta.getSessionFactoryBuilder().build();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		
		ArrayList<String>list1=new ArrayList<String>();
		list1.add("Java");
		list1.add("Java is programming");
		
		Question question1=new Question();
		question1.setQname("What is java");
		question1.setAnswers(list1);
		
		session.persist(question1);
		
		t.commit();
		
		session.close();
		
		System.out.println("Data Insereted...");

	}

}
