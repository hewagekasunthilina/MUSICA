package com.onlinemusicstore.model;

import java.sql.ResultSet;

public class Genre {
	
	private int songID;
	
	private String songName;

	private String songGenre;

	private String songArtist;

	private int songBpm;
	
	private int songVote;

	public int getSongID() {
		return songID;
	}

	public void setSongID(int songID) {
		this.songID = songID;
	}

	public String getSongName() {
		return songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public String getSongGenre() {
		return songGenre;
	}

	public void setSongGenre(String songGenre) {
		this.songGenre = songGenre;
	}

	public String getSongArtist() {
		return songArtist;
	}

	public void setSongArtist(String songArtist) {
		this.songArtist = songArtist;
	}

	public int getSongBpm() {
		return songBpm;
	}

	public void setSongBpm(int songBpm) {
		this.songBpm = songBpm;
	}

	public int getSongVote() {
		return songVote;
	}

	public void setSongVote(int songVote) {
		this.songVote = songVote;
	}

	public ResultSet executeQuery(String sql) {
		// TODO Auto-generated method stub
		return null;
	}

	public String getAllGenre(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	public int setsongCount(int i) {
		// TODO Auto-generated method stub
		return i;
	}

	

}
