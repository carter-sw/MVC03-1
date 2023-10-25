package bit.controller;



import bit.model.MemberDAO;
import bit.model.MemberVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/memberContent.do")
public class MemberContentController extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //http://127.0.0.1:8081/web/memberContent.do?num= get 방식
        int num=Integer.parseInt(req.getParameter("num"));

        MemberDAO dao = new MemberDAO();
        MemberVO vo = dao.memberContent(num);

      // 객체 바인딩

        req.setAttribute("vo",vo);
        RequestDispatcher rd = req.getRequestDispatcher("member/memberContent.jsp");
        rd.forward(req,resp);
    }
}
