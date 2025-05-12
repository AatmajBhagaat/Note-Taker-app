package com.servlet.pkg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.FactoryProvider;



public class NoteSavingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			Note note = new Note(title,content,new Date());
			
			
			Session session =  FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			session.persist(note);
			tx.commit();
			session.close();
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>Note added successfully...</h1>");
			out.println("<h1 style='text-align:center'><a href='all_notes.jsp'style='text-decoration:none;'>View all Notes</a> </h1>");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
