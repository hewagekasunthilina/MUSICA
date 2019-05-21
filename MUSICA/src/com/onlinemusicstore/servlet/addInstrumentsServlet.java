package com.onlinemusicstore.servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.onlinemusicstore.model.instruments;
import com.onlinemusicstore.service.InstrumentServiceImpl;
import com.onlinemusicstore.service.instrumentService;

/**
 * Servlet implementation class addInstrumentsServlet
 */
@WebServlet("/addInstrumentsServlet")
@MultipartConfig
public class addInstrumentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addInstrumentsServlet() {
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
		instrument.setName(request.getParameter("name"));
		instrument.setItemcode(request.getParameter("itemcode"));
		instrument.setPrice(Double.parseDouble(request.getParameter("price")));
		instrument.setWarrenty(request.getParameter("warranty"));
		Part part = request.getPart("image");
		InputStream in = null;
		
		if(part != null ) {
			in = part.getInputStream();
		}
		instrumentService iService = new InstrumentServiceImpl();
		String msg = iService.addInstrument(instrument,in);
		
		if(msg.equals("success")) {
			request.getRequestDispatcher("adminpanel.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errorMessage", msg);
			request.getRequestDispatcher("addInstrument.jsp").forward(request, response);
		}
	}

}
