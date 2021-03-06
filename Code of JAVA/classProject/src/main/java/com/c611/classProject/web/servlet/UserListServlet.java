package com.c611.classProject.web.servlet;

import com.c611.classProject.bean.UserInfo;
import com.c611.classProject.bean.UserInfoPage;
import com.c611.classProject.exception.UserInfoException;
import com.c611.classProject.service.IUserService;
import com.c611.classProject.service.impl.UserServiceImpl;
import com.mysql.cj.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


/**
 * @author Akili
 * @date 2020/12/19 14:40
 * @software IntelliJ IDEA
 */
@WebServlet("/clientListServlet")
public class UserListServlet extends HttpServlet {

    public UserListServlet(){}

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pageStr=req.getParameter("page");
        String sizeStr=req.getParameter("size");
        int page=1;
        int size=5;
        if(!StringUtils.isNullOrEmpty(pageStr)){
            try {
                page=Integer.parseInt(pageStr);
            }catch (NumberFormatException var11){
                var11.printStackTrace();
            }
        }

        if (!StringUtils.isNullOrEmpty(sizeStr)) {
            try {
                size = Integer.parseInt(sizeStr);
            } catch (NumberFormatException var10) {
                var10.printStackTrace();
            }
        }
        //构建服务层接口对象
        IUserService IUserService = new UserServiceImpl();

        try {

            //调用查询所有用户的方法
           UserInfoPage userInfoPage = IUserService.findAll(page,size);

            //保存集合数据到request作用域中
            req.setAttribute("userInfoPage", userInfoPage);

            //分发转向
            req.getRequestDispatcher("/content/user.jsp").forward(req, resp);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


}
