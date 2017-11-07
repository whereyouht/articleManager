package com.shyy.menu.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shyy.menu.dao.MenuDao;

/**
 * 菜单Servlet类
 * @author 束洋洋
 * @CreateDate 2012-1-16上午10:45:42
 */
public class MenuServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * 请求Servlet方法
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MenuDao menuDao=new MenuDao();
		List menuList=menuDao.getAllMenuInfo();
		req.setAttribute("menuList", menuList);
		req.getRequestDispatcher("menu.jsp").forward(req, resp);
	}

}
