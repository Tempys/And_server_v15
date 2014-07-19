<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="demo.bootstraptor.com/assets/ico/favicon.png">

    <title>Carousel Template for Bootstrap</title>
    <!-- Flexslider styles-->
    <link href="<c:url value="/resources/assets/css/gallery/flexslider.css" />" rel="stylesheet">
    <!-- Bootstrap custom theme core CSS styles -->
    <link href="<c:url value="/resources/assets/css/gallery/theme.css" />" rel="stylesheet">

    <style>
        body{
            padding-top:70px;
        }
        .margin-top-10{
            margin-top:10px;
        }
        .gradient-bg{

            -webkit-box-shadow:  21px -14px 50px rgba(150, 150, 150, 0.05) inset;
            -moz-box-shadow:     21px -14px 50px rgba(150, 150, 150, 0.05) inset;
            box-shadow:          21px -14px 50px rgba(150, 150, 150, 0.05) inset;

            border-left:2px solid #DEDEDE;
            border-top:none;
            border-left:none;
            border-bottom:none;
            border-width:2px;
            -webkit-border-image:
                -webkit-gradient(linear, 0 100%, 0 0, from(rgba(0, 0, 0, .1)), to(rgba(0, 0, 0, 0))) 1 100%;
            -webkit-border-image:
                -webkit-linear-gradient(bottom, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0)) 1 100%;
            -o-border-image:
                -o-linear-gradient(bottom, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0)) 1 100%;
            -moz-border-image:
                -moz-linear-gradient(bottom, rgba(0, 0, 0, .1), rgba(0, 0, 0, 0)) 1 100%;
        }

        .hov-action-border{
            border: 2px solid transparent;
        }
        .hov-action-border:hover{
            border: 2px solid #ffde9f;
        }
        /* Remove standart style from .alert placed in .panel*/
        .panel .alert{
            padding:0px;
            -webkit-box-shadow:none;
            -moz-box-shadow:none;
            box-shadow:none;
        }


        .block-wrapper{
            position:relative;
            display:inline-block;
            width:100%;
            height:auto;
        }
        .map-wrapper{
            position:absolute;
            top:0px;
            left:0px;

            display:inline-block;
        }
        /* gMap */
      /*  #map.gmappanel {
            width:100%;
            position:relative;
            height:0px;

        }*/
       /* #map.gmappanel.hide-map{
            height:0px;
            z-index:1020;
            position:absolute;
            top:0px;
            bottom:0px;
            left:0px;
        }
        #map.gmappanel.show-map{
            display:block;
            z-index:1020;
            position:absolute;
            top:0px;
            bottom:0px;
            left:0px;
            height:500px;

        }*/
        .toggler-hide{
            display:none;
        }


    </style>

    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css" rel="stylesheet">

    <!--[if lt IE 7]>
    <link href="http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome-ie7.min.css" rel="stylesheet">
    <![endif]-->
    <!-- Fav and touch icons -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="../../assets/js/html5shiv.js"></script>
    <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->


</head>
<!-- NAVBAR
================================================== -->
<body>
<nav class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/start">Home</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
               <%-- <li><a href="#">Link 1</a></li>
                <li><a href="#">Link 2</a></li>--%>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Menu<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Your profile</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-reorder"></i></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Properties</a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-share"></i></a>
                    <ul class="dropdown-menu" style="min-width:40px;">
                        <li><a href="#" title=""><i class="icon-twitter"></i></a></li>
                        <li><a href="#" title=""><i class="icon-facebook"></i></a></li>
                        <li><a href="#" title=""><i class="icon-google-plus"></i></a></li>
                        <li><a href="#" title=""><i class="icon-youtube"></i></a></li>
                        <li><a href="#" title=""><i class="icon-dribbble"></i></a></li>
                    </ul>
                </li>
                <li><a href="#" title=""><i class="icon-twitter"></i></a></li>
                <li><a href="#" title=""><i class="icon-facebook"></i></a></li>
                <li><a href="#" title=""><i class="icon-google-plus"></i></a></li>
                <li><a href="#" title=""><i class="icon-youtube"></i></a></li>
                <li><a href="#" title=""><i class="icon-dribbble"></i></a></li>

            </ul>

        </div><!-- /.navbar-collapse -->
    </div>
</nav>


<!-- Main row .container -->
<div class="container">

<!-- breadcrumbs-->
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md12 col-lg-12">

    </div>


</div>
<!-- /breadcrumbs-->

<%--<div class="row">--%>
<!-- Left side wrapper col  -->
<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">

    <div class="panel panel-primary">

        <div class="panel-body">
            <h2>Category</h2>
            <ul>
                <li><a href="#">Family</a></li>
                <li><a href="#">Friends</a></li>
                <li><a href="#">Nature</a></li>

                <%--<li class="active">Single item Data</li>--%>
            </ul>
        </div>
    </div>
</div><!-- / left side -->



<!-- Right side wrapper col-->

        <!-- SLIDER -->

        <div class="flexslider">
            <ul class="slides">

                <c:forEach var="item" items="${tt}">
                    <li data-thumb="/resources${item.image_path}${item.name}" >
                       <img src="/resources${item.image_path}${item.name}"/>
                    </li>
                </c:forEach>
            </ul>
        </div>

        <!-- /SLIDER -->

    <!-- FOOTER -->
    <footer>
        <p>&copy; 2014 Mikhail Dubovskiy &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
    </footer>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${contextPath}/resources/assets/js/jquery.js"></script>
<script src="${contextPath}/resources/assets/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/assets/js/holder.js"></script>
<!-- Optional FlexSlider Additions -->
<script src="${contextPath}/resources/assets/js/jquery.easing.js"></script>
<script src="${contextPath}/resources/assets/js/jquery.mousewheel.js"></script>
<script src="${contextPath}/resources/assets/js/jquery.flexslider-min.js"></script>


<!-- FLEXSLIDER INIT SCRIPT-->
<script type="text/javascript">
    $(window).load(function(){
        $('.flexslider').flexslider({
            animation: "fade",
            controlNav: "thumbnails",
            start: function(slider){
                $('body').removeClass('loading');
            }
        });
    });
</script>



</body>
</html>
