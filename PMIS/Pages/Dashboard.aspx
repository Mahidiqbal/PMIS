<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PMIS.Pages.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    
    <style>
        html{
            overflow-x:hidden;
            overflow-y:hidden;
        }
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Verdana, sans-serif;
            background-color: black;
        }

        .mySlides {
            display: none;
        }

        img {
            vertical-align: middle;
            height:600px;
            max-height:500px;
            opacity:0.5;
            
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1250px;
            position: relative;
            margin: 0px 0px 0px 15px;
        }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }
        #cntPosition{
            position: relative;
            top: -300px;
            right:-15px;
            padding:12px 24px;
        }
        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            height: 15px;
            width: 15px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

        .active {
            background-color: #717171;
        }

        /* Fading animation */
        .fade {
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .text {
                font-size: 11px
            }
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

        .container {
  position: relative;
  width: 100%;
  max-width: 400px;
}

 .btn {
  background-color:darkgray;
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
 .btn:hover {
  background-color: white;
  opacity: 15;
}
    </style>
  
   
           
    <section class="slideshow-container" style="height:600px; right:-5px; ">

        <div class="mySlides fade">
            <div class="numbertext">1 / 4</div>
            <img src="../Resources/1.jpg" style="width: 100%;">
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 4</div>
            <img src="../Resources/2.jpg" style="width: 100%;">\
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 4</div>
            <img src="../Resources/3.jpg" style="width: 100%;">
        </div>
        <div class="mySlides fade">
            <div class="numbertext">4 / 4</div>
            <img src="../Resources/4.jpg" style="width: 100%;">
        </div>
       
        <br>

        <div style="text-align: center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

    </section>
    <section>
        <div class="container-fluid" id="cntPosition">
            <div class="row">
                <%--<div class="col-sm-2"></div>--%>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="SANCTION" onclick="BtnSanction_Click"/></div>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="UPCOUNTRY ROSTER" onclick="BtnUpCountry_Click" /></div>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="ACTIVE SERVICE LIST" onclick="BtnActiveService_Click"/></div>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="LENGTH OF SERVICE" onclick="BtnLengthOfService_Click"/></div>
                <%--<div class="col-sm-2"></div>--%>
            </div>
            <br /> <br />
            <div class="row">
                <%--<div class="col-sm-2"></div>--%>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="E-DOZZIER" onclick="BtnEdozzier_Click"/>
                </div>
                <div class="col-sm-3">
                    <asp:Button ID="btnTOD" type="submit" runat="server" class="btn" Text="TOD ROSTER" onclick="BtnTodRoster_Click"/>
                </div>
                <div class="col-sm-3">
                    <asp:Button ID="btnSOD" type="submit" runat="server" class="btn" Text="SOD ROSTER" onclick="BtnSodRoster_Click"/>
                </div>
                <div class="col-sm-3">
                    <asp:Button type="submit" runat="server" class="btn" Text="REQUEST & WELFARE" onclick="BtnRequestWelfare_Click"/>
                </div>
                <%--<div class="col-sm-2"></div>--%>
            </div>
        </div>
    </section>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

   
</asp:Content>
