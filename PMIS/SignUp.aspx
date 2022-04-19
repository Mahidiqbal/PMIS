<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="PMIS.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registeration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>
<body>
    <div class="container">
        <div id="lblAlert" class="alert alert-success" role="alert">
            <h2 class="alert-heading">Sign Up Here!</h2>
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        </div>
        <form class="row g-3" runat="server">
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtfName" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                <label for="txtfName">First Name</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtlName" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                <label for="txtlName">Last Name</label>
            </div>
            <div class="form-floating col-md-6">
                <select class="form-select" id="ddUserRole" aria-label="Floating label select example" runat="server">
                    <option selected ="selected">--Select--</option>
                    <option value="1">Admin</option>
                    <option value="2">User</option>
                </select>
                <label for="floatingSelect">Role</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtUserDOB" class="form-control" runat="server" placeholder="DOB" TextMode="Date"></asp:TextBox>
                <label for="txtUserDOB">DOB</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtEmail" class="form-control" runat="server" placeholder="name@example.com"></asp:TextBox>
                <label for="txtEmail">Email address</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtPass" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
                <label for="txtPass">Password</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtPhone" class="form-control" runat="server" placeholder="Phone No"></asp:TextBox>
                <label for="txtPhone">Phone No</label>
            </div>

            <div class="form-floating col-md-3">
                <asp:TextBox ID="txtPno" class="form-control" runat="server" placeholder="P.NO / O.NO"></asp:TextBox>
                <label for="txtPno">P.NO / O.NO</label>
            </div>
            <div class="form-floating col-md-3">
                <select class="form-select" id="ddGender" aria-label="Floating label select example" runat="server">
                    <option selected ="selected">--Select--</option>
                    <option value="1">Male</option>
                    <option value="2">Female</option>
                </select>
                <label for="floatingSelect">Gender</label>
            </div>
            <div class="form-floating col-md-3">
                <asp:TextBox ID="txtCNIC" class="form-control" runat="server" placeholder="CNIC No"></asp:TextBox>
                <label for="txtCNIC">CNIC No</label>
            </div>
            <div class="form-floating col-md-3">
                <select class="form-select" id="ddMariStatus" aria-label="Floating label select example" runat="server">
                    <option selected ="selected">--Select--</option>
                    <option value="1">Single</option>
                    <option value="2">Married</option>
                    <option value="2">Widowed</option>
                    <option value="2">Divorced</option>
                </select>
                <label for="floatingSelect">Marital Status</label>
            </div>
            <div class="form-floating col-md-6">
                <asp:TextBox ID="txtAddress" class="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>
                <label for="txtAddress">Address</label>
            </div>
            <div class="col-12">
                <asp:Button ID="BtnSignUp" runat="server" Text="SignUp" class="btn btn-primary" OnClick="BtnSignUp_Click"/>
            </div>
            <a href="Login.aspx"><< Sign In Here</a>
        </form>
        
    </div>
</body>
</html>

