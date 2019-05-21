package com.onlinemusicstore.service;

import java.io.InputStream;
import java.util.ArrayList;

import com.onlinemusicstore.model.Genre;

public interface GenreService {
	
	String addGenre(Genre songName, Genre songArtist, Genre songBpm, Genre songGenre );
	
	int getsongCount(String songGenre);

	ArrayList<Genre> getAllGenre(String songGenre);

	String addGenre(Genre genre, InputStream in);
}
