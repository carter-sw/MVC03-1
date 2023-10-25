package bit.controller;


import bit.model.MemberDAO;
import bit.model.MemberVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/memberList.do")
public class MemberListController extends HttpServlet {
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        // 1.클라이언트의 요청을 받기(memberList.do)
        // 2.회원전체 리스트 가져오기(Model 연동)
        MemberDAO dao = new MemberDAO();
        ArrayList<MemberVO> list = dao.memberList();

        // 객체 바인딩 (request 바인딩)
        req.setAttribute("list",list);
        // forward 기법
        RequestDispatcher rd = req.getRequestDispatcher("member/memberList.jsp");
        rd.forward(req, res);

    }
}
