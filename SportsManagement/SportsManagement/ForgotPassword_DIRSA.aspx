<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword_DIRSA.aspx.cs" Inherits="SportsManagement.ForgotPassword_DIRSA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Forgot Password</title>
    
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
    <form id="form1" runat="server">
        <div>
            
        
            <main>
                
        <asp:Panel ID="panlogin" runat="server">
        <div class="container">
            <div class="signup-content">
                <div class="signup-image">
                     <img src="https://upload.wikimedia.org/wikipedia/en/4/47/VNRVJIETLogo.png" alt="Logo"/>
                <h2 style="margin-left:25x;">VNR's Sports Complex <br /> The way for you to play</h2>
                </div>

                <div class="signin-form">
                          <p class="form-title" align="center" class="form-title">Forgot Password</p>
                    <div class="form-group">
                          <label for="email"><i class="zmdi zmdi-email" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="txtemail" id="txtemail" placeholder="Your College Mail"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="req3" runat="server" ControlToValidate="txtemail" ErrorMessage="* Mail Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                                <asp:RegularExpressionValidator ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid email address   " ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:Label ID="Label2" runat="server" style="font-size:small"></asp:Label>
                    </div>
                    <div class="form-group form-button">
                          <a class="submit" align="center">        
                      <asp:Button class="form-submit" Text="Submit" runat="server" ID="forgot" OnClick="forgot_Click"   /> 
                    </div>
                      <p class="forgot" align="center"> 
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </p> 
                          </a>
                </div>
            </div>
        </div>         
           </asp:Panel>

        <asp:Panel ID="Panotp" runat="server">
        <div class="container">
            <div class="signup-content">
                
            <div class="signup-image">
                <img src="https://upload.wikimedia.org/wikipedia/en/4/47/VNRVJIETLogo.png" alt="Logo"/>
                <h2> Its fast to play VolleyBall now</h2>
            </div>
           
            <div class="signup-form" style="margin-top:120px;">
                            
                    <p class="sign" align="center" class="form-title">
                        OTP</p>
                    <asp:TextBox ID="txtotp" runat="server" align="center" placeholder="Enter OTP"></asp:TextBox>
                    <div class="form-group form-button">
                        <a class="submit" align="center">
                        <asp:Button ID="verify" runat="server" Text="Verify OTP" class="form-submit" OnClick="verify_Click" /></a>
                    </div>
         
                    <p class="forgot" align="center">
                        <asp:Label ID="lbl" runat="server"></asp:Label></p>
                        </div>
                    
            </div>
        </div>
           </asp:Panel>
                
        <asp:Panel ID="Panupdate" runat="server">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                            <img style="margin-left:10px;" src="https://upload.wikimedia.org/wikipedia/en/4/47/VNRVJIETLogo.png" alt="Logo"/>
                            <h2 style="margin-left:20px;">Wanna be fit, play more.</h2>
                 </div>

                    <div class="signin-form"> 
                        <p class="sign" align="center" class="form-title">Update Password</p>
                        <div class="form-group" style="margin-top:15px;">
                             <label for="txtnewpassword"><i class="zmdi zmdi-lock" style="margin-bottom:30px;"></i></label>
                             <asp:TextBox ID="txtnewpassword" runat="server" CssClass="un" align="center" placeholder="Password"></asp:TextBox>
                             
                            
                        </div>
                        <div class="form-group">
                            <label for="txtcpwd"><i class="zmdi zmdi-lock-outline" style="margin-bottom:30px;"></i></label>
                            <asp:TextBox ID="txtcpwd" runat="server" align="center" placeholder="Confirm Password"></asp:TextBox>
                             <asp:CompareValidator ID="compare" runat="server" ControlToValidate="txtnewpassword" ControlToCompare="txtcpwd" ErrorMessage="Password Not Matching!" ForeColor="Red"></asp:CompareValidator>
                        </div>
                        
                               
                        <div class="form-group form-button">
                             <a class="submit" align="center">
                            <asp:Button ID="btnupdate" runat="server" class="form-submit" Text ="Update Password" OnClick="btnupdate_Click" /></a>
                        </div>
                       
                        <p class="forgot" align="center">
                            <asp:Label ID="Label1" runat="server"></asp:Label></p>
                    </div>

                </div>
            </div>
           </asp:Panel> 
        


        
        
    </main>
        </div>
    </form>
</body>
</html>
