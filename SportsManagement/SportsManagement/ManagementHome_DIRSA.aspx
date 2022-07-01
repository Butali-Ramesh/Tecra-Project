<%@ Page Title="" Language="C#" MasterPageFile="~/Management_DIRSA.Master" AutoEventWireup="true" CodeBehind="ManagementHome_DIRSA.aspx.cs" Inherits="SportsManagement.ManagementHome_DIRSA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="padding:5px;margin-top:10px;">
        <div class="slideshow-container">

          <!-- Full-width images with number and caption text -->
          <div class="mySlides fade">

            <img src="images/sports1.jpg" style="width:100%">

          </div>

          <div class="mySlides fade">
            
            <img src="images/sports11.jpg" style="width:100%">
            
          </div>

          <div class="mySlides fade">
          
            <img src="images/sports3.jpg" style="width:100%">
          
          </div>
            <div class="mySlides fade">
          
            <img src="images/sports12.jpg" style="width:100%">
          
          </div>


        <!-- The dots/circles -->
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span>
          <span class="dot" onclick="currentSlide(2)"></span>
          <span class="dot" onclick="currentSlide(3)"></span>
        </div>

        
                 
        <p>
            The great virtue of sports teaches everybody to acquire the will to win. 13th Indian open Inter Engineering Collegiate Sports is organised in our college with the sole aim of promoting sports and social interaction among the different colleges in India. 
            VNR Sports Fest is one of the biggest sport's fest in India. It has huge participation and interaction from different colleges in India.
        </p>
        <img src="images/playing.jpg" />
        <p style="padding: 2px;border: 2.5px solid; border-radius:5px;">
           <b> <i>What do we gain from sports? </i></b>
            Sports help aid coordination, balance and flexibility. Many sports can help improves stamina and concentration. 
            Sports allow you to experience the highs and lows of both winning and losing! 
        </p>

            <p style="padding:4px">
                They enhance the personality of individuals by imparting various traits in them. Sports are said to boost alertness, disciple, team spirit, mental ability, confidence and concentration of a student.
                It doesn't matter what kind of sports the students are playing and whether they are winning or not.
            </p>
        <script>
            let slideIndex = 0;
            showSlides();

            function showSlides() {
                let i;
                let slides = document.getElementsByClassName("mySlides");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                slides[slideIndex - 1].style.display = "block";
                setTimeout(showSlides, 2500); // Change image every 2 seconds
            }

        </script>

    </div>
    </div>
</asp:Content>
