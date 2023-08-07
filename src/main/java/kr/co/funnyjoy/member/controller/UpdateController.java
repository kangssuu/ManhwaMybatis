package kr.co.funnyjoy.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.funnyjoy.member.model.service.MemberService;
import kr.co.funnyjoy.member.model.vo.Member;

/**
 * Servlet implementation class UpdateController
 */
@WebServlet("/member/update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/member/modify.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("member-id");
		String memberPw = request.getParameter("member-pw");
		String memberAddress = request.getParameter("member-address");
		String memberFirstPhone = request.getParameter("member-firstPhone");
		String memberSecondPhone = request.getParameter("member-secondPhone");
		String memberLastPhone = request.getParameter("member-lastPhone");
		String memberEmail = request.getParameter("member-email");
		Member member = new Member(memberId, memberPw, memberAddress, memberFirstPhone, memberSecondPhone, memberLastPhone, memberEmail);
		MemberService service = new MemberService();
		// update member_tbl set member_pw = ?, memberemail = ?, 
		int result = service.updateMember(member);
		
		if ( result > 0) {
			response.sendRedirect("index.jsp");
		}
		else {
			request.setAttribute("msg", "정보 수정이 완료되지 않았습니다.");
			request.setAttribute("url", "/index.jsp");
			request.getRequestDispatcher("/WEB-INF/views/common/errorPage.jsp").forward(request, response);
		}
	}

}
