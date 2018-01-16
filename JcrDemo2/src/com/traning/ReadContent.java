package com.traning;

import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.PropertyIterator;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class ReadContent {

	public static void main(String[] args) throws RepositoryException {
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node jumanji = sess.getNode("/film/hollywood/jumanji");
		PropertyIterator it = jumanji.getProperties();
		Property pr = null;

		while (it.hasNext()) {
			pr = (Property) it.next();
			System.out.println(pr.getName() + "---" + pr.getString());
		}
		sess.logout();

	}

}
