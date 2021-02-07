<%-- 
    Document   : ASO
    Created on : Nov 23, 2020, 9:37:23 PM
    Author     : Ram
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width , scale=1.0">
        <title>SEO(Search Engine OPtimization)</title>

        <style>
            body{
                background: linear-gradient(to right, rgba(100,40,15),rgba(25,130,250));
                background-attachment: fixed;
                background-size: cover;

            }
            .container{
                padding: 20px;
                background-color: rgb(0,0,0,.5);
            }
            li,p{
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
            <h1 style="color: aqua; margin-bottom: 10px; ">Search Engine OPtimization</h1>
            <p>
                Search engine optimization (SEO) is the process of improving the quality and quantity of website traffic
                to a website or a web page from search engines. SEO targets unpaid traffic (known as "natural" or "organic" 
                results) rather than direct traffic or paid traffic. Unpaid traffic may originate from different kinds 
                of searches, including image search, video search, academic search, news search, and industry-specific 
                vertical search engines. 
            </p>

            <div class="text-center">
                <img src="../Image/seo.png" class="img-fluid" style="width: 300px; height: 200px;">
            </div>

            <div style="padding: 30px;">
                <ul class="list-group mt-3">
                    <li class="list-group-item active">SEO Steps</li>
                    <li class="list-group-">Great user experience including a fast load speed and compelling UXn</li>
                    <li class="list-group-"> Compelling content that answers the searcher’s query</li>
                    <li class="list-group-">Keyword optimized to attract searchers & engines</li>
                    <li class="list-group-">Crawl accessibility so engines can read your website</li>                
                    <li class="list-group-">Title, URL, & description to draw high CTR in the rankings</li>
                    <li class="list-group-">Share-worthy content that earns links, citations, and amplification</li>
                    <li class="list-group-">Snippet/schema markup to stand out in SERPs</li>
                </ul>
            </div>




            <h1 style="color: aqua; margin-bottom: 10px; margin-top: 10px;">Title Tags</h1>

            <p>While Google is working to better understand the actual meaning of a page and de-emphasizing
                (and even punishing) aggressive and manipulative use of keywords, including the term (and related terms) 
                that you want to rank for in your pages is still valuable. And the single most impactful place you can put
                your keyword is your page’s title tag.                
            </p>
            <img src="../Image/title.PNG" class="img-fluid" style="height: 200px;">         


            
            <h1 style="color: aqua; margin-bottom: 10px; margin-top: 10px;">Meta Descriptions</h1>
            <p>
            While the title tag is effectively your search listing’s headline, the meta description 
            (another meta HTML element that can be updated in your site’s code, but isn’t seen on your actual page)
            is effectively your site’s additional ad copy. Google takes some liberties with what they display in search 
            results, so your meta description may not always show, but if you have a compelling description of your page
            that would make folks searching likely to click, you can greatly increase traffic. (Remember: showing up in
            search results is just the first step! You still need to get searchers to come to your site, and then 
            actually take the action you want.)
            <br>
            Here’s an example of a real world meta description showing in search results:
            
            <img src="../Image/metadata.PNG" class="img-fluid" style="height: 200px; margin-top: 20px;">         
        </p>
    </div>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">    
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

</body>
</html>
