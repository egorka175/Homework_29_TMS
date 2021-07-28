package Homeworl_27_TMS.web.servlet;

import Homeworl_27_TMS.entity.Operation;
import Homeworl_27_TMS.entity.User;
import Homeworl_27_TMS.service.CalcService;

import javax.net.ssl.HandshakeCompletedEvent;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet( name="calcServlet", urlPatterns ="/calc")
public class CalcServlet extends HttpServlet {

	private final CalcService calcService = new CalcService();


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		getServletContext().getRequestDispatcher("/calc.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession sessionResult=req.getSession();
		double num1 = Double.parseDouble(req.getParameter("num1"));
		double num2 = Double.parseDouble(req.getParameter("num2"));
		String operation = req.getParameter("operation");
		Date date=new Date();
		Date time=new Date();

		Operation calc = calcService.calc(num1, num2, operation,date,time);
		sessionResult.setAttribute("rez1",num1+operation+num2+"="+calc);
		sessionResult.setAttribute("rez2",calc);
		req.setAttribute("num",num1);
		getServletContext().getRequestDispatcher("/calc.jsp").forward(req, resp);
	}

}
