package com.onlinemusicstore.service;

import java.io.InputStream;
import java.util.ArrayList;

import com.onlinemusicstore.model.instruments;

public interface instrumentService {

	String addInstrument(instruments instrument, InputStream in);

	String deleteInstrument(int id);

	String updateInstrument(instruments instrument);

	instruments getInstrumentByid(int id);

	ArrayList<instruments> getAllInstrument();

}
