<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Spark Foundation</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="common.jsp"%>
</head>

<body>
<%@include file="navbar.jsp"%>
	<div class="header" id="topheader">
		
		<section class="header-section">
			<div class="center-div">
				<h1 class="font-weight-bold">The Sparks <span style="color: aqua;">Banking</span> System</h1>
				<p style="color:silver; font-family: cursive; font-size: 20px;">You can transfer money to your customer in the fastest way.</p>
				<div class="header-buttons">
					<a href="#footerr">About Us</a> <a href="#contact">Contact Us</a>
				</div>
			</div>
		</section>
	</div>


	<section class="header-extradiv" style="text-align: center;">
		<div class="container">
			<div class="row">
				<div class="extra-div col-lg-4 col-md-4 col-12" id="eta">
					<div class="container">
								<img src="image/home.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>
					<h2
						style="font-size: 0.9rem; margin: 20px 0 15px 0; font-weight: bold; line-height: 1.1; word-spacing: 4px;">Home</h2>
					<p>Banking system is defined as the business activity of accepting and safeguarding money owned by individual entities.</p>
				</div>

				<div class="extra-div col-lg-4 col-md-4 col-12" id="eta">
					<div class="container">
								<img src="image/24-hours.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>
					<h2
						style="font-size: 0.9rem; margin: 20px 0 15px 0; font-weight: bold; line-height: 1.1; word-spacing: 4px;">Services</h2>
					<li>Any time transfer money.</li>
				<li>Any time check customer details.</li>
				<li>Any time check your transaction history.</li>
				
				</div>

				<div class="extra-div col-lg-4 col-md-4 col-12" id="eta">
				<div class="container">
								<img src="image/communicate.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>
					<h2
						style="font-size: 0.9rem; margin: 20px 0 15px 0; font-weight: bold; line-height: 1.1; word-spacing: 4px;">Contact
						Us</h2>
					<p>Contact Us for any query. Follow the link bellow in contact details.
					You can also send message by filling contact us form.</p>
				</div>
			</div>
		</div>
	</section>
<br>
	<section class="serviceoffer" id="servicediv">
		<div class="container heading text-center">
			<h1 class="text-center font-weight-bold text-white; mt-5">Our Services</h1>
		</div>
		<br>
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-12">
					<div class="card c1" style="cursor: pointer;">
						<div class="card-body text-center">

							<div class="container">
								<img src="image/user.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>
							<div class="s-buttons">
								<a href="transaction.jsp">Customers</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-12 sec">
					<div class="card c1" style="cursor: pointer;">
						<div class="card-body text-center">

							<div class="container">
								<img src="image/money-transfer.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>

							<div class="s-buttons">
								<a href="transaction.jsp" style="padding:10px;">Transaction</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-12">
					<div class="card c1" style="cursor: pointer;">
						<div class="card-body text-center">

							<div class="container">
								<img src="image/donate.png" style="max-width: 115px;"
									class="img-fluid rounded-circle" alt="product_icon">
							</div>
							<div class="s-buttons">
								<a href="#">Donate</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

<br>
	<section class="contactus" id="contact">

		<div class="container heading text-center">
			<h1 class="text-center font-weight-bold">Contact Us</h1>
			<p class="text-capitalize pt-1">We're Here To Help And Answer Any
				Question You Might Have. We Look Forward To Hearing From You.</p>
		</div>
		<div class="container">
			<div class="row">

				<div
					class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1">
					<form>
						<div class="mb-3">
							<input required type="text" class="form-control" id="name"
								aria-describedby="emailHelp" name="user_name"
								placeholder="Enter Full Name">
						</div>
						<div class="mb-3">
							<input required type="email" class="form-control" id="email"
								aria-describedby="emailHelp" name="user_email"
								placeholder="Enter Email">
						</div>
						<div class="mb-3">
							<input required type="number" class="form-control" id="number"
								aria-describedby="emailHelp" name="user_number"
								placeholder="Enter Mobile Number">
						</div>
						<div class="mb-3">
							<textarea required name="user_msg" style="height: 100px;"
								class="form-control" placeholder="Enter your message"></textarea>
						</div>
						<div class="container d-flex justify-content-center">
							<button class="sbtn btn" type="submit">Submit</button>
						</div>
					</form>


				</div>

			</div>


		</div>
	</section>

	<section class="news" id="news">

		<div class="container heading text-center">
			<h1 class="text-center font-weight-bold">Subscribe Us</h1>
		</div>
		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-md-8 col-12 offset-lg-2 offset-md-2">
					<div class="input-group mb-3">
						<input type="text" class="form-control newss"
							placeholder="Recipient's username"
							aria-label="Recipient's username" aria-describedby="basic-addon2">
						<div class="input-group-append">
							<span class="input-group-text text-center font-weight-bold"
								id="basic-addon2">Subscribe</span>
						</div>
					</div>

				</div>

			</div>


		</div>
	</section>

<footer class="footers" id="footerr">

<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 col-12">
					<div class="container">
					<h4>About Spark Banking System</h4>
					<p>In Sparks Banking System customers feels the sense of safety for their bank balance. And easily transfer the money to each other.
					Here transaction history saved i.e. each transaction have its own id for easy identification.</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 col-12">
				<div class="container text-center">
					<h4>Navigation Links</h4>
				<li><a href="#topheader">Home</a></li>
				<li><a href="#servicediv">Services</a></li>
				<li><a href="#contact">Contact Us</a></li>
				<li><a href="#footerr">Subscribe Us</a></li>
					</div>
				</div>
				
				<div class="col-lg-4 col-md-12 col-12 mt-3">
				<div class="container">
					<h4 class="text-center">Contact Details</h4>
					<div class="row">
					<div class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1 text-center"><a href="https://www.youtube.com/channel/UC6rqE8pTrNvyQg3Hq-REJvQ"><img src="image/youtube.png" style="max-width: 55px;"class="img-fluid rounded-circle" alt="product_icon"></a></div>
					<div class="col-lg-8 col-md-8 col-10 offset-lg-2 offset-md-2 offset-1 text-center"><a href="https://www.linkedin.com/in/anjali-mishra-8a8a4419a/"><img src="image/linkedin (2).png" style="max-width: 55px;"class="img-fluid rounded-circle" alt="product_icon"></a></div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		<div class="container text-center">
		<div class="mt-5 text-center">
		<p>Copyright @2021 All right reserved | This website design by Ani</p>
		</div>
		</div>

</footer>







</body>
</html>