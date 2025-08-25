package com.xyz;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class StoreData {

	public static void main(String[] args) {
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		Metadata meta=new MetadataSources(ssr).getMetadataBuilder().build();
		SessionFactory factory=meta.getSessionFactoryBuilder().build();
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		
		Answer ans1=new Answer();
		ans1.setAnswername("java");
		ans1.setPostedBy("azar");
		
		ArrayList<Answer>list1=new ArrayList<Answer>();
		list1.add(ans1);
		
		Question question1=new Question();
		question1.setQname("What is Java");
		question1.setAnswers(list1);

		session.persist(question1);
        t.commit();
        session.close();
        
        System.out.println("Inserted....");
	}

}
