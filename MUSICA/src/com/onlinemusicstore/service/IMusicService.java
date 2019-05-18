package com.onlinemusicstore.service;

import java.util.ArrayList;

import com.onlinemusicstore.model.Music;

public interface IMusicService {

	public String  getcode(String GameID);
	
	//public String loadGameName(String gameID) ;

	//public void addToFav(String userID, String gameID);
	
	//public ArrayList<String> getFav(String userID);
	
	//public void removeFav(String userID, String gameID);
	
	public ArrayList<String> getMusicIDs();
	
	public void updateMusic(Music music);
	
	public void removeMusic(Music music);
	
	public ArrayList<Music> searchMusic(String search);
	
	public ArrayList<Music> listAllMusic();

	public void addMusic(Music music);

	
}
