package com.kh.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;
import com.kh.member.model.vo.Member;

/**
 * Servlet implementation class MemberInsertController
 */
@WebServlet("/insert.me")
public class MemberInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberInsertController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String userNickname = request.getParameter("userNickname");
		String birthDate = request.getParameter("birthDate");
		String phone = request.getParameter("phone");
		String userClass = request.getParameter("userClass");
		
		
		String postcode = request.getParameter("postcode");
		String addressMain = request.getParameter("addressMain");
		String addressDetail = request.getParameter("addressDetail");
		String addressAdd = request.getParameter("addressAdd");
		
		String address = "(" + postcode + ")" + addressMain + addressDetail + addressAdd;
		
		
		
		
		Member m = new Member(userId, userPwd, userName, userNickname, birthDate, email, address, phone, userClass);
		
		int result = new MemberService().insertMember(m);
		
		if (result > 0) {
			
			response.sendRedirect(request.getContextPath() + "/insertFin.me");
		} else {
			
			HttpSession session = request.getSession();
			
			session.setAttribute("alertMsg", "회원가입 실패, 다시 시도해주세요.");
			response.sendRedirect(request.getContextPath());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
