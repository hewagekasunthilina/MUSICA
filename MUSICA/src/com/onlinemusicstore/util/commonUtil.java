package com.onlinemusicstore.util;

import java.util.ArrayList;


public class commonUtil {

	public static String generateUserIDs(ArrayList<String> arrayList) {
		
		String id;
		int next = arrayList.size();
		next++;
		id = "U001" + next;
		if (arrayList.contains(id)) {
			next++;
			id = "U001" + next;
		}
		return id;
	}
	
	public static String generateMusicIDs(ArrayList<String> arrayList) {
		
		String gid;
		int next = arrayList.size();
		next++;
		gid = "M0" + next;
		if (arrayList.contains(gid)) {
			next++;
			gid = "M0" + next;
		}
		return gid;
	}
	
	public static String generateMessageIDs(ArrayList<String> arrayList) {
		
		String mid;
		int next = arrayList.size();
		next++;
		mid = "M001" + next;
		if (arrayList.contains(mid)) {
			next++;
			mid = "M001" + next;
		}
		return mid;
	}
	
}
