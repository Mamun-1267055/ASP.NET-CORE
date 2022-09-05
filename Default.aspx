<%@ Page Title="" Language="C#" MasterPageFile="~/Project.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Work01.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class=" offset-1 shadow-sm ">
        <div class="col-10 jumbotron">
            <h1 class=" active">Hotel Management System</h1>
            <h2>Asp.NET Final Project</h2>
        </div>
    </div>
   
  <%-- <!--SLIDER Srart-->
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="slider_img/1.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="slider_img/2.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="slider_img/3.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            ...
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>--%>
    <!--SLIDER End-->

    <div class="container">
        <div class="row">
            <div class="col-md-4 text-center" style="padding-top: 20px;">
                <img src="slider_img/0x0.jpg" class="img-circle" alt="Cinque Terre" width="220" height="200">
                <h2>Feel Comfort</h2>
                <h4>For incredible conveniences </h4>
                <p>
                    We make your travel Enjoyable.
                </p>

            </div>
            <div class="col-md-4 text-center" style="padding-top: 20px;">
                <img src="slider_img/RR-Standard-2-Queen.jpg" class="img-circle" alt="Cinque Terre" width="220" height="200">
                <h2>Premium bed </h2>
                <h4>President Suite</h4>
                <p>
                    free Wi-Fi, and in-room coffee and tea facilities..
                </p>
            </div>
            <div class="col-md-4 text-center" style="padding-top: 20px;">
                <img src="slider_img/Kuredhivaru_xxxxxx_i128875_3by2.jpg" class="img-circle" alt="Cinque Terre" width="220" height="200">
                <h2>Sea View VIP</h2>
                <h4>The hotel’s luxurious surroundings, comfort, thoughtful </h4>
                <p>
                   allowing you to feel like being at home from your very first steps into the hotel.
                </p>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="foot" runat="server">
</asp:Content>
