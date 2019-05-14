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

/**
 * Servlet implementation class upgateGane
 */
@WebServlet("/update-music")
public class UpdateMusic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	
    public UpdateMusic() {
        super();
       
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateMusic.jsp");
		dispatcher.forward(request, response);
		
		
		
		
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Music music = new Music();
		
		music.setMusicID(request.getParameter("musicID"));
		music.setMusicName(request.getParameter("musicName"));
		//music.setMusicTrack(request.getParameter("musicTrack"));
		music.setMusicArtist(request.getParameter("musicArtist"));
			
		IMusicService iMusicService = new MusicServiceImpl();
		iMusicService.updateMusic(music);
		
		String confirmString = "Music updated!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateMusic.jsp");
		dispatcher.forward(request, response);
	}

}
