<%@page import="java.sql.Time"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="servlet.transferMoney"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal","root","root");

String rem="select * from transfer";
Statement stt=(Statement) conn.createStatement();
%>  
 
<div class="modal fade" tabindex="-1" role="dialog" id="trans" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background: #16c9f6; color: white; font-size: 20px;">
        <h5 class="modal-title">Transaction History</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl">
		<table class="table table-striped">
			<thead style="background: #16c9f6; color: white; font-size: 20px;">
				<tr>
					<th scope="col">Transfer To</th>
				    <th scope="col">Amount</th>
				    <th scope="col">Date</th>
				    <th scope="col">Time</th>
				    
				</tr>
			</thead>
			<tbody>
			
			
			<%
			ResultSet rst=(ResultSet) stt.executeQuery(rem);
  if(rst.next())
  {
  	do
  	{
  		String name=rst.getString("user");
  		int bln=rst.getInt("amount");
  		String d=rst.getDate("dt").toString();
  		String t=rst.getTime("tt").toString();
  %>
    <tr>
      <td><%=name %></td>
      <td>$ <%=bln %></td>
      <td><%=d %></td>
      <td><%=t %></td>
     </tr>
     
    <%
	}while(rst.next());
}
else
{
	out.println("No records found");
}
conn.close();
%>
			</tbody>
		</table>
	</div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn tbtn" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>






<div class="modal fade" role="dialog" id="money" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header" style="background: #16c9f6; color: white; font-size: 20px;">
        <h5 class="modal-title">Transfer Money</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="transferMoney" method="post">
        <div class="container">
   <div class="form-group">
    <input required type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter Name" name="tname">
  </div>
  <div class="form-group">
    <input required type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" name="mail">
  </div>
  <div class="form-group">
    <input required type="number" class="form-control" id="pwd" placeholder="Enter Amount" name="amt">
  </div>
  <div class="text-center">
  <button type="reset" class="btn tbtn">Reset</button>
  <button type="submit" class="btn tbtn">Transfer</button>
  </div>
  </div>
</form>
      </div>
      <div class="modal-footer">
      <button type="button" class="btn tbtn" data-dismiss="modal">Cancel</button>
      
        
      </div>
    </div>
  </div>
</div>