//package dao_bank;
//
//
//import java.sql.Connection;
//
//import java.sql.DriverManager;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.Statement;
//
//import dto_Bank.User_dto;
//
//public class User_dao {
//	
//	public Connection conn() throws Exception
//	{
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_database?createDatabaseIfNotExist=true","root","raman");
//		return con;
//	}
//	
//	public void createTable() throws Exception
//	{
//		Connection s=conn();
//		PreparedStatement pr=s.prepareStatement("create table if not exists user(email varchar(45) primary key,firstname varchar(45),lastname varchar(45),gender varchar(45),pwd varchar(45),address varchar(45),age int(5),phone bigint(10)");
//		pr.execute();
//		
//	}
//	
//	
//	
//	public int register(User_dto udto) throws Exception
//	{
//		createTable();
//		PreparedStatement ps=conn().prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
//		ps.setString(1, udto.getEmail());
//		ps.setString(2, udto.getFirstname());
//		ps.setString(3, udto.getLastname());
//		ps.setString(4, udto.getGender());
//		ps.setString(5, udto.getPasswd());
//		ps.setString(6, udto.getAddress());
//		ps.setInt(7, udto.getAge());
//		ps.setLong(8, udto.getPhno());
//		int a=ps.executeUpdate();
//		return a;
//	}
//	
//	public int update(User_dto udto) throws Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("update user set firstname=?,lastname=?,phone=?,age=?,gender=?,address=? where email=?");
//		ps.setString(1, udto.getFirstname());
//		ps.setString(2, udto.getLastname());
//		ps.setLong(3, udto.getPhno());
//		ps.setInt(4, udto.getAge());
//		ps.setString(5, udto.getGender());
//		ps.setString(6, udto.getAddress());
//		ps.setString(7, udto.getEmail());
//		int a=ps.executeUpdate();
//		return a;
//	}
//	
//	public User_dto profile(User_dto udto) throws Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("select * from user where email=?");
//		ps.setString(1, udto.getEmail());
//		ResultSet rs=ps.executeQuery();
//		if(rs.next())
//		{
//			User_dto udto1=new User_dto(rs.getString("firstname"), rs.getString("lastname"), rs.getString("email"), rs.getString("gender"), null, rs.getString("address"), rs.getInt("age"), rs.getLong("phone"));
//			return udto1;
//		}
//		return udto;
//	}
//	
//	public String login(User_dto udto) throws Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("select email,pwd from user where email=?");
//		ps.setString(1, udto.getEmail());
//		ResultSet rs=ps.executeQuery();
//		if(rs.next())
//		{
//			if(rs.getString("pwd").equals(udto.getPasswd()))
//			{
//				return "success";
//			}
//			else
//			{
//				return "Invalid password";
//			}
//		}
//		else
//		{
//			return "Invalid email";
//		}
//	}
//	
//	public int delete(User_dto udto) throws Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("delete from user where email=?");
//		ps.setString(1, udto.getEmail());
//		int a=ps.executeUpdate();
//		return a;
//	}
//	
//	public String updatepass(User_dto udto) throws Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("select * from user where email=?");
//		ps.setString(1, udto.getEmail());
//		ResultSet rs=ps.executeQuery();
//		if(rs.next())
//		{
//			PreparedStatement ps1=conn().prepareStatement("update user set pwd=? where email=?");
//			ps1.setString(1, udto.getPasswd());
//			ps1.setString(2, udto.getEmail());
//			int a=ps1.executeUpdate();
//			if(a>0)
//			{
//				return "s";
//			}
//		}
//		else
//		{
//			return "s1";
//		}
//		return null;
//	}
//
//
//}
package dao_bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dto_Bank.User_dto;

public class User_dao {

    public Connection conn() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project_database?createDatabaseIfNotExist=true", "root", "raman");
        return con;
    }

    public void createTable() throws Exception {
        Connection s = conn();
        PreparedStatement pr = s.prepareStatement(
                "CREATE TABLE IF NOT EXISTS user (" +
                "email VARCHAR(45) PRIMARY KEY, " +
                "firstname VARCHAR(45), " +
                "lastname VARCHAR(45), " +
                "gender VARCHAR(45), " +
                "pwd VARCHAR(45), " +
                "address VARCHAR(45), " +
                "age INT, " +
                "phone BIGINT" +
                ")"
        );
        pr.execute();
    }

    public int register(User_dto udto) throws Exception {
        createTable();
        PreparedStatement ps = conn().prepareStatement("INSERT INTO user VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        ps.setString(1, udto.getEmail());
        ps.setString(2, udto.getFirstname());
        ps.setString(3, udto.getLastname());
        ps.setString(4, udto.getGender());
        ps.setString(5, udto.getPasswd());
        ps.setString(6, udto.getAddress());
        ps.setInt(7, udto.getAge());
        ps.setLong(8, udto.getPhno());
        int a = ps.executeUpdate();
        return a;
    }

    public int update(User_dto udto) throws Exception {
        PreparedStatement ps = conn().prepareStatement("UPDATE user SET firstname = ?, lastname = ?, phone = ?, age = ?, gender = ?, address = ? WHERE email = ?");
        ps.setString(1, udto.getFirstname());
        ps.setString(2, udto.getLastname());
        ps.setLong(3, udto.getPhno());
        ps.setInt(4, udto.getAge());
        ps.setString(5, udto.getGender());
        ps.setString(6, udto.getAddress());
        ps.setString(7, udto.getEmail());
        int a = ps.executeUpdate();
        return a;
    }

    public User_dto profile(User_dto udto) throws Exception {
        PreparedStatement ps = conn().prepareStatement("SELECT * FROM user WHERE email = ?");
        ps.setString(1, udto.getEmail());
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            User_dto udto1 = new User_dto(
                rs.getString("firstname"),
                rs.getString("lastname"),
                rs.getString("email"),
                rs.getString("gender"),
                null,
                rs.getString("address"),
                rs.getInt("age"),
                rs.getLong("phone")
            );
            return udto1;
        }
        return udto;
    }

    public String login(User_dto udto) throws Exception {
        PreparedStatement ps = conn().prepareStatement("SELECT email, pwd FROM user WHERE email = ?");
        ps.setString(1, udto.getEmail());
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            if (rs.getString("pwd").equals(udto.getPasswd())) {
                return "success";
            } else {
                return "Invalid password";
            }
        } else {
            return "Invalid email";
        }
    }
   /* public String login(User_dto udto) throws Exception {
        Connection con = conn();
        if (con == null) {
            throw new Exception("Failed to establish connection to the database");
        }

        String email = udto.getEmail();
        if (email == null) {
            throw new Exception("Email cannot be null");
        }

        PreparedStatement ps = con.prepareStatement("SELECT email, pwd FROM user WHERE email = ?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            if (rs.getString("pwd").equals(udto.getPasswd())) {
                return "success";
            } else {
                return "Invalid password";
            }
        } else {
            return "Invalid email";
        }
    }*/


    public int delete(User_dto udto) throws Exception {
        PreparedStatement ps = conn().prepareStatement("DELETE FROM user WHERE email = ?");
        ps.setString(1, udto.getEmail());
        int a = ps.executeUpdate();
        return a;
    }

    public String updatepass(User_dto udto) throws Exception {
        PreparedStatement ps = conn().prepareStatement("SELECT * FROM user WHERE email = ?");
        ps.setString(1, udto.getEmail());
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            PreparedStatement ps1 = conn().prepareStatement("UPDATE user SET pwd = ? WHERE email = ?");
            ps1.setString(1, udto.getPasswd());
            ps1.setString(2, udto.getEmail());
            int a = ps1.executeUpdate();
            if (a > 0) {
                return "s";
            }
        } else {
            return "s1";
        }
        return null;
    }
}

