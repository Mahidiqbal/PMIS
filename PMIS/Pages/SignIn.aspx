<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="PMIS.Pages.WebForm3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
    <title>Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body, html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0; height: 100%; overflow: hidden;
        }

        * {
            box-sizing: border-box;
        }

        .bg-img {
            /* The image used */
            background-image: url("../Resources/BGImage.jpg");
            min-height: 615px;
            \
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        /* Add styles to the form container */
        .container {
            position: absolute;
            right: 0;
            margin: 30px;
            top: 70px;
            max-width: 300px;
            padding: 16px;
            background-color:white;
            border-radius: 15px;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            border-radius:15px;
        }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

        /* Set a style for the submit button */
        .btn {
            background-color: #04AA6D;
            color: white;
            font-size:large;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
            margin: 5px 0 5px 0;
            border-radius:25px;
        }
        .btn:hover {
                opacity: 15;
            }
        .btn1 {
            background-color:deepskyblue;
            color: white;
            font-size:large;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
            margin: 5px 0 15px 0;
            border-radius:25px;
        }
        .btn1:hover{
            opacity:15;
            color:black;
        }
            
    </style>
</head>
<body>
<div class="bg-img">
  <form runat="server" class="container">
      <center><h1><b style="color:green">Sign In</b></h1></center>
    

    <label for="txtEmail"><b>Email</b></label>
    <input id="txtEmail" type="text" placeholder="Enter Email" name="email" runat="server"/>

    <label for="txtPsw"><b>Password</b></label>
    <input id="txtPsw" type="password" placeholder="Enter Password" name="psw" runat="server" />
      <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
      <asp:Button type="submit" runat="server" class="btn" onclick="BtnSignIn_Click" Text="Login" />
      <asp:Button type="submit" runat="server" class="btn1" onclick="BtnSignUp_Click" Text="Sign Up" />
   <!-- <a type="submit" class="btn" runat="server" onclick="BtnSignIn_Click">Login</a>-->
    <%--<button type="button" class="btn1" runat="server" onclick="BtnSignUp_Click">Sign Up</button>--%>

      <center>
          <div class="col-xs-12">
              <a style="font-family: Arial; font-size:medium" runat="server" href="Forget_Password.aspx">Forget Password?</a>
          </div>
      </center>
  </form>
</div>
</body>
</html>
