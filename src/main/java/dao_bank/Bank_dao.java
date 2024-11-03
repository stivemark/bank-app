package dao_bank;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dto_Bank.Bank_dto;
import dto_Bank.User_dto;

public class Bank_dao {
	
	public Connection conn() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project_database?createDatabaseIfNotExist=true","root","raman");
		return con;
	}
	
	public void createTable() throws Exception
	{
		Statement s=conn().createStatement();
		s.execute("create table if not exists bank(email varchar(45),firstname varchar(45),lastname varchar(45),gender varchar(45),address varchar(45),age int(5),phone bigint(10),pin int(5),balance double,accno bigint(12),typeOfAccount varchar(45))");
		
	}
	
	public int register(Bank_dto bdto) throws Exception
	{
		createTable();
		PreparedStatement ps=conn().prepareStatement("select * from user where email=?");
		ps.setString(1, bdto.getEmail());
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			PreparedStatement ps1=conn().prepareStatement("insert into bank values(?,?,?,?,?,?,?,?,?,?,?)");
			ps1.setString(1, rs.getString("email"));
			ps1.setString(2, rs.getString("firstname"));
			ps1.setString(3, rs.getString("lastname"));
			ps1.setString(4, rs.getString("gender"));
			ps1.setString(5, rs.getString("address"));
			ps1.setInt(6, rs.getInt("age"));
			ps1.setLong(7, rs.getLong("phone"));
			ps1.setInt(8, bdto.getPin());
			ps1.setDouble(9, bdto.getBalance());
			ps1.setLong(10, bdto.getAccno());
			ps1.setString(11, bdto.getTypeOfAccount());
			int a=ps1.executeUpdate();
			return a;
		}
		return 0;
		
	}
	
	
	public double showbalance(Bank_dto bdto) throws Exception
	{
		PreparedStatement ps=conn().prepareStatement("select * from bank where email=?");
		ps.setString(1, bdto.getEmail());
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			int pin=rs.getInt("pin");
			if(pin==bdto.getPin())
			{

				double s=rs.getDouble("balance");
				return s;
			}
		}
		return 0;
		
	}
	
	
	public boolean transaction(Bank_dto bdto) throws Exception
	{
		PreparedStatement ps=conn().prepareStatement("select * from bank where phone=?");
		ps.setLong(1, bdto.getPhno());
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			PreparedStatement ps1=conn().prepareStatement("select * from bank where email=?");
			ps1.setString(1, bdto.getEmail());
			ResultSet rs1=ps1.executeQuery();
			if(rs1.next())
			{
				if(rs1.getDouble("balance")>=bdto.getBalance())
				{
					double ab=bdto.getBalance();
					double bc=rs1.getDouble("balance");
					double ks=bc-ab;
					PreparedStatement ps2=conn().prepareStatement("update bank set balance=? where email=?");
					ps2.setDouble(1, ks);
					ps2.setString(2, bdto.getEmail());
					ps2.execute();
					double ma=rs.getDouble("balance");
					double ms=ma+ab;
					PreparedStatement ps3=conn().prepareStatement("update bank set balance=? where phone=?");
					ps3.setDouble(1, ms);
					ps3.setLong(2, bdto.getPhno());
					ps3.execute();
					return true;
				}
			}
		}
		return false;
	}
//	
//	public boolean withdraw(long accountNumber,int pin,double amount) throws SQLException, Exception
//	{
//		PreparedStatement ps=conn().prepareStatement("select * from bank where accno=?&pin=?");
//		ps.setLong(1, accountNumber);
//		ps.setInt(2, pin);
//		ResultSet rs=ps.executeQuery();
//		if(rs.next())
//		{
//			double A_balance=rs.getDouble("balance");
//			if(A_balance>=amount)
//			{
//				PreparedStatement ps1=conn().prepareStatement("update bank set balance=? where accno=?&pin=?");
//				ps1.setDouble(1, (A_balance-amount));
//				ps1.setLong(2, accountNumber);
//				ps1.setInt(3, pin);
//				ps1.execute();
//				System.out.println("it has doen");
//				return true;
//				
//			}
//			return false;
//			
//		}
//		return false;
//		
//	}
	public boolean withdraw( double amount,int pin) throws SQLException, Exception {
	    Connection con = conn();
	    if (con == null) {
	        throw new Exception("Failed to establish connection to the database");
	    }

	    PreparedStatement ps = con.prepareStatement("SELECT balance FROM bank WHERE  pin = ?");
	   // ps.setLong(1, accountNumber);
	    ps.setInt(1, pin);
	    ResultSet rs = ps.executeQuery();

	    if (rs.next()) {
	        double balance = rs.getDouble("balance");
	        if (balance >= amount) {
	        	double amount1=balance-amount;
	        	System.out.println(amount);
	            PreparedStatement ps1 = con.prepareStatement("UPDATE bank SET balance = ? WHERE  pin = ?");
	            ps1.setDouble(1, amount1);
	           // ps1.setLong(2, accountNumber);
	            ps1.setInt(2, pin);
	            int rowsUpdated = ps1.executeUpdate();

	            if (rowsUpdated > 0) {
	                System.out.println("Withdrawal successful");
	                return true;
	            } else {
	                System.out.println("Withdrawal failed");
	                return false;
	            }
	        } else {
	            System.out.println("Insufficient balance");
	            return false;
	        }
	    } else {
	        System.out.println("Account not found or incorrect PIN");
	        return false;
	    }
	}
	
	public boolean deposit(double amount,int pin) throws Exception
	{
		 Connection con = conn();
		    if (con == null) {
		        throw new Exception("Failed to establish connection to the database");
		    }

		    PreparedStatement ps = con.prepareStatement("SELECT balance FROM bank WHERE pin = ?");
		    //ps.setLong(1, accountNumber);
		    ps.setInt(1, pin);
		    ResultSet rs = ps.executeQuery();

		    if (rs.next()) {
		        double balance = rs.getDouble("balance");
		        if (amount>0) {
		        	amount+=balance; 
		            PreparedStatement ps1 = con.prepareStatement("UPDATE bank SET balance = ? WHERE pin = ?");
		            ps1.setDouble(1, amount);
		            //ps1.setLong(2, accountNumber);
		            ps1.setInt(2, pin);
		            int rowsUpdated = ps1.executeUpdate();

		            if (rowsUpdated > 0) {
		                System.out.println("deposit successful");
		                return true;
		            } else {
		                System.out.println("deposit failed");
		                return false;
		            }
		        } else {
		            System.out.println("please enter corect  balance");
		            return false;
		        }
		    } else {
		        System.out.println("Account not found or incorrect PIN");
		        return false;
		    }
	}

	public Bank_dto details(int  pin) throws Exception {
	    PreparedStatement ps = conn().prepareStatement("SELECT * FROM bank WHERE pin = ? ");
	    ps.setInt(1, pin);
	    ResultSet rs = ps.executeQuery();
	    if (rs.next()) {
	        // Populate the bto1 object with data retrieved from the database
	            Bank_dto bto1 = new Bank_dto(
	            rs.getString("firstname"),
	            rs.getString("lastname"),
	            rs.getString("email"),
	            rs.getString("gender"),
	            rs.getString("address"),
	            rs.getInt("age"),
	            rs.getInt("pin"),
	            rs.getLong("phone"),
	            rs.getLong("accno"),
	            rs.getDouble("balance"),
	            rs.getString("typeOfAccount")
	        );
	        System.out.println("Account details retrieved successfully in accountDetais method");
	        return bto1;
	    }
	    // Return null if no matching record is found
	    System.out.println("No account found with the provided email");
	    return null;
	}

	public String updatepin(long phone, int pin) throws SQLException, Exception {
		
		
		PreparedStatement ps = conn().prepareStatement("SELECT * FROM bank WHERE phone = ?");
        ps.setLong(1, phone);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            PreparedStatement ps1 = conn().prepareStatement("UPDATE bank SET pin = ? WHERE phone = ?");
            ps1.setInt(1,pin );
            ps1.setLong(2, phone);
            
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
