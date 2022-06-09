<%@ Page Title="Family Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Family_Info.aspx.cs" Inherits="PMIS.Pages.Family_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        
        <h3>Father In Law Details</h3>
        <hr />
          <div class="row">
              <div class="col-md-4">
                  <label>Father in Law Name</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLaw" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
               <div class="col-md-4">
                  <label>Occupation of Father in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawOcc" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-4">
                  <label>Contact No of Father in Law</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawCont" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
        <div class="row">
            <div class="col-md-4">
                <label>Address of Father in Law</label>
                <div class="form-group">
                    <asp:TextBox class="form-control" ID="txtF_inLawAdd" runat="server" placeholder="" TextMode="MultiLine" Rows="1"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                  <label>Alive or Not</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtF_inLawAlive" runat="server" placeholder="" ></asp:TextBox>
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
        <hr />
          <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnCreate" runat="server" Text="Create" class="btn btn-success" Width="110px" OnClick="btnCreate_Click" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" Width="110px"  />
                  </div>
              </div>
            </div>
      </div>
    <asp:Label ID="lblMsg" ForeColor="Green" runat="server" Text=""></asp:Label>
</asp:Content>
