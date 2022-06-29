package com.kh.member.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.member.model.dao.MemberDao;
import com.kh.member.model.vo.Member;

public class MemberService {
	
	public Member loginMember(String userId, String userPwd) {
		
		Connection conn = getConnection();
		Member m = new MemberDao().loginMember(conn, userId, userPwd);
		
		close(conn);
		
		return m;
	}
	
	public int insertMember(Member m) {
		
		Connection conn = getConnection();
		int result = new MemberDao().insertMember(conn, m);
		
		if (result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int checkId(String inputId) {
		
		Connection conn = getConnection();
		int result = new MemberDao().checkId(conn, inputId);
		
		close(conn);
		
		return result;
	}

	public int checkNickname(String inputNickname) {
		
		Connection conn = getConnection();
		int result = new MemberDao().checkNickname(conn, inputNickname);
		
		close(conn);
		
		return result;
	}
	
	public int checkPhone(String inputPhone) {
		
		Connection conn = getConnection();
		int result = new MemberDao().checkPhone(conn, inputPhone);
		
		close(conn);
		
		return result;
	}
	
}
