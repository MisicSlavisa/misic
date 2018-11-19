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
        <div class="row d-flex align-items-center justify-content-center" style="background-image: url(/resources/img/elements/port.png);
                background-repeat: no-repeat; background-position: 20px 110px">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.portfolio"/>
                </h1>
                <p class="text-white link-nav"><a href="/index"><spring:message code="app.home"/> </a>  <span class="lnr lnr-arrow-right"></span>  <spring:message code="app.portfolio"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<jsp:include page="fragments/portfolio.jsp"/>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
