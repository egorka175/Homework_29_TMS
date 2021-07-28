package Homeworl_27_TMS.web.servlet;

import Homeworl_27_TMS.entity.Operation;
import Homeworl_27_TMS.service.CalcService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/hist")
public class Historyservlet extends HttpServlet {
    private final CalcService calcService = new CalcService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Operation> historyOperation=calcService.findAll();
        req.getSession().setAttribute("listOperation",historyOperation);
        getServletContext().getRequestDispatcher("/hist.jsp").forward(req,resp);
    }


}
