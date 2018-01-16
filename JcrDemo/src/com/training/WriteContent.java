package com.training;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.core.TransientRepository;

public class WriteContent {

	public static void main(String[] args) throws LoginException, RepositoryException {
		Repository repo = new TransientRepository();
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node courses = root.addNode("courses");
		Node java = courses.addNode("java");
		Node jee = java.addNode("jee");

		java.setProperty("What is Java?", "Java is a programming language.");
		java.setProperty("What are the Features of Java?",
				"Functional Programming,Streams, Robust, Platform Independant, Nashorn Scripts");
		java.setProperty("What are the DataTypes of Java?",
				"int 4bytes, short 2bytes, byte 1 byte");
		jee.setProperty("Life Cycle of Servlet",
				"init() and destroy() fires only once while service method fires multiple times.");
		jee.setProperty("Implict Objects",
				"Application,request, response, out, exception, session, PageContext,Page, config");
		
		sess.save();
		System.out.println("Content Published");
		sess.logout();
	}

}
