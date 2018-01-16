package com.sapeint.ws.consumer;

import java.util.LinkedHashMap;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class AddProdClient {

	public static void main(String[] args) {
		ClientConfig cfg = new ClientConfig().register(new JacksonJsonProvider());
		Client client = ClientBuilder.newClient(cfg);

		//WebTarget target = client.target("http://localhost:8082/Restws/rest/add");
		 WebTarget target =
				 client.target("http://10.151.60.215:8082/RestWS/rest/add");
		Invocation.Builder ib = target.request();
		Form frm=new Form();
		frm.param("pid","12");
		frm.param("pname","Moto Z1 Ultra");
		frm.param("price","123123");
		Entity entity=Entity.entity(frm,MediaType.APPLICATION_FORM_URLENCODED);
		String res=ib.post(entity,String.class);
		System.out.println(res);
	}

}
