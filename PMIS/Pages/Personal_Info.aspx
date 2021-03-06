<%@ Page Title="Personal Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Personal_Info.aspx.cs" Inherits="PMIS.Pages.Personal_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            padding-top: 10px;
            padding-bottom: 20px;
        }

        /* Wrapping element */
        /* Set some basic padding to keep content from hitting the edges */
        .body-content {
            padding-left: 15px;
            padding-right: 15px;
        }
        .container-fluid {
    padding-right: 15px;
    padding-left: 75px;
    margin-right: auto;
    margin-left: auto;
}
        /* Set widths on the form inputs since otherwise they're 100% wide */
        input,
        select,
        textarea {
            max-width: 280px;
        }


        /* Responsive: Portrait tablets and up */
        @media screen and (min-width: 768px) {
            .jumbotron {
                margin-top: 0px;

            }

            .body-content {
                padding: 0;
            }
        }
    </style>
      <div class="jumbotron container-fluid">
          <h2><%: Title %>.</h2>
          <hr />
          <div class="row">
              <div class="col-md-4">
                  <label>P.NO / O.NO</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPno" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>First Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfName" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Last Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtlName" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
          </div>

          <div class="row">
              <div class="col-md-4">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDOB" runat="server" placeholder="" ReadOnly="True" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Email</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCNIC" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
          </div>

          <div class="row">
              <div class="col-md-4">
                  <label>Medical Category</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMedCategory" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddMariStatus" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                  </asp:DropDownList>
              </div>
              <div class="col-md-4">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddGender" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Male" />
                      <asp:ListItem Text="Female" Value="Female" />
                  </asp:DropDownList>
              </div>
          </div>
          <div class="row">
              <div class="col-md-4">
                  <label>Date of Enrollment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtEnrollDate" runat="server" placeholder="" ReadOnly="True" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Phone No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPhone" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Present Address</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPresentAdd" runat="server" placeholder="" ReadOnly="True" TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
          </div>
          <div class="row">
              
          </div>
          <div class="row">
              <div class="col-md-4">
                  <label>Permanent Address</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPermanentAdd" runat="server" placeholder="" ReadOnly="True" TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Password</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPass" runat="server" placeholder="********" TextMode="Password"  ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Account Status</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtStatus" runat="server" placeholder="" ReadOnly="True"></asp:TextBox>
                  </div>
              </div>
          </div>
          <br />

          <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
          <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-primary" OnClick="btnEdit_Click" Width="110px" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click" Width="110px" />
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info" OnClick="btnBack_Click" Width="110px" />
                  </div>
              </div>
      </div>
    
</asp:Content>
