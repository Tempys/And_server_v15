<%--
  Created by IntelliJ IDEA.
  User: angel
  Date: 29.05.14
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>

<!-- saved from url http://www.bootstraptor.com ##########################################################################
Don't remove this attribution!
This template build on Bootstrap 3 Developer  Kit v.3.0. by @Bootstraptor
Built with Bootstrap 3.0.  version/ part of Bootstraptor KIT
Read usage license on for this template on http://www.bootstraptor.com
##########################################################################
-->

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Test Image server</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- GOOGLE FONT-->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700italic,700,500&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
<!-- /GOOGLE FONT-->
<link href="http://fonts.googleapis.com/css?family=Comfortaa:400,300,700&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800" rel="stylesheet" type="text/css">

<!-- Le styles -->
<!-- Latest compiled and minified CSS BS 3.0. RC1-->
<link href= "<c:url value="/resources/assets/css/bootstrap.min.css" />" rel="stylesheet">

<style type="text/css">
body {
    padding-top: 0px;
    padding-bottom: 0px;
    font-family: 'Roboto', sans-serif;

}

h1,h2,h3,h4,h5,h6{
    font-weight:200;
    text-shadow: 0 1px 3px rgba(0,0,0,.4);
}
header#top-section{
    position:relative;
    overflow:hidden;
    padding-top:0px;
    background: url(/resources/images/m3.jpg) 50% 0% fixed no-repeat;
    background-size:100% 100%;
    min-height:700px;
    width:100%;
    min-width:100%;
    z-index:0;

}

.inner-top-bg{
    position:absolute;
    top:0px;
    left:0px;
    bottom:0px;
    display:inline-block;
    width:100%;
    min-width:100%;
    height:100%;
    min-height:100%;
    background: rgba(0, 0, 0, 0.3);

}
.jumbotron {
    background: none;
    text-shadow: 0 1px 3px rgba(0,0,0,.4), 0 0 30px;
    position:fixed;
    top:0px;
    left:0px;
    right:0px;
    z-index:1;
    width:100%;
    text-align:center;
    padding-right:0px;
    padding-left:0px;
}

.jumbotron h1{
    color:#fff;
    padding-top:220px;

}

.jumbotron p.lead {
    color:#fff;
    font-size:120%;
    max-width:60%;
    margin-left:auto;
    margin-right:auto;

    position:relative;
}
.btn.btn-start{
    background: rgba(0,0,0, 0);
    border:4px solid #fff;
    color:#fff;
    padding: 19px 24px;
    font-size: 24px;
    font-weight: 200;
    margin-top:40px;
    z-index:2;
}
.btn.btn-start:hover{
    background: rgba(0,0,0, 0.5);
    color:#fff;
    padding: 19px 24px;
    font-size: 24px;
    font-weight: 200;
    margin-top:40px;
    z-index:2;
}
section {
    padding-top:50px;
    padding-bottom:100px;
    min-height:600px;
    width:100%;
    min-width:100%;
    position:relative;
    overflow:hidden;
}

#Section-1{
    background: url(/resources/images/mob1.jpg) 50% 0% fixed repeat;
    background-size:100% 100%;
    min-height:650px;
}

#Section-2{
    background: url(/resources/images/mob2.jpg) 50% 0% fixed repeat;
    background-size:100% 100%;
    min-height:650px;
}

footer{
    background: url(/resources/images/st1.jpg) 50% 0% fixed repeat;
    background-size:100% 100%;
    max-height:600px;
}

footer{
    width:100%;
    min-width:100%;
    padding-top:50px;

    min-height:600px;
    position:relative;
}



#Section-2 hr{
    color:tramsparent;
}
#Section-3{
    background:#fff;
}

.color-white{
    color:#fff;
}

.panel{
    background: rgba(250,250,250, 0.65);
    margin-bottom:30px;
    -webkit-box-shadow: 1px 1px 12px rgba(0, 0, 0, 0.5);
    -moz-box-shadow:    1px 1px 12px rgba(0, 0, 0, 0.5);
    box-shadow:         1px 1px 12px rgba(0, 0, 0, 0.5);
    border:1px solid rgba(250,250,250, 0.5);
}

.panel-heading, .panel-footer{
    background: rgba(250,250,250, 0.4);
    -webkit-box-shadow: 1px 1px 12px rgba(50, 50, 50, 0.5);
    -moz-box-shadow:    1px 1px 12px rgba(50, 50, 50, 0.5);
    box-shadow:         1px 1px 12px rgba(50, 50, 50, 0.5);

}
.panel h3{
    text-shadow: 0px 1px 0px rgba(250, 250, 250, 1);
}
.panel .list-group-item{
    background: rgba(250,250,250, 0.7);
}

/****************** NAVIGATION STYLES *************************/
.navbar {
    background-color: #f9f9f9;
    border:0px;
    box-shadow:0px -3px 0px rgba(50,50,50, 0.25) inset;
}
navbar-fixed-top{
    z-index:1030;
}

.navbar .nav > li > a {
    float: none;
    padding: 15px 20px 15px;
    color: #777777;
    text-decoration: none;
    text-shadow: none;
    font-size:14px;
    font-wight:bold;
    text-transform:uppercase;
}
.navbar .nav > .active > a,
.navbar .nav > .active > a:hover,
.navbar .nav > .active > a:focus {
    color: #333;
    text-decoration: none;
    background-color: #fff;
    -webkit-box-shadow:  none;
    -moz-box-shadow:   none;
    box-shadow:  none;
}


.navbar .nav > .active > a, .navbar .nav > .active > a:hover, .navbar .nav > .active > a:focus {
    color: #333;
    font-weight:600;
    box-shadow:0px -3px 0px rgba(50,50,50, 0.53) inset;
}

/*************** @media ******************/
@media (max-width: 979px){
    body{
        padding:0px;
    }
    .navbar-fixed-top {
        margin-bottom: 0px;
    }

    .navbar-fixed-top, .navbar-fixed-bottom {
        position: fixed;
    }

    .navbar .container {
        width: auto;
        padding: 0px 20px;
    }

    .navbar .brand {
        padding-right: 10px;
        padding-left: 10px;
        margin: 0 0 0 15px;
    }
    .container{
        padding:0px 20px;
    }

    .jumbotron {
        padding: 0px;
        top:30px;
    }
    .jumbotron h1 {
        color: #fff;
        padding-top: 150px;
        font-size:40px;
    }
    footer .page-header h3{
        padding-top:100px !important;
    }
}
@media (max-width: 762px){
    header#top-section{
        background: url(/resources/images/m3.jpg) 50% 0% fixed no-repeat;
        background-size:auto 100%;
    }

    #Section-1{
        background: url(/resources/images/mob1.jpg) 50% 0% fixed repeat;
        background-size:auto 100%;
    }

    #Section-2{
        background: url(/resources/images/mob2.jpg) 50% 0% fixed repeat;
        background-size:auto 100%;
    }

    footer{
        background: url(/resources/images/st1.jpg) 50% 0% fixed repeat;
        background-size:auto 100%;
    }

}

</style>

<link href="<c:url value="/resources/assets/css/font-awesome.min.css" />" rel="stylesheet" >

<!--[if lt IE 7]>
<link href= "<c:url value="/resources/assets/css/font-awesome-ie7.min.css" />" rel="stylesheet">
<![endif]-->
<!-- Fav and touch icons -->


<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
<script src="<c:url value="http://html5shim.googlecode.com/svn/trunk/html5.js" />" type="text/javascript"></script>
<![endif]-->
<!-- Le fav and touch icons -->
<link rel="shortcut icon" href="/resources/assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

</head>
<!-- /HEAD-->
<body data-spy="scroll" data-target=".navbar">


<nav id="topnav"  class="navbar navbar-fixed-top navbar-default" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Navigation menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Test image server v1.0</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#top-section">Home</a></li>
                <li><a href="#Section-1">Get in on Google play</a></li>
               <%-- <li><a href="#Section-2">Price</a></li>--%>
                <li><a href="#foot-sec">About us</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>

<!-- HEADER -->
<header id="top-section">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="text-center col-sm-12 col-lg-12">
                    <h1 class="">WELLCOME to Test image server</h1>
                    <p class="lead">
                        it is my first journey in a incredible world of programming
                    </p>
					<span class="" id="startbtn">

					<a class="btn btn-start btn-default" href="<c:url value="/login" /> ">Get started</a>

					</span>
                </div>
            </div>
        </div>
    </div>
    <div class="inner-top-bg"></div><!-- OVERLAY BG-->
</header>
<!-- / HEADER -->


<!--  SECTION-1 -->
<section id="Section-1">
    <div class="container">
        <!-- Example row of columns -->
        <div class="row">
            <div class="page-header color-white col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <h3 style="padding-top:50px;">Test image client</h3>
            </div>
        </div>

        <div class="row">
            <div class="color-white  col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div class="row">
                    <div class="col-sm-12 col-lg-12">

                        <p class="lead">This client helps u to have access for images in every place in the world </p>
                    </div>
                </div><!-- /INNER ROW-FLUID-->
            </div><!-- SPAN6-->
        </div>

        <div class="row">
            <div class="col-sm-6 col-lg-6">
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <a class="btn btn-start btn-default" href="#Section-1">DOWNLOAD APP</a>
                    </div>
                </div><!-- /INNER ROW-FLUID-->
            </div><!-- SPAN6-->
        </div>

    </div><!-- / CONTAINER-->
</section>

<!-- / SECTION-1 -->

<!-- SECTION-2 -->
<%--<section id="Section-2">

    <div class="container">

       &lt;%&ndash; <div class="row">
            <div class="page-header text-center color-white col-sm-12 col-lg-12" style="padding-top:30px;">
                <h3>Prices</h3>
            </div>
        </div>&ndash;%&gt;

        <!-- Example row of columns -->
        <div class="row">

            <div class="text-center col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>Discount</h3>
                    </div>
                    <div class="panel-body">
                        <p> There are a lot of prive tariffs </p>
                    </div>
                    <div class="panel-footer">
                        <a class="btn btn-default" href="/---">View details »</a>
                    </div>
                </div>
            </div>

            <div class="text-center col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="text-center"><i class="icon-fullscreen"></i> PRICING PLAN</h3>
                    </div>
                    <div class="panel-body">
                        <div class="row">


                        </div>
                        <ul class="list-group list-group-flush text-center">
                            <li class="list-group-item"><p class="lead text-info" style="font-size:40px"><strong>$10</strong></p></li>
                            <li class="list-group-item">Commercial use</li>
                            <li class="list-group-item">Unlimited projects</li>
                            <li class="list-group-item">27/7 support</li>
                        </ul>
                    </div>
                    <div class="panel-footer">
                        <a class="btn btn-default btn-block" href="...">Select plan</a>
                    </div>
                </div>
            </div>

            <div class="text-center col-xs-12 col-sm-4 col-md-4 col-lg-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3>Panel Heading</h3>
                    </div>
                    <div class="panel-body">
                        <p>Change your mind with this program </p>
                    </div>
                    <div class="panel-footer">
                        <a class="btn btn-default" href="...">View details »</a>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- / CONTAINER-->

</section>--%>
<!-- / SECTION-2 -->



<!-- FOOTER -->
<footer id="foot-sec">
    <div class="container ">
        <div class="row">
            <div class="page-header text-center color-white col-sm-12 col-lg-12">
                <h3 style="padding-top:250px;">About us</h3>
            </div>
        </div>

        <div class="row">
            <div class="text-center color-white col-sm-12 col-lg-12">
                <p>© 2014 Build with Dubovskiy M.V <a class="" href="...">@ right reserves</a></p>
            </div>
        </div>
    </div><!-- / CONTAINER-->
</footer>
<!-- / FOOTER -->


<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<%--<script src="assets/js/jquery.js" type="text/javascript"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="assets/js/bootstrap.min.js"></script>
<!-- PAGE CUSTOM SCROLLER -->
<script type="text/javascript" src="assets/js/jquery.nicescroll.min.js"></script>

<script src="assets/js/jquery.parallax-1.1.3.js" type="text/javascript" ></script>
<script src="assets/js/jquery.localscroll-1.2.7-min.js" type="text/javascript" ></script>
<script src="assets/js/jquery.scrollTo-1.4.6-min.js" type="text/javascript" ></script>--%>

<script>
    jQuery(document).ready(function(){
        jQuery('#topnav').localScroll(3000);
        jQuery('#startbtn').localScroll(5000);
        //.parallax(xPosition, speedFactor, outerHeight) options:
        //xPosition - Horizontal position of the element
        //inertia - speed to move relative to vertical scroll. Example: 0.1 is one tenth the speed of scrolling, 2 is twice the speed of scrolling
        //outerHeight (true/false) - Whether or not jQuery should use it's outerHeight option to determine when a section is in the viewport
        jQuery('#top-section').parallax("50%", 0.1);
        jQuery('#Section-1').parallax("70%", 0.3);
        jQuery('#Section-2').parallax("50%", 0.1);
        jQuery('#foot-sec').parallax("50%", 0.1);

    })
</script>

<script>
    //hide menu after click on mobile
    jQuery('.navbar .nav > li > a').click(function(){
        jQuery('.navbar-collapse.navbar-ex1-collapse.in').removeClass('in').addClass('collapse').css('height', '0');

    });
</script>

<!-- NICE Scroll plugin -->
<script>
    //scroll bar custom
    jQuery(document).ready(
            function() {
                jQuery("html").niceScroll({cursorcolor:"#fff"});
            }
    );
</script>
<!-- saved from url http://www.bootstraptor.com ==========================
Don't remove this attribution!
This template build on Bootstrap 3 Developer  Kit v.2.0. by @Bootstraptor
Read usage license on http://www.bootstraptor.com
@BOOTSTRAPTOR TEMPLATE SUPORT:
Support & commercial usage license contact: dogserega@gmail.com
--------------------------------------------------------
Bootstraptor 3.0. - templates - themes  - skins
 usage licenses here http://www.bootstraptor.com <==
---------------------------------------------------------

Uprgader 2.3.* => 3.0. service Bootstrap 3.0. online update service free http://bootstrap3.kissr.com/
Update Bootstrap 2.3.* to Bootstrap 3.0. online http://bootstrap3.kissr.com/
follow for templates updates & new releases on Twitter.com/Bootstraptor
##########################################################################-->

</body>
</html>