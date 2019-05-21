package com.onlinemusicstore.service;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.onlinemusicstore.model.Genre;
import com.onlinemusicstore.conn.DBConnection;


public class GenreServiceImpl  implements GenreService {

	@Override
	public int getsongCount(String songGenre) {
		// TODO Auto-generated method stub
		
		
		String query  ="select COUNT(songGenre) from genre where songGenre= ? groupby songGenre";
		PreparedStatement ps;
		int i = 0;
		int  count = 0;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Genre Genre = new Genre();
						
				count= Genre.setsongCount(rs.getInt("genreName"));
				
				i++;
			}
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return count;
	}
	

	@Override
	public ArrayList<Genre> getAllGenre(String songGenre) {
		
		
		String query = "select * from genre where songGenre = ?";
		PreparedStatement ps;
		ArrayList<Genre> list = new ArrayList<Genre>();
		int i = 0;
		
		
	
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Genre Genre = new Genre();
						
				Genre.setSongName(rs.getString("songName"));
				Genre.setSongArtist(rs.getString("songArtist"));
				Genre.setSongID(rs.getInt("songBpm"));	
				list.addAll(i,list);
				i++;
			}
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return list;
	}

	public String addGenre(Genre songName, Genre songArtist, int songBpm, Genre songGenre ) {
		
		String query = "INSERT INTO genre VALUES(?,?,?,?)";
		PreparedStatement ps;
		
		
		int i = 0;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query1);
			ResultSet rs=ps.executeQuery();
			String id = null;
			while(rs.next()) {
				
				id=rs.getString(1);
				if(id==null) {
					id="0";
				}
				
				
			}
			int itemId=Integer.parseInt(id)+1;
			// add data to user table
			ps = DBConnection.getDBconnection().prepareStatement(query);
			Genre n = new Genre();
			ps.setInt(1, songBpm);
			ps.setString(2,n.getSongName());
			ps.setString(3,n.getSongArtist());
			ps.setString(4,n.getSongGenre());
			
			
			
			i = ps.executeUpdate();
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

		String status;
		if(i!=0) {
			 status ="success";
		}
		else {
			status="Error";
		}
		return status;
	}


	@Override
	public String addGenre(Genre songName, Genre songArtist, Genre songBpm, Genre songGenre) {
		// TODO Auto-generated method stub
		return null;
	}
}
