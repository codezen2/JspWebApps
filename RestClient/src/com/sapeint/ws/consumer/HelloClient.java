package com.sapeint.ws.consumer;

import java.util.Map;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class HelloClient {

	public static void main(String[] args) {
		ClientConfig cfg = new ClientConfig().register(new JacksonJsonProvider());
		Client client = ClientBuilder.newClient(cfg);

		WebTarget target = client.target("http://localhost:8082/Restws/rest/helloplain")
				.queryParam("name", "harman");

		Invocation.Builder ib = target.request();
		String res = ib.get(String.class);
		System.out.println(res);
	
		target = client.target("http://localhost:8082/Restws/rest/hellohtml")
				.queryParam("name", "harman");
		 ib = target.request();
		 res = ib.get(String.class);
		System.out.println(res);
		
		target = client.target("http://localhost:8082/Restws/rest/hellojson").path("harman");
		 ib = target.request();
		 Map map=ib.get(Map.class);
		System.out.println(map.get("Msg")+" and name is: "+map.get("ename"));
		
		target = client.target("http://localhost:8082/Restws/rest/loan")
				.queryParam("txtincome", "1000000");
		 ib = target.request();
		 res = ib.get(String.class);
		System.out.println("tax: "+res);
		
		target = client.target("http://localhost:8082/Restws/rest/loanhtml")
				.queryParam("txtincome", "1000000");
		 ib = target.request();
		 res = ib.get(String.class);
		System.out.println("tax: "+res);
		
		target = client.target("http://localhost:8082/Restws/rest/loanjson")
				.queryParam("txtincome", "1000000");
		 ib = target.request();
		 res = ib.get(String.class);
		System.out.println("tax: "+res);
		
		target = client.target("http://localhost:8082/Restws/rest/loanxml")
				.queryParam("txtincome", "1000000");
		 ib = target.request();
		 res = ib.get(String.class);
		System.out.println("tax: "+res);
	
	}

}
