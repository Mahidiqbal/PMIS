<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PMIS.Pages.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />

    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <style>
        body, html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            height: 100%;
            overflow: hidden;
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
            top: -7px;
            max-width: 600px;
            padding: 16px;
            background-color: white;
            border-radius: 15px;
        }

        .column {
            float: left;
            width: 33.33%;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }
        /* Full-width input fields */
        input[type=text], input[type=password], input[type=email], input[type=tel] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            border-radius: 8px;
            flex: 3 1 10ch;
        }

            input[type=text]:focus, input[type=password]:focus, input[type=email]:focus, input[type=tel]:focus {
                background-color: #ddd;
                outline: none;
            }

        /* Set a style for the submit button */
        .btn1 {
            background-color: deepskyblue;
            color: white;
            font-size: large;
            padding: 16px 20px;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
            margin: 5px 0 15px 0;
            border-radius: 25px;
        }

            .btn1:hover {
                opacity: 15;
            }
    </style>
</head>
<body>
    <div class="bg-img">
        <form runat="server" class="container">
            <center>
                <h1><b style="color: green">Sign Up</b></h1>
            </center>

            <div class="row">
                <div class="column">
                    <label for="txtfName"><b>First Name</b></label>
                    <asp:TextBox ID="txtfName" type="text" placeholder="Enter First Name" runat="server" required></asp:TextBox>
                    <%--<input id="txtfName" type="text" placeholder="Enter First Name" runat="server" required />--%>
                </div>
                <div class="column">
                    <label for="txtlName"><b>Last Name</b></label>
                    <asp:TextBox ID="txtlName" type="text" placeholder="Enter Last Name" runat="server" required></asp:TextBox>
                    <%--<input id="txtlName" type="text" placeholder="Enter Last Name" runat="server" required />--%>
                </div>
                <div class="column">
                    <label for="floatingSelect" style="font-size: medium"><b>Role</b></label>
                    <select style="width: 100%; padding: 10px; margin: 5px 0 15px 0; background: #f1f1f1; border: none; border-radius: 8px;" class="form-select" id="ddUserRole" runat="server">
                        <option selected="selected">--Select--</option>
                        <option value="1">Admin</option>
                        <option value="2">User</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <label for="txtEmail"><b>Email</b></label>
                    <asp:TextBox id="txtEmail" type="email" placeholder="Enter Email" runat="server" required></asp:TextBox>
                    <%--<input id="txtEmail" type="email" placeholder="Enter Email" name="txtEmail" runat="server" required />--%>
                </div>
                <div class="column">
                    <label for="txtPhone"><b>Phone No</b></label>
                     <asp:TextBox id="txtPhone" type="tel" placeholder="Enter Phone No" runat="server" required></asp:TextBox>
                    <%--<input id="txtPhone" type="tel" placeholder="Enter Phone No" name="txtPhone" runat="server" required />--%>
                </div>
                <div class="column">
                    <label for="txtCnic"><b>CNIC No</b></label>
                    <asp:TextBox id="txtCNIC" type="text" placeholder="Enter CNIC No" runat="server" required></asp:TextBox>
                    <%--<input id="txtCNIC" type="text" placeholder="Enter CNIC No" name="txtCnic" runat="server" required />--%>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <label for="txtUserDOB" style="font-size: medium"><b>Date of Birth</b></label>
                    <asp:TextBox Style="width: 100%; padding: 10px; margin: 5px 0 15px 0; background: #f1f1f1; border: none; border-radius: 8px;" ID="txtUserDOB" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                </div>
                <div class="column">
                    <label for="txtPNO"><b>P.NO / O.NO</b></label>
                    <asp:TextBox id="txtPno" type="text" placeholder="Enter P.No " runat="server" required></asp:TextBox>
                    <%--<input id="txtPno" type="text" placeholder="Enter P.No " name="txtPNO" runat="server" required />--%>
                </div>
                <div class="column">
                    <label for="txtPsw"><b>Password</b></label>
                    <asp:TextBox id="txtPass" type="password" placeholder="Enter Password" runat="server" required></asp:TextBox>
                    <%--<input id="txtPass" type="password" placeholder="Enter Password" name="txtPsw" runat="server" required />--%>
                </div>
            </div>
            <div class="row">
                <div class="column">
                    <label for="floatingSelect" style="font-size: medium"><b>Gender</b></label>
                    <select style="width: 100%; padding: 10px; margin: 5px 0 15px 0; background: #f1f1f1; border: none; border-radius: 8px;" class="form-select" id="ddGender" runat="server">
                        <option selected="selected">--Select--</option>
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                    </select>
                </div>
                <div class="column">
                    <label for="floatingSelect" style="font-size: medium"><b>Marital Status</b></label>
                    <select style="width: 100%; padding: 10px; margin: 5px 0 15px 0; background: #f1f1f1; border: none; border-radius: 8px;" class="form-select" id="ddMariStatus" runat="server">
                        <option selected="selected">--Select--</option>
                        <option value="1">Single</option>
                        <option value="2">Married</option>
                        <option value="2">Widowed</option>
                        <option value="2">Divorced</option>
                    </select>
                </div>
                <div class="column">
                    <label for="txtAddress"><b>Address</b></label>
                    <asp:TextBox id="txtAddress" type="text" placeholder="Street #1,DHA Phase 3" runat="server" required></asp:TextBox>
                    <%--<input id="txtAddress" type="text" placeholder="Street #1,DHA Phase 3" name="txtAddress" runat="server" required />--%>
                </div>
            </div>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
            <asp:Button ID="BtnSignUp" class="btn1" runat="server" Text="SignUp" OnClick="BtnSignUp_Click" />
            <%--<button type="submit" class="btn1" onclick="BtnSignUp_Click">Sign Up</button>--%>

            <center>
                <div class="col-xs-12">
                    <a style="font-family: Arial; font-size: medium" runat="server" href="~/Pages/SignIn.aspx">If you already have account?></a>
                </div>
            </center>
        </form>
    </div>
</body>
</html>
