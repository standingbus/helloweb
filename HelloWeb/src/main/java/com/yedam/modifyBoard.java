package com.yedam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.BoardDao;
import com.yedam.board.BoardVO;
import com.yedam.common.Dao;

@WebServlet("/modify")
public class modifyBoard extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String no =req.getParameter("no");
		int bno = Integer.parseInt(no);
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		BoardVO brd = new BoardVO();
		brd.setBrdNo(bno);
		brd.setBrdTitle(title);
		brd.setBrdContent(content);
		BoardDao bd = new BoardDao();
		boolean result = bd.update(brd);
		
		if(result) {
			resp.sendRedirect("board/blist.jsp");
		} else {
			resp.sendRedirect("board/modify.jsp");
		}
	}
}
