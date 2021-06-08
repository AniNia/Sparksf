<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.mysql.jdbc.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/examportal", "root", "root");

String remn = "select * from account";
Statement st = (Statement) con.createStatement();
ResultSet rs = (ResultSet) st.executeQuery(remn);
%>

<html>
<head>
<title>Spark Foundation</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="common.jsp"%>
</head>

<body>
	<nav class="navbar navbar-expand-lg fixed-top ">
		<div class="container text-uppercase p-2">
			<img src="image/bank.png" style="max-width: 45px;"
				class="img-fluid rounded-circle" alt="product_icon"> 
				<a class="navbar-brand font-weight-bold" href="#"> The Sparks</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"><img src="image/menu.png"
					class="img-fluid rounded-circle" alt="..."></span>
			</button>


			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp">Back To Home <span class="sr-only">(current)</span>
					</a></li>
				</ul>

			</div>
		</div>
	</nav>



	<section class="serviceoffer" id="servicediv" style="margin-top: 50px;">
		<div class="container-fluid heading text-center" style="background: linear-gradient(#16c9f6,#fff);">
		<br>
			<h1 class="text-center font-weight-bold"><span style="color: #fff;">Account Holder</span></h1>
			<h3 class="text-center font-weight-bold" style="color: maroon;">
				<%
				if (rs.next()) {
					int id = rs.getInt("id");
					String ac = rs.getString("account_number");
					String name = rs.getString("name");
					String mail = rs.getString("email");
					int blnc = rs.getInt("balance");
					System.out.println(name);
					System.out.println(ac);
					System.out.println(mail);
				%>


				<%=name%></h3>
			<h4 class="text-center">
				Total Bank Balance : $
				<%=blnc%></h4>
			<%
			}
			%>
			<div class="container">
				<a  class="tbtn btn mb-2" data-toggle="modal"data-target="#money">Transfer Money</a> 
				<a class="tbtn btn mb-2"  data-toggle="modal" data-target="#trans">Transaction History</a>
			</div>
		</div>
	</section>
	<br>
	<%@ include file="message.jsp"%>
	<hr>
	<br>

	<div
		class="container table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl">
		<table class="table table-striped">
			<thead style="background: #16c9f6; color: white; font-size: 20px;">
				<tr>
					<th scope="col">Account Number</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Balance</th>
				</tr>
			</thead>
			<tbody>


				<%
				ResultSet r = (ResultSet) st.executeQuery(remn);
				if (r.next()) {
					do {
						int id = r.getInt("id");
						String ac = r.getString("account_number");
						String name = r.getString("name");
						String mail = r.getString("email");
						int blnc = r.getInt("balance");
				%>
				<tr>
					<td><%=ac%></td>
					<td><%=name%></td>
					<td><%=mail%></td>
					<td>$ <%=blnc%></td>
				</tr>

				<%
				} while (r.next());
				} else {
				out.println("No records found");
				}
				con.close();
				%>
			</tbody>
		</table>
	</div>



	<br>
	<br>

	<footer class="footers" id="footerr">

		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12 f-div">
					<div class="container">
						<h4>About Spark Banking System</h4>
						<p>In Sparks Banking System customers feels the sense of safety for their bank balance. And easily transfer the money to each other.
					Here transaction history saved i.e. each transaction have its own id for easy identification.</p>
					
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12 f-div">
					<div class="container text-center">
						<h4>Navigation Links</h4>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp">Services</a></li>
						<li><a href="index.jsp">Contact Us</a></li>
						<li><a href="index.jsp">Subscribe Us</a></li>
					</div>
				</div>

				<div class="col-lg-4 col-md-12 col-12 f-div mt-3">
					<div class="container">
							<h4 class="text-center">Contact Details</h4>
							<div class="row">
								<div
									class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1 text-center">
									<a href="https://www.youtube.com/channel/UC6rqE8pTrNvyQg3Hq-REJvQ"><img
										src="image/youtube.png" style="max-width: 55px;"
										class="img-fluid rounded-circle" alt="product_icon"></a>
								</div>
								<div
									class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1 text-center">
									<a href="https://www.linkedin.com/in/anjali-mishra-8a8a4419a/"><img
										src="image/linkedin (2).png" style="max-width: 55px;"
										class="img-fluid rounded-circle" alt="product_icon"></a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
	
		<div class="container text-center">
			<div class="mt-5 text-center">
				<p>Copyright @2021 All right reserved | This website design by
					Ani</p>
			</div>
		</div>

	</footer>






	<%@ include file="modals.jsp"%>
</body>
</html>