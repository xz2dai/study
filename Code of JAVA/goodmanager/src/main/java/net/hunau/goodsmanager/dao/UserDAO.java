package net.hunau.goodsmanager.dao;

import net.hunau.goodsmanager.utils.JDBCUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//用户相关操作DAO
public class UserDAO {
    private static Connection connection = null;
    static {
        JDBCUtils jdbc = new JDBCUtils();
        try {
            connection = jdbc.getConnection();
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }
    }
    /*
    用户登录
    @param username 用户名
    @param password 用户密码
     */
    public boolean login(String username,String password) throws SQLException{
        PreparedStatement pstm = connection.prepareStatement("SELECT ");
        return false;
    }
}
