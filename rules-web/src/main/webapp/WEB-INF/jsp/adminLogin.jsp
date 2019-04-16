
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
<title>登录</title>
        <!-- CSS -->
        <link rel="stylesheet" href="../Exam/assets/css/reset.css">
        <link rel="stylesheet" href="../Exam/assets/css/supersized.css">
        <link rel="stylesheet" href="../Exam/assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="../Exam/css/styles.css">
		<!-- <style type="text/css">
		body,td,th { font-family: "Source Sans Pro", sans-serif; }
		/* body { background-color: #2B2B2B; } */
		</style> -->
</head>
<body>
        <div class="page-container">	           
		<div class="wrapper">	
			<div class="container">
				<strong><span style="font-weight: bold;font-size: 25px;">登  录</span></strong>
				<form class="form" action="<%=request.getContextPath()%>/account/backstage" method="post">
					<input type="text" name="account" placeholder="Account" id="login_account">
					<input type="password" name="password"  placeholder="Password" id="login_password">
                    <label>${msg}</label>
					<button type="submit" id="login-button" >Login</button>
				</form>
			</div>
	  </div>
        </div>
      <script type="text/javascript" src="../Exam/js/jquery-2.1.1.min.js"></script>
        <!-- Javascript -->
        <script src="../Exam/assets/js/jquery-1.8.2.min.js"></script>
        <script src="../Exam/assets/js/supersized.3.2.7.min.js"></script>
        <script src="../Exam/assets/js/supersized-init.js"></script>
        <script src="../Exam/assets/js/scripts.js"></script>

</body>
</html>