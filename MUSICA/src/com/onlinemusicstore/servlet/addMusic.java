package com.onlinemusicstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemusicstore.model.User;
import com.onlinemusicstore.model.Music;
import com.onlinemusicstore.service.IUserService;
import com.onlinemusicstore.service.IMusicService;
import com.onlinemusicstore.service.UserServiceImpl;
import com.onlinemusicstore.util.commonUtil;
import com.onlinemusicstore.service.MusicServiceImpl;


@WebServlet("/add-music")
public class addMusic extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public addMusic() {
        super();
        // TODO Auto-generated constructor stub
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
    	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addMusic");
		dispatcher.forward(request, response);
		
	}
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Music music = new Music();
		IMusicService iMusicService = new MusicServiceImpl();
		String musicID = commonUtil.generateMusicIDs(iMusicService.getMusicIDs());
		
		music.setMusicID(musicID);
		//music.setMusicID(request.getParameter("musicID"));
		music.setMusicName(request.getParameter("musicName"));
		//music.setMusicTrack(request.getParameter("musicTrack"));
		music.setMusicArtist(request.getParameter("musicArtist"));
		
		iMusicService.addMusic(music);
		
		String confirmString = "Music added successfully!";
		request.setAttribute("confirmString", confirmString);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/addMusic.jsp");
		dispatcher.forward(request, response);
    	
    }

}
