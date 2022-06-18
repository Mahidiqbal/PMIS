<%@ Page Title="Family Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Family_Info.aspx.cs" Inherits="PMIS.Pages.Family_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            padding-top: 10px;
            padding-bottom: 20px;
        }

        /* Wrapping element */
        /* Set some basic padding to keep content from hitting the edges */
        .body-content {
            padding-left: 15px;`
            padding-right: 15px;
        }
        .container-fluid {
    padding-right: 15px;
    padding-left: 15px;
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
    <div class="jumbotron">
        <div class="container-fluid">
        <center>
          <h2><%: Title %>.</h2>
        </center>
        <h3>Father Details</h3>
        <hr />
          <div class="row">
              <div class="col-md-3">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfName" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfCnic" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfNation" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfOccupation" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>

          <div class="row">
              <div class="col-md-3">
                  <label>Religion</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfReligion" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-3">
                  <label>Alive or Deceased</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfAlive" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Phone No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfPhone" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtfAddress" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
          </div>
        
        <h3>Mother Details</h3>
        <hr />
          <div class="row">
              <div class="col-md-3">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMname" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMcnic" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMnation" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMoccu" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>

          <div class="row">
              <div class="col-md-3">
                  <label>Religion</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMReligion" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-3">
                  <label>Alive or Deceased</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMalive" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtMadd" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
          </div>

        <h3>Other Details</h3>
        <hr />
        <div class="row">
              <div class="col-md-3">
                  <label>Next of Kin Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtNextKin" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Relationship with NOK</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtRelationNOK" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>NOK Address</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtNOKAdd" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>NOK Contact No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtNOKCont" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>

        <h3>Spouse Details</h3>
                <hr />
        <div class="row">
              <div class="col-md-3">
                  <label>Spouse Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpName" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpCnic" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpNation" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpOccu" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Spouse Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpName1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpCNIC1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpNation1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpOc1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Spouse Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpName2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpCNIC2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpNation2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpOc2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Spouse Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpName3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              
              <div class="col-md-3">
                  <label>CNIC No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpCNIC3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Nationality</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpNation3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            <div class="col-md-3">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpOc3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
        <h3>Children Details</h3>
            <hr />
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate1" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender1" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus1" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate2" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender2" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus2" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate3" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender3" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus3" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName4" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate4" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender4" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua4" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc4" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus4" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName5" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate5" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender5" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua5" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc5" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus5" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName6" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate6" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender6" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua6" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc6" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus6" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChName7" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Date of Birth</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChDate7" runat="server" TextMode="Date" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Gender</label>
                  <asp:DropDownList ID="ddChGender7" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Male" Value="Single" />
                      <asp:ListItem Text="Female" Value="Married" />
                      </asp:DropDownList>
              </div>
              <div class="col-md-2">
                  <label>Qualification</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChQua7" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtChOcc7" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Marital Status</label>
                  <asp:DropDownList ID="ddChMariStatus7" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="Select" Selected="True" />
                      <asp:ListItem Text="Single" Value="Single" />
                      <asp:ListItem Text="Married" Value="Married" />
                      <asp:ListItem Text="Widowed" Value="Widowed" />
                      <asp:ListItem Text="Divorced" Value="Divorced" />
                      </asp:DropDownList>
              </div>
          </div>
  
        <h3>Father In Law Details</h3>
        <hr />
          <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLaw" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawOcc" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Contact No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawCont" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          
            <div class="col-md-2">
                <label>Address</label>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="txtF_inLawAdd" runat="server" placeholder="" TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawAlive" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
        </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLaw1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawOcc1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Contact No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawCont1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          
            <div class="col-md-2">
                <label>Address</label>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="txtF_inLawAdd1" runat="server" placeholder="" TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawAlive1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
        </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLaw2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawOcc2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Contact No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawCont2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          
            <div class="col-md-2">
                <label>Address</label>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="txtF_inLawAdd2" runat="server" placeholder="" TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawAlive2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
        </div>
            <div class="row">
              <div class="col-md-2">
                  <label>Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLaw3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-2">
                  <label>Occupation</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawOcc3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-2">
                  <label>Contact No</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawCont3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          
            <div class="col-md-2">
                <label>Address</label>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="txtF_inLawAdd3" runat="server" placeholder="" TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-2">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawAlive3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
        </div>

        <h3>Mother In Law Details</h3>
                <hr />
          <div class="row">
              <div class="col-md-3">
                  <label>Mother in Law Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLaw" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawOcc" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inlawadd" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawAlive" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Mother in Law Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLaw1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawOcc1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inlawadd1" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawAlive1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Mother in Law Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLaw2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawOcc2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inlawadd2" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawAlive2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Mother in Law Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLaw3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Occupation of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawOcc3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Address of Mother in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inlawadd3" runat="server" placeholder=""  TextMode="MultiLine" Rows="1"></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtM_inLawAlive3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
          </div>
        <hr />
            <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
          <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnCreate" runat="server" Text="Submit" class="btn btn-success" Width="110px" OnClick="btnCreate_Click" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" Width="110px"  />
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info" OnClick="btnBack_Click" Width="110px" />
              </div>
              </div>
            </div>
      </div>
    
</asp:Content>
