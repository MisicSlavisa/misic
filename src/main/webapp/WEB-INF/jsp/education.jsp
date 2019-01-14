<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <div class="row d-flex align-items-center justify-content-center" style="background-image: url(/resources/img/elements/edu.png);
                background-repeat: no-repeat; background-position: 20px 110px">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.qualification"/>
                </h1>
                <p class="text-white link-nav"><a href="/index"><spring:message code="app.home"/> </a>  <span class="lnr lnr-arrow-right"></span>  <spring:message code="app.qualification"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Start timeline Area -->
<section class="timeline pb-120" style="padding: 50px 0;
         background: linear-gradient(to right, rgba(189,216,255,0.69),white, rgba(189,216,255,0.69))">
    <ul style="background-image: url(/resources/img/me.png);
                            background-repeat: no-repeat; background-position: center center">
        <li>
            <div class="content">
                <a href="http://javaops.ru/"><img class="img-fluid mx-auto d-block mb-30" src="resources/img/elements/javaops.png" alt=""></a>
                <h4>
                    <time><spring:message code="app.qualification4"/></time>
                </h4>
                <p><b><spring:message code="app.qualification4а"/></b></p>
                <p><spring:message code="app.qualification4b"/></p>
            </div>
        </li>
        <li>
            <div class="content">
                <a href="https://javarush.ru/"><img class="img-fluid mx-auto d-block mb-30" src="resources/img/elements/javarush.png" alt=""></a>
                <h4>
                    <time><spring:message code="app.qualification1"/></time>
                </h4>
                <p><b><spring:message code="app.qualification1а"/></b></p>
                <p><spring:message code="app.qualification1b"/></p>
            </div>
        </li>
        <li>
            <div class="content">
                <a href="http://en.specialist.ru/"><img class="img-fluid mx-auto d-block mb-30" src="resources/img/elements/specialist.gif" alt=""></a>
                <h4>
                    <time><spring:message code="app.qualification2"/></time>
                </h4>
                <p><b><spring:message code="app.qualification2а"/></b></p>
                <p><spring:message code="app.qualification2b"/></p>
            </div>
        </li>
        <li>
            <div class="content">
                <a href="http://www.elfak.ni.ac.rs/en"><img class="img-fluid mx-auto d-block mb-30" src="resources/img/elements/elnis.png" alt=""></a>
                <h4>
                    <time><spring:message code="app.qualification3"/></time>
                </h4>
                <p><b><spring:message code="app.qualification3a"/></b></p>
                <p><spring:message code="app.qualification3b"/></p>
            </div>
        </li>
    </ul>
</section>
<!-- End timeline Area -->

<jsp:include page="fragments/brands.jsp"/>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>