package com.traning;

import javax.jcr.Node;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class WriteContent {

	public static void main(String[] args) throws RepositoryException {
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root = sess.getRootNode();
		Node film = root.addNode("film");
		Node holly = film.addNode("hollywood");
		Node bolly = film.addNode("bollywood");
		Node jumanji = holly.addNode("jumanji");
		jumanji.setProperty("Review By janit", "Good not that bad");
		jumanji.setProperty("Review By herman", "Excellent watch it 10 times");

		Node n1921 = bolly.addNode("1921");
		n1921.setProperty("Review By kacshi", "i was the best horror film i watched till date.");
		n1921.setProperty("Review By raj", "no horror and thriller in the  movie");

		sess.save();
		sess.logout();
		System.out.println("Content Published");

	}

}
