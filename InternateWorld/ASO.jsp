<%-- 
    Document   : ASO
    Created on : Nov 23, 2020, 9:37:23 PM
    Author     : Ram
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="../errorPage.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width , scale=1.0">
        <title>ASO(App Store OPtimization)</title>

        <style>
            body{
                background: linear-gradient(to right, rgba(10,40,155),rgba(255,0,0));
                background-attachment: fixed;
                background-size: cover;

            }
            .container{
                padding: 20px;
                background-color: rgb(0,0,0,.5);
            }
            p{
                font-size: 17px;
                color: white;
            }
        </style>
    </head>
    <body>
        <div id="nav-placeholder"></div>        
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script>

            $(document).ready(function () {
                $("#nav-placeholder").load("../NavBar.html");

            });
        </script>

        <div class="container">
            <h1 style="color: aqua; margin-bottom: 10px; ">App Store Optimization</h1>
            <p>
                App Store Optimization (ASO) is the process of increasing an app or game’s visibility in an app store,
                with the objective of increasing organic app downloads. Apps are more visible when they rank highly 
                on a wide variety of search terms (keyword optimization), maintain a high position in the top charts, 
                or get featured on the store. Additionally, app store optimization encompasses activities that aim to 
                increase the conversion of app impressions into downloads (conversion rate optimization).<br><br>

                The two largest distribution channels for mobile apps are the App Store (iOS) and Google Play (Android).
                Other alternatives for downloading apps include the Huawei App Gallery, Amazon App Store and Samsung Galaxy 
                Store.
            </p>

            <div class="text-center">
                <img src="../Image/aso.png" class="img-fluid" style="width: 300px; height: 200px;">
            </div>

            <p style="border-bottom: 2px solid #1976d2; padding: 10px;">

                <span style="color: yellow; font-size: 30px;">Main ASO Factors:</span><br>
                <span style="color: lime; font-size: 30px;">Title:</span><br>
                The keyword placed in the title should be the one with the heaviest search traffic. Spend time 
                researching which keyword that is, because changing your title too often can be detrimental.
                As your app begins to rank higher and gain more reviews, your app’s news will begin to spread
                by word of mouth. Changing the title can make it difficult for word to spread about your app.
                <br>
                <img src="../Image/androtitle.png" class="img-fluid">
            </p>
            <p style="border-bottom: 2px solid #1976d2; padding: 10px;">
                <span style="color: lime; font-size: 30px;">Keywords:</span> 
                <br>To improve your
                search rankings, you need to know which keywords are relevant and used most often by your target audience. 
                It is helpful to monitor competitors to realize how you compare week to week.
                <br>
                <img src="../Image/keyword.png" class="img-fluid" >
            </p>
            <p>
                <span style="color: yellow; font-size: 30px;">Secondary ASO Factors:</span><br>

                <span style="color: lime; font-size: 30px;">Total number of Downloads:</span> <br>
                Your number of downloads are significant to ASO, but you don’t have complete control over them.
                <br>
                <img src="../Image/numdownload.png" class="img-fluid" >                
                <br><br><br>                
                <span style="color: lime; font-size: 30px;">Ratings and Reviews:</span><br>
                Also important and difficult to control. However, there are ways to incentivize happy users to rate and 
                review.

                <br>
                <img src="../Image/review.png" class="img-fluid" >
            <hr style="background-color: red">
                <br>

                <span style="color: yellow; font-size: 30px;">Extra ASO Factors:</span><br>

                <a href="https://appradar.com/" target="blank">Register your application on AppRadar for more downloads</a>
            </p>





        </div>


        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    </body>
</html>
