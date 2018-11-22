<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="colorlib">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Personal</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="http://bootstraptema.ru/plugins/2016/animate/animate.css" />
    <!--
    CSS
    ============================================= -->
    <link rel="stylesheet" href="resources/css/linearicons.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="resources/css/magnific-popup.css">
    <link rel="stylesheet" href="resources/css/jquery-ui.css">
    <link rel="stylesheet" href="resources/css/nice-select.css">
    <link rel="stylesheet" href="resources/css/animate.min.css">
    <link rel="stylesheet" href="resources/css/owl.carousel.css">
    <link rel="stylesheet" href="resources/css/main.css">

</head>
<body id="top">
<jsp:include page="fragments/menu.jsp"/>
<!-- start banner Area -->
<section class="about-banner" style="background-image: url(/resources/img/elements/top.jpg);
                background-repeat: no-repeat; background-position: 100% 100%; background-size: 100%">
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.about1"/>
                </h1>
                <p class="text-white link-nav"><a href="/index"><spring:message code="app.home"/> </a>  <span class="lnr lnr-arrow-right"></span>  <spring:message code="app.about"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Start home-about Area -->
<section class="home-about-area section-gap" style="background: linear-gradient(to right, rgba(189,216,255,0.69),white, rgba(189,216,255,0.69))">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-6 col-md-6 home-about-left" style="text-align: center">
                <img class="img-fluid" src="resources/img/about-img.png" alt="" style="width: 55%">
            </div>
            <div class="col-lg-5 col-md-6 home-about-right">
                <h1 class="text-uppercase" style="margin-bottom: 20px; margin-top: 10px"><spring:message code="app.details"/></h1>
                <p style="font-size: 17px">
                    <spring:message code="about.about"/>
                </p>
                <a href="/experience" class="primary-btn text-uppercase"><spring:message code="about.allDet"/></a>
            </div>
        </div>
        <div>
            <h4 class="pt-30"><spring:message code="about.personal"/></h4>
        </div>
        <br>
        <table style="width: 100%">
            <tbody>
            <tr>
                <td style="vertical-align: top">
                    <table>
                        <tbody>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.birthDate"/>
                            </td>
                            <td class="personal-right1">
                                <spring:message code="about.birthDate1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.birthPlace"/>
                            </td>
                            <td class="personal-right1">
                                <spring:message code="about.birthPlace1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.citizen"/>
                            </td>
                            <td class="personal-right1">
                                <spring:message code="about.citizen1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.sex"/>
                            </td>
                            <td class="personal-right1">
                                <spring:message code="about.sex1"/>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
                <td>
                    <table>
                        <tbody>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.martial"/>
                            </td>
                            <td class="personal-right">
                                <spring:message code="about.martial1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.spouse"/>
                            </td>
                            <td class="personal-right">
                                <spring:message code="about.spouse1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.children"/>
                            </td>
                            <td class="personal-right">
                                <spring:message code="about.children1"/>
                            </td>
                        </tr>
                        <tr>
                            <td class="personal-left">
                                <spring:message code="about.driving"/>
                            </td>
                            <td class="personal-right">
                                <spring:message code="about.driving1"/>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
        <br>
        <h4 class="pt-30"><spring:message code="about.lang"/></h4>
        <div class="col-lg-12 pt-20">
            <p style="font-size: 17px; padding-left: 0">
                <spring:message code="about.langExplain"/>
            </p>
        </div>
        <div class="row skillbar-wraps" style="margin-top: -20px">
            <div class="col-lg-6 skill-left" style="max-width: 45%; padding: 0 100px">
                <div class="single-skill">
                    <p style="font-size: 17px">
                        <spring:message code="about.sr"/> 100%
                    </p>
                    <div class="skill" data-width="100"></div>
                </div>
                <div class="single-skill">
                    <p style="font-size: 17px">
                        <spring:message code="about.en"/> 60%
                    </p>
                    <div class="skill" data-width="60"></div>
                </div>
            </div>
            <div class="col-lg-6 skill-right" style="max-width: 45%; padding: 0 100px">
                <div class="single-skill">
                    <p style="font-size: 17px">
                        <spring:message code="about.ru"/> 90%
                    </p>
                    <div class="skill" data-width="90"></div>
                </div>
                <div class="single-skill">
                    <p style="font-size: 17px">
                        <spring:message code="about.de"/> 17%
                    </p>
                    <div class="skill" data-width="17"></div>
                </div>
            </div>
        </div>
        <br>
    </div>
</section>
<!-- End home-about Area -->

<!--Carousel Wrapper-->
<div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel">
    <!--Indicators-->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-2" data-slide-to="1"></li>
        <li data-target="#carousel-example-2" data-slide-to="2"></li>
        <li data-target="#carousel-example-2" data-slide-to="3"></li>
    </ol>
    <!--/.Indicators-->
    <!--Slides-->
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view">
                <img class="d-block w-100" src="/resources/img/spouse.jpg" alt="First slide">
                <div class="mask rgba-black-light"></div>
            </div>
            <div class="carousel-caption">
                <h3 class="h3-responsive">My wife!</h3>
                <p>I love her so much!</p>
            </div>
        </div>
        <div class="carousel-item">
            <!--Mask color-->
            <div class="view">
                <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(115).jpg" alt="Second slide">
                <div class="mask rgba-black-light"></div>
            </div>
            <div class="carousel-caption">
                <h3 class="h3-responsive">Thir is the second title</h3>
                <p>Secondary text</p>
            </div>
        </div>
        <div class="carousel-item">
            <!--Mask color-->
            <div class="view">
                <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(108).jpg" alt="Third slide">
                <div class="mask rgba-black-light"></div>
            </div>
            <div class="carousel-caption">
                <h3 class="h3-responsive">This is the third title</h3>
                <p>Third text</p>
            </div>
        </div>
    </div>
    <!--/.Slides-->
    <!--Controls-->
    <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <!--/.Controls-->
</div>
<!--/.Carousel Wrapper-->

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>