package com.sapient.service;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("/")
public class HelloService {

	@Path("helloplain")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayHello(@QueryParam("name") String str) {
		return ("jan welcomes " + str);
	}
	
	
	@Path("hellohtml")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHello1(@QueryParam("name") String str) {
		return ("<h2>jan welcomes " + str + "</h2>");
	}
	
	
	@Path("hellojson/{pname}")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Map sayhello3(@PathParam("pname") String str)
	{
		Map<String, Object> map=new HashMap<>();
		map.put("ename", str);
		map.put("Msg", "janit Welcomes "+str );
		return map;
	}
	@Path("/loan")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public double calcTax(@QueryParam("txtincome") double income) {
		double tax = 0;
		if (income > 1000000)
			tax = 750000 * 0.1 + (income - 1000000) * 0.15;
		else if (income > 250000)
			tax = (income - 250000) * 0.1;
		return tax;
	}

	@Path("/loanhtml")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String calcTax2(@QueryParam("txtincome") double income) {
		double tax = 0;
		if (income > 1000000)
			tax = 750000 * 0.1 + (income - 1000000) * 0.15;
		else if (income > 250000)
			tax = (income - 250000) * 0.1;
		String html = "<table cellpadding='10' bgcolor='aqua'>";
		html += "<tr><td>Income</td><td>" + income + "</td></tr>";
		html += "<tr><td>Tax</td><td>" + tax + "</td></tr></table>";
		return html;
	}

	@Path("/loanxml")
	@GET
	@Produces(MediaType.TEXT_XML)
	public String calcTax3(@QueryParam("txtincome") double income) {
		double tax = 0;
		if (income > 1000000)
			tax = 750000 * 0.1 + (income - 1000000) * 0.15;
		else if (income > 250000)
			tax = (income - 250000) * 0.1;
		String xml = "<table cellpadding='10' bgcolor='aqua'>";
		xml += "<tr><td>Income</td><td>" + income + "</td></tr>";
		xml += "<tr><td>Tax</td><td>" + tax + "</td></tr></table>";
		return xml;
	}

	@Path("/loanjson")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Map calcTax4(@QueryParam("txtincome") double income) {
		double tax = 0;
		if (income > 1000000)
			tax = 750000 * 0.1 + (income - 1000000) * 0.15;
		else if (income > 250000)
			tax = (income - 250000) * 0.1;
		Map<String, Object> map = new HashMap<>();
		map.put("income", income);
		map.put("tax", tax);
		return map;
	}
	
	
}
