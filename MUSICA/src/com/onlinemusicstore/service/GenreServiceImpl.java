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

}
