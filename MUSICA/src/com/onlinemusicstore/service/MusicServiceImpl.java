package com.onlinemusicstore.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.onlinemusicstore.conn.DBConnection;
import com.onlinemusicstore.model.Music;

public class MusicServiceImpl implements IMusicService {
		
	public void addMusic(Music music ) {

		String addGameQuery = "INSERT INTO songs VALUES(?,?,?)";
		//String addGameURLQuery = "INSERT INTO gameurl VALUES(?,?)";		
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addGameQuery);
			
			ps.setString(1, music.getMusicID());
			ps.setString(2, music.getMusicName());
			//ps.setString(3, music.getMusicTrack());
			ps.setString(4, music.getMusicArtist());
			
			ps.executeUpdate();
			
			
			//ps = DBConnection.getDBconnection().prepareStatement(addGameURLQuery);
			
//			ps.setString(1, game.getGameID());
//			ps.setString(2, game.getgamecode());
//			
//			ps.executeUpdate();
			
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
   
	}
	
	
	public void updateMusic(Music music) {
		
		String updateGameQuery = " UPDATE songs SET musicName = ?, musicArtist = ?, WHERE musicID = ?";	//writing Quarry to update music table		
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateGameQuery);	//connecting to database
			
			//Assign values to quary
			ps.setString(1, music.getMusicName());
			//ps.setString(2, music.getMusicTrack());
			ps.setString(3, music.getMusicArtist());
			ps.setString(4, music.getMusicID());
			
			ps.executeUpdate();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
	
	
	public void removeMusic(Music music ) {

		String removeGameQuery = "DELETE from songs WHERE  musicID = ? and musicName = ?";
		//String removeGameURLQuery = "DELETE from gameurl WHERE  gameID = ?";
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(removeGameQuery);
			
			ps.setString(1, music.getMusicID());
			ps.setString(2, music.getMusicName());
			
			ps.executeUpdate();
			
			
		//ps = DBConnection.getDBconnection().prepareStatement(removeGameURLQuery);
			
//			ps.setString(1, game.getGameID());
//			
//			ps.executeUpdate();
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	
	public ArrayList<String> getMusicIDs(){
		
		ArrayList<String> arrayList = new ArrayList<String>(); 
		
		String findIDQuery = "SELECT musicID FROM songs";
		
		PreparedStatement ps;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(findIDQuery);
			
			ResultSet resultSet = ps.executeQuery();
			
			while (resultSet.next()) {
				arrayList.add(resultSet.getString(1));
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return arrayList;
	}


	@Override
	public String getcode(String musicID) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ArrayList<Music> searchMusic(String search) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ArrayList<Music> listAllMusic() {
		// TODO Auto-generated method stub
		return null;
	}

}

