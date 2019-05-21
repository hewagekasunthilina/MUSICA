package com.onlinemusicstore.service;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.onlinemusicstore.conn.DBConnection;
import com.onlinemusicstore.model.instruments;

public class InstrumentServiceImpl implements instrumentService {

	@Override
	public String addInstrument(instruments instrument, InputStream in) {
		String query1 = "Select Max(id) From instruments";
		String query = "INSERT INTO instruments VALUES(?,?,?,?,?,?)";
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
			
			ps.setInt(1, itemId);
			ps.setString(2,instrument.getItemcode());
			ps.setString(3, instrument.getName());
			ps.setString(4, instrument.getWarrenty());
			ps.setDouble(5, instrument.getPrice());
			ps.setBlob(6, in);
			
			
			
			i = ps.executeUpdate();
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

		String status;
		if(i!=0) {
			 status ="success";
		}
		else {
			status="Something Is Not Right!!!";
		}
		return status;
	}
	
	@Override
	public String updateInstrument(instruments instrument) {
		
		
		String query = "update instruments set itemcode=? ,name=?,warranty=?,price=? where ID=?";
		PreparedStatement ps;
		
		
		int i = 0;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ps.setString(1,instrument.getItemcode());
			ps.setString(2, instrument.getName());
			ps.setString(3, instrument.getWarrenty());
			ps.setDouble(4, instrument.getPrice());
			ps.setInt(5, instrument.getId());
			
			i = ps.executeUpdate();
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

		String status;
		if(i!=0) {
			 status ="success";
		}
		else {
			status="Something Is Not Right!!!";
		}
		return status;
	}
	
	@Override
	public String deleteInstrument(int id) {
		String query = "delete from instruments where ID=?";
		PreparedStatement ps;
		
		
		int i = 0;
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ps.setInt(1, id);
			i = ps.executeUpdate();
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}

		String status;
		if(i!=0) {
			 status ="success";
		}
		else {
			status="Something Is Not Right!!!";
		}
		return status;
	}
	@Override
	public ArrayList<instruments> getAllInstrument() {
		String query = "select * from instruments";
		PreparedStatement ps;
		ArrayList<instruments> list = new ArrayList<instruments>();
		int i = 0;
		
		
	
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				instruments instrument = new instruments();
				instrument.setId(rs.getInt("ID"));
				instrument.setItemcode(rs.getString("itemcode"));
				instrument.setName(rs.getString("name"));
				instrument.setWarrenty(rs.getString("warranty"));
				instrument.setPrice(rs.getDouble("price"));
				instrument.setImage(rs.getBlob("image"));
				list.add(i,instrument);
				i++;
			}
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public instruments getInstrumentByid(int id) {
		String query = "select * from instruments where ID=?";
		PreparedStatement ps;
		instruments instrument = new instruments();
		
	
		try {
			ps = DBConnection.getDBconnection().prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				instrument.setId(rs.getInt("ID"));
				instrument.setItemcode(rs.getString("itemcode"));
				instrument.setName(rs.getString("name"));
				instrument.setWarrenty(rs.getString("warranty"));
				instrument.setPrice(rs.getDouble("price"));
				instrument.setImage(rs.getBlob("image"));
			}
			
		
			
		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		return instrument;
	}
}
