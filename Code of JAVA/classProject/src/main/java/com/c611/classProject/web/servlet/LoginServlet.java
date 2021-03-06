package com.c611.classProject.web.servlet;

import com.c611.classProject.bean.UserInfo;
import com.c611.classProject.exception.UserInfoException;
import com.c611.classProject.service.IUserService;
import com.c611.classProject.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.LinkedTransferQueue;


/**
 * 处理登录的Servlet
 * 
 * @author yq
 * @date 2020年12月15日
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1.获取表单数据
		// 获取用户名和密码
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		UserInfo userInfo = null;
		// 2.处理业务逻辑
		IUserService userInfoService = new UserServiceImpl();
		try {
			userInfo = userInfoService.loginUserInfo(account);
			// userInfo == null：用户名和密码错误
			if (userInfo == null) {
				request.setAttribute("error_info", "用户不存在");
				// 请求转发到登录页面
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			} else if(!password.equals(userInfo.getPassword())){
				request.setAttribute("error_info", "密码错误！");
				// 请求转发到登录页面
				request.getRequestDispatcher("/index.jsp").forward(request, response);
			}else {
				// 登录成功，重定向到首页
				request.getSession().setAttribute("user_info",userInfo);
				request.getRequestDispatcher("./content/makeorder.jsp").forward(request,response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 出现异常
			request.setAttribute("error_info", "查询用户信息出现错误，请检查您的网络连接");
			// 请求转发到登录页面
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		// 通过用户名和密码进行登录
		// 3.分发转向
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 调用get方式处理代码
		this.doGet(request, response);
	}

}
