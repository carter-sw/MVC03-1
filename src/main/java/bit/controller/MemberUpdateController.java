package bit.controller;



import bit.model.MemberDAO;
import bit.model.MemberVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/memberUpdate.do")
public class MemberUpdateController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        //파라메타 수집 (VO)
        int num = Integer.parseInt(req.getParameter("num"));
        int age = Integer.parseInt(req.getParameter("age"));
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");

        MemberVO vo = new MemberVO();
        vo.setNum(num);
        vo.setAge(age);
        vo.setEmail(email);
        vo.setPhone(phone);

        MemberDAO dao = new MemberDAO();
        int cnt = dao.memberUpdate(vo);
        if (cnt > 0) {
            //가입성공
            resp.sendRedirect("/web/memberList.do");
        } else {
            // 가입실패 -> 예외실패 WAS
            throw new ServletException("not insert");
        }

    }
}
