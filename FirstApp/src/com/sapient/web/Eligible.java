package com.sapient.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Eligible
 */
public class Eligible extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Eligible() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		int age = Integer.parseInt(request.getParameter("txtage"));
		String qual = request.getParameter("txtqual");

		String res = "NOT ELIGIBLE";

		if (age >= 20 && age <= 22 && (qual.equals("be") || qual.equals("btech")))
			res = "Congrats! You are Eligible.";

		// set attribute in request object
		request.setAttribute("result", res);
		// forward data to jsp
		RequestDispatcher rd = request.getRequestDispatcher("EligibleResult.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
