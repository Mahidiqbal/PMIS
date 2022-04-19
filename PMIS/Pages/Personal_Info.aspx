<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Personal_Info.aspx.cs" Inherits="PMIS.Pages.Personal_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <div class="container-fluid">
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
                <asp:TextBox ID="txtUserDOB" class="form-control" runat="server" placeholder="DOB"></asp:TextBox>
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
                <asp:TextBox ID="txtCity" class="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>
                <label for="txtCity">City</label>
            </div>
            <div class="form-floating col-md-3">
                <select class="form-select" id="ddGender" aria-label="Floating label select example" runat="server">
                    <option selected ="selected">--Select--</option>
                    <option value="1">Male</option>
                    <option value="2">Female</option>
                </select>
                <label for="floatingSelect">Gender</label>
            </div>
            <div class="form-floating col-12">
                <asp:TextBox ID="txtAddress" class="form-control" runat="server" placeholder="1234 Main St"></asp:TextBox>
                <label for="txtAddress">Address</label>
            </div>
            <div class="col-12">
                <asp:Button ID="BtnSignUp" runat="server" Text="SignUp" class="btn btn-primary" />
            </div>
        </form>
        
    </div>
    </div>
</asp:Content>
