package com.training;

import javax.jcr.LoginException;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.core.TransientRepository;

public class CreateRepo {

	public static void main(String[] args) throws LoginException, RepositoryException {

		//created the repository and displayed details
		Repository repo = new TransientRepository();
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		System.out.println("User id:" + sess.getUserID());
		String version = repo.getDescriptor(Repository.REP_VERSION_DESC);
		String vendor = repo.getDescriptor(Repository.REP_VENDOR_DESC);
		String name = repo.getDescriptor(Repository.REP_NAME_DESC);
		System.out.println("Version: " + version);
		System.out.println("Vendor: " + vendor);
		System.out.println("Name: " + name);
		sess.logout();
	}
}
