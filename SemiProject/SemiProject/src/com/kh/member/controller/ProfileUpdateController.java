package com.kh.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.member.model.service.MemberService;

/**
 * Servlet implementation class ProfileUpdateController
 */
@WebServlet("/updateProfile.me")
public class ProfileUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String userNo = request.getParameter("userNo");
		String nickname = request.getParameter("nickname");
		
		int result = new MemberService().updateProfile(userNo, nickname);
		
		HttpSession session = request.getSession();
		
		if(result > 0) {
			
			session.setAttribute("alertMsg", "프로필을 성공적으로 변경했습니다.");
			
			
			
		}else {
			
			session.setAttribute("alertMsg", "프로필 변경에 실패했습니다. 다시 시도해주세요.");
			
		}
		
		response.sendRedirect(request.getContextPath()+"/myPage.me");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
