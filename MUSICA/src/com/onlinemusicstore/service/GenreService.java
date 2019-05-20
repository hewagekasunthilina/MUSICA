package com.onlinemusicstore.service;

import java.util.ArrayList;

import com.onlinemusicstore.model.Genre;

public interface GenreService {
	
	
	int getsongCount(String songGenre);

	ArrayList<Genre> getAllGenre(String songGenre);
}
