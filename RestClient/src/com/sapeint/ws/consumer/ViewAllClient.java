package com.sapeint.ws.consumer;

import java.util.LinkedHashMap;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class ViewAllClient {

	public static void main(String[] args) {
		ClientConfig cfg = new ClientConfig().register(new JacksonJsonProvider());
		Client client = ClientBuilder.newClient(cfg);

		//WebTarget target = client.target("http://localhost:8082/Restws/rest/viewall");
		WebTarget target = client.target("http://10.151.60.215:8082/RestWS/rest/viewall");


		Invocation.Builder ib = target.request();
		List<LinkedHashMap> lst= ib.get(List.class);
		for(LinkedHashMap p:lst)
		{
			System.out.println(p.get("prodId")+" "+p.get("prodName")+" "+p.get("price"));
		}
	}

}
