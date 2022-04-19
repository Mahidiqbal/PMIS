<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PMIS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>
<body>
    <div class="container">
        <div class="col-md-4 mx-auto">
            <form class="row g-3" runat="server">
                <div class="row">
                    <div class="col">
                        <center>
                            <img width="70px" src="person.png"/>
                        </center>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <center>
                            <h5>Login Account</h5>
                        </center>        
                     </div>
                </div>   
                <div class="form-floating">
                    <input type="text" class="form-control" id="txtEmail" placeholder="Enter Email" runat="server"/>
                    <label for="txtEmail">User Email</label>
                </div>
                <div class="form-floating">
                    <input type="text" class="form-control" id="txtPass" placeholder="Enter Password" runat="server"/>
                    <label for="txtPass">Password</label>
                </div>
                <center>
                    <div class="form-group">
                        <asp:Button ID="BtnSignIn" runat="server" Text="Sign In" class="btn btn-success btn-block btn-lg" OnClick="BtnSignIn_Click" />
                    </div>
                </center>
                <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                      <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                <a href="SignUp.aspx"> Create New Account >> </a>
            </form>
            
        </div>
    </div>
</body>
</html>
