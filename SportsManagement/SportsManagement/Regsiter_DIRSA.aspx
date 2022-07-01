<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regsiter_DIRSA.aspx.cs" Inherits="SportsManagement.Regsiter_DIRSA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    
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
        <div class="main">
        <asp:Panel runat="server" ID="panreg">
        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <!-- Here VNRVJIET was there, class name is form-title1.. remember MR.DIVYA -->
                        <h2 class="form-title">Sign up</h2>
                        <form class="register-form" id="register-form" style="margin-top:0px">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="name" id="name" placeholder="Your Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="name" ErrorMessage="* Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group">
                                <label for="rollno"><i class="zmdi zmdi-border-color" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="rollno" id="rollno" placeholder="Your Roll No"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req2" runat="server" ControlToValidate="rollno" ErrorMessage="* Roll No Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="email" id="email" placeholder="Your College Mail"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="req3" runat="server" ControlToValidate="email" ErrorMessage="* Mail Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                                <asp:RegularExpressionValidator ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ControlToValidate="email" ErrorMessage="Invalid email address   " ForeColor="Red"></asp:RegularExpressionValidator>
                                <asp:Label ID="lblerror" runat="server" style="font-size:small"></asp:Label>
                            </div>
                            <div class="form-group">
                                <label for="mobile"><i class="zmdi zmdi-phone" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="mobile" id="mobile" placeholder="Your Mobile No"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="req4" runat="server" ControlToValidate="mobile" ErrorMessage="* Mobile Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server"  name="pass" id="pass" placeholder="Password"> </asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqpass1" runat="server" ControlToValidate="pass" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator> 
                                <asp:RegularExpressionValidator ID="checkpassword" runat="server" ErrorMessage="Min of 8 characters and 1 uppercase"  ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"  
                                ControlToValidate="pass" ForeColor="Red"></asp:RegularExpressionValidator>  

                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline" style="margin-bottom:30px;"></i></label>
                                <asp:TextBox runat="server" name="re_pass" id="re_pass" placeholder="Repeat your password"> </asp:TextBox>
                                <asp:CompareValidator ID="com" runat="server" ControlToValidate="re_pass" ErrorMessage="Password does not match" ForeColor="Red" ControlToCompare="pass"></asp:CompareValidator>
                            </div>
                            <div>
                                <table id="customers">
                                    <tr>
                                        <td>Role</td>
                                        <td>
                                            <asp:DropDownList ID="ddlrole" runat="server" style="padding:8px 15px;">
                                            <asp:ListItem Text="--Select--" Value="--Select--"></asp:ListItem>
                                            <asp:ListItem Text="Student" Value="Student" style="__designer:mapid=&quot;32&quot;"></asp:ListItem>
                                            <asp:ListItem Text="Management" Value="Management"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                               <asp:Button runat="server" ID="btn_register" Text="Register" class="form-submit" OnClick="btn_register_Click"></asp:Button>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/vnrvjiet_logo.png" class="vnrvjiet_logo" alt="sing up image"></figure>
                        <a href="Login_DIRSA.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
        </asp:Panel>

        <asp:Panel ID="panotp" runat="server">
        <div class="main">
                <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <p class="sign" align="center" class="form-title">OTP</p>
                        <asp:TextBox ID="txtotp" runat="server" CssClass="un" align="center" placeholder="Enter OTP"></asp:TextBox>
                        <div class="form-group form-button">
                             <a class="submit" align="center">
                            <asp:Button BackColor="Blue" ID="verify" runat="server" class="form-submit" Text="Verify OTP" OnClick="verify_Click"  
                             /></a>
                        </div> 
                       
                             <p class="forgot" align="center">
                           <asp:Label ID="lbl" runat="server"></asp:Label></p>
                        </div>
                  </div>
            </div>

        </div>
           </asp:Panel>
       
    </div>
    <p class="forgot" align="center">
                <asp:Label ID="Label1" runat="server"></asp:Label></p>
    <!-- JS -->
        
    <script src="Scripts/vendor/jquery/jquery.min.js"></script>
    <script src="Scripts/main.js"></script>
    </form>
</body>
</html>
