package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;


public class transferMoney extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public transferMoney() {
        super();
        
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal","root","root");
		    
			boolean isAvailable=false;
			String uname=request.getParameter("tname");
			String emal=request.getParameter("mail");
			int amt=Integer.parseInt(request.getParameter("amt"));
			String remn="select * from account where name=?";			
		    PreparedStatement pst=con.prepareStatement(remn);	
		    pst.setString(1, uname);
			java.sql.ResultSet rs=pst.executeQuery();
			if(rs.next()){
				isAvailable=true;
			}
						 if(isAvailable!=false){
				    String up="update account set balance=balance-? where name=?";
					String qr="update account set balance=balance+? where email=?";
					String tm="insert into transfer(user, amount, dt,tt) values(?,?,curdate(),curtime())";
					PreparedStatement pup=con.prepareStatement(up);
					PreparedStatement ps=con.prepareStatement(qr);
					PreparedStatement pt=con.prepareStatement(tm);
					pup.setString(2, "Anjali Mishra");
					pup.setInt(1, amt);
					ps.setString(2,emal);
					ps.setInt(1,amt);
					pt.setString(1, uname);
					pt.setInt(2, amt);
					
					
					pup.executeUpdate();
					ps.executeUpdate();
					pt.executeUpdate();
					
					System.out.println("Succeesssss");
				    	
				  HttpSession httpSession=request.getSession();
					httpSession.setAttribute("message", "Amount Transfer Sucessfully!!!!");
					response.sendRedirect("transaction.jsp");
					return;
				    }	
			 else {
				 System.out.println("noooooooooooooo");
				 HttpSession httpSession=request.getSession();
					httpSession.setAttribute("message", "Customer Not Exist!!!!");
					response.sendRedirect("transaction.jsp");
					return;
				 
				    
			 }
		
		      //HttpSession httpSession=request.getSession();
				//httpSession.setAttribute("message", "deleted Sucessfully!!!!");
			    
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		


	
	}

}
