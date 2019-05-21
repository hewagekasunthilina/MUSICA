package com.onlinemusicstore.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.onlinemusicstore.model.instruments;
import com.onlinemusicstore.service.InstrumentServiceImpl;
import com.onlinemusicstore.service.instrumentService;

/**
 * Servlet implementation class updateInstrumentServlet
 */
@WebServlet("/updateInstrumentServlet")
public class updateInstrumentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateInstrumentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		instruments instrument = new instruments();
		instrument.setId(Integer.parseInt(request.getParameter("ID")));
		instrument.setName(request.getParameter("name"));
		instrument.setItemcode(request.getParameter("itemcode"));
		instrument.setPrice(Double.parseDouble(request.getParameter("price")));
		instrument.setWarrenty(request.getParameter("warranty"));
		InputStream in = null;
		
		
		instrumentService iService = new InstrumentServiceImpl();
		String msg = iService.updateInstrument(instrument);
		
		if(msg.equals("success")) {
			request.getRequestDispatcher("viewInstruments.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", msg);
			request.getRequestDispatcher("viewInstruments.jsp").forward(request, response);
		}
	}

}
