package forward;

import bit.model.MemberVO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/fc.do")
public class ForwardController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = "park";
        int age= 45;
        String email = "aaa@emala.com";

        MemberVO vo = new MemberVO();
        vo.setName(name);
        vo.setAge(age);
        vo.setEmail(email);
        //forward.jsp
        //객체바인딩
        req.setAttribute("vo",vo);
        // forward
        RequestDispatcher rd = req.getRequestDispatcher("view/forward.jsp");
        rd.forward(req,resp);


    }
}
