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
 * Servlet implementation class RegisterController
 */
@WebServlet("/member/register.do")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/register.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String memberId = request.getParameter("member-id");
		String memberPw = request.getParameter("member-pw");
		String memberName = request.getParameter("member-name");
		String memberAddr = request.getParameter("member-addr");
		String memberFirstPhone = request.getParameter("member-fphone");
		String memberSecondPhone = request.getParameter("member-sphone");
		String memberLastPhone = request.getParameter("member-lphone");
		String memberEmail = request.getParameter("member-email");
		
		Member member = new Member(memberId, memberPw, memberName, memberAddr, memberFirstPhone, memberSecondPhone, memberLastPhone, memberEmail);
		
		MemberService service = new MemberService();
		int result = service.insertMember(member);
		if(result > 0) {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/member/registerFinish.jsp");
			view.forward(request, response);
		}
	}

}
