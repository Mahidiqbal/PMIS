<%@ Page Title="Qualification & Training" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Qualification.aspx.cs" Inherits="PMIS.Pages.Qualification" %>
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
    <div class="jumbotron">
        <div class="container-fluid">
            <h2><%: Title %>.</h2>
            <hr />
            <h3>Education.</h3>
            <div class="row">
              <div class="col-md-3">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control"  ID="txtInstitute1" runat="server" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Degree</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDegree1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Percentage</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPercentage1" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Year</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtYear1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInstitute2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Degree</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDegree2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Percentage</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPercentage2" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Year</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtYear2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInstitute3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Degree</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDegree3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Percentage</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPercentage3" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Year</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtYear3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <div class="row">
              <div class="col-md-3">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInstitute4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Degree</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDegree4" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Percentage</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtPercentage4" runat="server" placeholder=""></asp:TextBox>
                  </div>
              </div>
              <div class="col-md-3">
                  <label>Year</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtYear4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
          </div>
            <h3>Specialization.</h3>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Specialization</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtSpec6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtComplete6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <h3>Courses.</h3>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Course</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCourse6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Institute</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtInsitute6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>Completed / Ongoing</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtstatus6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
            </div>

            <h3>Cadre.</h3>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre1" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate1" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre2" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre3" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate3" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre4" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate4" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre5" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate5" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                  <label>Cadre</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtCadre6" runat="server" placeholder="" ></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-6">
                  <label>Date of Promotion / Appointment</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtDate6" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <br />
             <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
          <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-success" OnClick="btnSubmit_Click"  Width="110px" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click" Width="110px" />
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info"  OnClick="btnBack_Click" Width="110px" />
                  </div>
              </div>
            <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnApprove" runat="server" Text="Approve" class="btn btn-success" OnClick="btnApprove_Click"  Width="110px" />
                      <asp:Button ID="btnReject" runat="server" Text="Reject" class="btn btn-warning" OnClick="btnReject_Click" Width="110px" />
                      <asp:Button ID="btnDelete" runat="server" Text="Delete" class="btn btn-danger"  OnClick="btnDelete_Click" Width="110px" />
                  </div>
              </div>

        </div>
    </div>
</asp:Content>
