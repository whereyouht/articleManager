package Project;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;
import java.sql.Connection;

public class DBConnection
{
    private String dbDriver="com.mysql.jdbc.Driver";
    private String dbUrl="jdbc:mysql://localhost:3306/articleManager?characterEncoding=utf8";
    private String dbUser="root";
    private String dbPass="wp784499673";
    public Connection getConn()
    {
        Connection conn=null;
        try
        {
            Class.forName(dbDriver);
        }
        catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        }
        try
        {
            conn = DriverManager.getConnection(dbUrl,dbUser,dbPass);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return conn;
    }

    public int insert(String sql)
    {
        int i=0;
        Connection cnn=getConn();

        try{
            PreparedStatement preStmt =cnn.prepareStatement(sql);
            i=preStmt.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return i;
    }
    public int update(String sql)
    {
        int i=0;

        Connection cnn=getConn();


        try{
            PreparedStatement preStmt =cnn.prepareStatement(sql);
            i=preStmt.executeUpdate();
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return i;
    }
    public List<String> select(String sql)
    {
        int i;
        Connection cnn = getConn();
        List<String> list = new LinkedList<String>();
        try
        {
            Statement stmt = cnn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next())
            {
                for(i = 1;i<=rs.getMetaData().getColumnCount();i++){
                    list.add(rs.getString(i));}
            }
            //¿ÉÒÔ½«²éÕÒµ½µÄÖµÐ´ÈëÀà£¬È»ºó·µ»ØÏàÓ¦µÄ¶ÔÏó
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return list;
    }
    public int delete(String sql)
    {

        int i=0;
        Connection conn = getConn();
        try
        {
            Statement stmt = conn.createStatement();
            i = stmt.executeUpdate(sql);
        }
        catch (SQLException e)
        {
            e.printStackTrace();
        }
        return i;
    }
}
