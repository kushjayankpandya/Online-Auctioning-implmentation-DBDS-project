<!DOCTYPE html>
<!-- === Coding by CodingLab | www.codinglabweb.com === -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- ===== Iconscout CSS ===== -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <!-- ===== CSS ===== -->
    <link rel="stylesheet" href="style.css">
         
    <!--<title>Login & Registration Form</title>-->
</head>
<body>
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
    <div class="container">
        <div class="forms">
            <div class="form login">
                <span class="title">Login</span>

                <form method = "post" action="login">
                    <div class="input-field">
                        <input type="text" name = "username" placeholder="Enter your Email" required>
                        <i class="uil uil-envelope icon"></i>
                    </div>
                    <div class="input-field">
                        <input type="password" class="password" name ="password" placeholder="Enter your password" required>
                        <i class="uil uil-lock icon"></i>
                        <i class="uil uil-eye-slash showHidePw"></i>
                    </div>

                    <div class="checkbox-text">
                        <div class="checkbox-content">
                            <input type="checkbox" id="logCheck">
                            <label for="logCheck" class="text">Remember me</label>
                        </div>
                        
                        <a href="#" class="text">Forgot password?</a>
                    </div>

                    <div class="input-field button">
                        <input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" >
                    </div>
                </form>

                <div class="login-signup">
                    <span class="text">Not a member?
                        <a href="registration.jsp" class="text signup-link">Sign Up Now</a>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript">
		var status = document.getElementById("status").value;
		if(status == "failed"){
			alert("Wrong username or password");
		}
	</script>
</body>
</html>