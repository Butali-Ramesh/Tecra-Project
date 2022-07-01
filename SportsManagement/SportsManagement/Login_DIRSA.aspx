<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_DIRSA.aspx.cs" Inherits="SportsManagement.Login_DIRSA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Font Icon -->
    <link rel="stylesheet" href="fontss/material-icon/css/material-design-iconic-font.min.css" > 

       <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet">
    <!-- Main css -->   
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">
        
    <form id="form1" runat="server">
        <div>
            <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/sports_signup.jpg" alt="sing up image"></figure>
                        <a href="Regsiter_DIRSA.aspx" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign In </h2>
                        <form class="register-form" id="login-form">
                            <div class="form-group">
                                <label for="rollno"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <asp:TextBox runat="server" name="rollno" id="rollno" placeholder="Your Roll No"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <asp:TextBox runat="server"  name="pass" id="pass" placeholder="Password" TextMode="Password"> </asp:TextBox>
                            </div>
            <!--                              <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>--> 
                            <div class="form-group form-button">
                                <asp:Button runat="server" id="signin" class="form-submit" Text="Log in" OnClick="signin_Click"></asp:Button>
                                
                            </div>
                            <a href="ForgotPassword_DIRSA.aspx" class="signup-image-link2">Forgot Password</a>
                            <asp:Label ID="lbllogin" runat="server" ForeColor="Red"></asp:Label>

                        </form>
                     <!--     <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href=""><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div> -->
                    </div>
                </div>
            </div>
        </section>
        </div>
    </form>
    </div>
</body>
</html>
