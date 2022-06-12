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
        .btn1 {
 
  color: white;
  font-size:medium;
  width: 100%;
  table-layout: fixed;
  padding: 15px 15px;
  margin: 5px 0 5px 0;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
}
        .btn1:hover{
            opacity:15;
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
        .btn2:hover{
            opacity:15;
            background-color:dimgrey;
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
        input[type=text]{
            width: 100%;
            font-size:medium;
            padding: 15px;
            margin: 5px 0 22px 0;
            border: none;
            background: #f1f1f1;
            border-radius: 8px;
            flex: 3 1 10ch;
        }
        input[type=text]:focus {
                background-color: #ddd;
                outline: none;
            }
    </style>
    <div class="container-fluid">
    <h2><%: Title %>.</h2>
        <br />
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-3">
                <asp:TextBox ID="PnoSearch" type="text" runat="server" placeholder="Enter P.NO"></asp:TextBox>
            </div>
            <div class="col-sm-2">
                <asp:Button ID="btnSearch" type="submit" runat="server" CssClass="btn1 btn-info" Text="Search" OnClick="BtnPnoSearch_Click" />
            </div>
        </div>
         <div class="col-sm-3"></div>
            <div class="col-sm-3">
        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
        <br />  <br />
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-4"">
                <asp:Button ID="btnPerInfo" type="submit" runat="server" class="btn2" Text="Personal Information" OnClick="BtnPersonalInfo_Click" />
            </div>

            <div class="col-sm-4">
                <asp:Button ID="btnFamInfo" type="submit" runat="server" class="btn2" Text="Family Information" OnClick="BtnFamliyInfo_Click" />
            </div>
            <div class="col-sm-2"></div>
        </div>
        <br />
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-4"">
                <asp:Button ID="btnTraining" type="submit" runat="server" class="btn2" Text="Qualification & Training" OnClick="BtnTraining_Click"/>
            </div>

            <div class="col-sm-4">
                <asp:Button ID="btnTransfer" type="submit" runat="server" class="btn2" Text="Transfer Record" OnClick="BtnTransfer_Click"/>
            </div>
            <div class="col-sm-2"></div>
        </div>
        </div>
</asp:Content>
