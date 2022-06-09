<%@ Page Title="Forget Password" Language="C#" AutoEventWireup="true" CodeBehind="Forget_Password.aspx.cs" Inherits="PMIS.Pages.Forget_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
</head>
<body>
        <div class="container">
            <div class="col-md-4 mx-auto">
                <form class="row g-3" runat="server">
                    <div class="row">
                        <br />
                        <h2><%: Title %></h2>
                    </div>
                        <div class="form-floating">
                            <input type="email" class="form-control" id="txtForgetEmail" placeholder="Enter Email" runat="server" />
                            <label for="txtForgetEmail"> Email</label>
                        </div>
                        <center>
                            <%----%>
                            <div class="form-group">
                                <asp:Button ID="BtnSend" runat="server" Text="Send" class="btn btn-success btn-block btn-lg" OnClick="BtnSend_Click"/>
                            </div>
                        </center>
                    <br />
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                            <a runat="server" href="login.aspx"><< Sign In Here</a>
                </form>
            </div>
        </div>
</body>
</html>
