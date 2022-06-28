package com.kh.board.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.adoption.model.vo.Animal;
import com.kh.board.model.dao.BoardDao;
import com.kh.product.model.vo.Product;

public class BoardService {
	
	public ArrayList<Animal> selectInterListAN(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Animal> listAN = new BoardDao().selectInterListAN(conn, userNo);
		
		close(conn);
		
		return listAN;
		
		
	}
	
	public ArrayList<Product> selectInterListPR(int userNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Product> listPR = new BoardDao().selectInterListPR(conn, userNo);
		
		close(conn);
		
		return listPR;
		
		
	}
	
	public void selectAdoptComment(int userNo) {
		
		Connection conn = getConnection();
		
		new BoardDao().selectAdoptComment(conn, userNo);
		
		close(conn);
		
	}
	
	
	
	
	
	

}
