package com.onlinemusicstore.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.onlinemusicstore.conn.DBConnection;
import com.onlinemusicstore.model.Music;

public class MusicServiceImpl implements IMusicService {
		
	public void addMusic(Music music ) {

		String addMusicQuery = "INSERT INTO songs VALUES(?,?,?)";
		//String addGameURLQuery = "INSERT INTO gameurl VALUES(?,?)";		
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(addMusicQuery);
			
			
			
			ps.setString(1, music.getMusicID());
			ps.setString(2, music.getMusicName());
			//ps.setString(3, music.getMusicTrack());
			ps.setString(3, music.getMusicArtist());
			
			 int i = ps.executeUpdate();
			 System.out.println(ps);
			
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
   
	}
	
	
	public void updateMusic(Music music) {
		
		String updateMusicQuery = "UPDATE songs SET musicName =?, musicArtist =? WHERE musicID =?";	//writing Quarry to update music table		
		
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(updateMusicQuery);	//connecting to database
			
			//Assign values to quary
			ps.setString(1, music.getMusicName());
			//ps.setString(2, music.getMusicTrack());
			ps.setString(2, music.getMusicArtist());
			ps.setString(3, music.getMusicID());
			
			ps.executeUpdate();
			
			
			
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

	}
	
	
	public void removeMusic(Music music ) {

		String removeMusicQuery = "DELETE from songs WHERE  musicID = ? and musicName = ?";
		
			
		try {
			PreparedStatement ps = DBConnection.getDBconnection().prepareStatement(removeMusicQuery);
			
			ps.setString(1, music.getMusicID());
			ps.setString(2, music.getMusicName());
			
			ps.executeUpdate();
			
			
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

