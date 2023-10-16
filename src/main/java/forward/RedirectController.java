package forward;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/rc.do")
public class RedirectController extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. forward 실습
//        int su = 100;
        String data ="apply";
        String name = "park";
        int age = 45;
        String email = "aaa@emal.com";
        // View page(result.jsp)로 data 전달하여 View page 에서 출력
        // Controller 에서 View 로 페이지를 전환하는 방법
        // 1. redirect
        // 2. forward
//        request.setAttribute("data",data); //객체바인딩 (request바인딩)
        response.sendRedirect("view/result.jsp?data="+data);

    }
}
