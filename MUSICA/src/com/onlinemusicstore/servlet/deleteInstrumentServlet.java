package com.onlinemusicstore.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemusicstore.model.instruments;
import com.onlinemusicstore.service.InstrumentServiceImpl;
import com.onlinemusicstore.service.instrumentService;

/**
 * Servlet implementation class deleteInstrumentServlet
 */
@WebServlet("/deleteInstrumentServlet")
public class deleteInstrumentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteInstrumentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));		
		
		instrumentService iService = new InstrumentServiceImpl();
		String msg = iService.deleteInstrument(id);
		
		if(msg.equals("success")) {
			request.getRequestDispatcher("viewInstruments.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", msg);
			request.getRequestDispatcher("viewInstruments.jsp").forward(request, response);
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
