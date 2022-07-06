package com.kh.groups.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.groups.model.dao.GroupDao;
import com.kh.groups.model.vo.Groups;

public class GroupService {

	public int insertGroup(Groups g) {
		
		Connection conn = getConnection();
		
		int result = new GroupDao().insertGroup(conn, g);
		
		close(conn);
		
		return result;
	}//insertGrouop
	
	public Groups selectGroup(int groupNo) {
		
		Connection conn = getConnection();
		
		Groups group = new GroupDao().selectGroup(conn, groupNo);
		
		close(conn);
		
		return group;
	}//selectGroup
	
	public ArrayList<Groups> selectGroupList(){
		
		Connection conn = getConnection();
		
		ArrayList<Groups> list = new GroupDao().selectGroupList(conn);
		
		close(conn);
		
		return list;
	}//selectGroupList
	
	public int updateAuthAllow(String groupNo) {
		
		Connection conn = getConnection();
		
		int result = new GroupDao().updateAuthAllow(conn, groupNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}//updateAuthAllow
	
	public int updateAuthReject(String groupNo) {
		
		Connection conn = getConnection();
		
		int result = new GroupDao().updateAuthReject(conn, groupNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}//updateAuthReject
	
	public int selectListCount() {
		
		Connection conn = getConnection();
		
		int count = new GroupDao().selectListCount(conn);
		
		close(conn);
		
		return count;
	}//selectListCount
}
