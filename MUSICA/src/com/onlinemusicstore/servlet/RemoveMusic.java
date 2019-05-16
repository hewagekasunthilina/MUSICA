package com.onlinemusicstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemusicstore.model.Music;
import com.onlinemusicstore.service.IMusicService;
import com.onlinemusicstore.service.MusicServiceImpl;



@WebServlet("/remove-music")
public class RemoveMusic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public RemoveMusic() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/removeMusic.jsp");
		dispatcher.forward(request, response);

	}

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Music music = new Music();
		
		music.setMusicName(request.getParameter("musicName"));
		music.setMusicID(request.getParameter("musicID"));
		
		IMusicService iMusicService = new MusicServiceImpl();
		iMusicService.removeMusic(music);
	
		
		String confirmString = "Music removed!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/removeMusic.jsp");
		dispatcher.forward(request, response);
		
	}

}
