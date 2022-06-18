<%@ Page Title="Transfer Record" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Transfer_Record.aspx.cs" Inherits="PMIS.Pages.Transfer_Record" %>
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

            <div class="row">
              <div class="col-md-4">
                  <label>Unit Served</label>
                  <div class="form-group">
                      <asp:DropDownList ID="DDUnitServed1" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                  </asp:DropDownList>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>From Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtFrom1" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>To Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtTo1" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Unit Served</label>
                  <asp:DropDownList ID="DDUnitServed2" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                  </asp:DropDownList>
              </div>
                <div class="col-md-4">
                  <label>From Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtFrom2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>To Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtTo2" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Unit Served</label>
                  <div class="form-group">
                      <asp:DropDownList ID="DDUnitServed3" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                  </asp:DropDownList>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>From Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtFrom3" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>To Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtTo3" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Unit Served</label>
                  <div class="form-group">
                      <asp:DropDownList ID="DDUnitServed4" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                  </asp:DropDownList>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>From Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtFrom4" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>To Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtTo4" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                  <label>Unit Served</label>
                  <div class="form-group">
                      <asp:DropDownList ID="DDUnitServed5" class="form-control" runat="server">
                      <asp:ListItem Text="Select" Value="" Selected="True" />
                      <asp:ListItem Text="PNS RAHBAR" Value="PNS RAHBAR" />
                      <asp:ListItem Text="PNS JAUHAR" Value="PNS JAUHAR" />
                      <asp:ListItem Text="PNS BAHADUR" Value="PNS BAHADUR" />
                      <asp:ListItem Text="PNCA" Value="PNCA" />
                      <asp:ListItem Text="PNSL" Value="PNSL" />
                  </asp:DropDownList>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>From Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtFrom5" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
                <div class="col-md-4">
                  <label>To Date</label>
                  <div class="form-group">
                      <asp:TextBox class="form-control" ID="txtTo5" runat="server" placeholder="" TextMode="Date"></asp:TextBox>
                  </div>
              </div>
            </div>
            
            <br />
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
          <div class="col-12 pull-right">
              <div class="form-group" >
                      <asp:Button ID="btnEdit" runat="server" Text="Submit" class="btn btn-success" OnClick="btnEdit_Click" Width="110px" />
                      <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-danger" OnClick="btnCancel_Click" Width="110px" />
                      <asp:Button ID="btnBack" runat="server" Text="Back" class="btn btn-info" OnClick="btnBack_Click" Width="110px" />
                  </div>
              </div>
        </div>
    </div>
    <
</asp:Content>
