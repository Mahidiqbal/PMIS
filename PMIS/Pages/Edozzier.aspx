<%@ Page Title="E-Dozzier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edozzier.aspx.cs" Inherits="PMIS.Pages.Pension" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        body, html {
            height: 100%;
            font-family: Arial, Helvetica, sans-serif;
            margin: 0; height: 100%; overflow: hidden;
        }

        * {
            box-sizing: border-box;
        }
        .btn2 {
  background-color:dodgerblue;
  color: white;
  font-size:medium;
  width: 100%;
  table-layout: fixed;
  padding: 15px 15px;
  background-color: #555;
  margin: 5px 0 5px 0;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
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
    </style>
    <div class="container-fluid">
    <h2><%: Title %>.</h2>
        <br />
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-4"">
                <asp:Button type="submit" runat="server" class="btn2" Text="Personal Information" OnClick="BtnPersonalInfo_Click" />
            </div>

            <div class="col-sm-4">
                <asp:Button type="submit" runat="server" class="btn2" Text="Family Information" OnClick="BtnFamliyInfo_Click" />
            </div>
            <div class="col-sm-2"></div>
        </div>
        </div>
</asp:Content>
