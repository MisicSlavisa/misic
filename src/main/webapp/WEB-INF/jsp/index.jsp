<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="resources/img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="Mišić Slaviša">
    <!-- Meta Description -->
    <meta name="description" content="Personal pages">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">

    <style>
        .flowplayer {
            width: 570px;
            height: 380px;
        }
        .flowplayer .fp-controls, .fp-time, .fp-duration {
            display: none;
        }
    </style>

    <!-- Site Title -->
    <title>Mišić Slaviša</title>

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

    <!-- player skin -->
    <link rel="stylesheet" href="resources/flowplayer/skin/skin.css">

    <!-- for video tag based installs flowplayer depends on jQuery 1.7.2+ -->
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>

    <!-- include flowplayer -->
    <script src="resources/flowplayer/flowplayer.min.js"></script>

</head>

<body id="top">
<spring:message code="local.lang" var="videoLoc"/>

<jsp:include page="fragments/menu.jsp"/>
<p id="pr" style="visibility: collapse; position: absolute">${pageContext.response.locale}</p>

<!-- start banner Area -->
<section class="about-banner" style="background-image: url(/resources/img/elements/top.jpg);
                background-repeat: no-repeat; background-position: 100% 100%; background-size: 100%">
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.name"/>
                </h1>
                <p class="text-white" style="margin-bottom: 0; font-size: larger" ><spring:message code="app.home1"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- start banner Area -->
<section class="banner-area" style="background: linear-gradient(to right, rgba(189,216,255,0.69),white, rgba(189,216,255,0.69))">
    <div class="container" style="height: 480px">
        <div class="row align-items-center justify-content-between" style="height: 480px" id="rowVideo">
            <div class="col-lg-6 col-md-6 banner-left" style="margin-top: 0">
                <h4 style="text-transform: uppercase"><spring:message code="app.itIsMe"/></h4>
                <h1><spring:message code="app.name"/></h1>
                <p>
                    <spring:message code="app.profession"/><br>
                    <spring:message code="app.profession1"/>
                </p>
                <a id=cv1 href="/about" class="btn btn-primary mt-10 text-uppercase"><spring:message code="app.about"/></a>
            </div>
            <div id="back" style="position: absolute; margin-left: 500px; margin-top: 0">
                <img src="resources/img/java-ee.png" alt="" title="" />
            </div>
            <div class="flowplayer col-lg-6 col-md-6 fp-controls fp-time fp-duration" id="player"
                 data-cuepoints="[7.6, 8.2, 8.5, 8.6, 9.1, 9.3, 9.7, 10.2, 10.5, 12.2, 12.8, 13.6]" style="background-color:transparent; background: none;
                             float: right; bottom: 30px; right: 75px" >
                <video>
                    <source type="video/webm" src="${videoLoc}">
                </video>
            </div>
        </div>

        <script language="JavaScript" defer>
            $(function () {
                var el = $("#cv");
                var el1 = $("#cv1");
                var el2 = $("#cv2");
                var el3 = $("#cv3");
                var el4 = $("#cv4");
                var el5 = $("#cv5");

                if ($("#pr").text() === "ru"){
                    flowplayer().on("cuepoint",
                        function (e, api, cuepoint) {
                            switch (cuepoint.time) {
                                case 7.6:
                                    el1.css({
                                        'font-size': '30px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 8.5:
                                    el1.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                                case 8.6:
                                    el2.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el3.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el4.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el5.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 9.7:
                                    el2.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el3.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el4.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el5.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                                case 10.5:
                                    el.css({
                                        'font-size': '26px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 12.8:
                                    el.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                            }
                        })
                }
                else {
                    flowplayer().on("cuepoint",
                        function (e, api, cuepoint) {
                            switch (cuepoint.time) {
                                case 8.2:
                                    el1.css({
                                        'font-size': '30px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 9.1:
                                    el1.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                                case 9.3:
                                    el2.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el3.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el4.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });

                                    el5.css({
                                        'font-size': '16px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 10.2:
                                    el2.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el3.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el4.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });

                                    el5.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                                case 12.2:
                                    el.css({
                                        'font-size': '26px',
                                        'font-weight': 'bold',
                                        'color': 'red'
                                    });
                                    break;
                                case 13.6:
                                    el.css({
                                        'font-size': '',
                                        'font-weight': '',
                                        'color': ''
                                    });
                                    break;
                            }
                        })
                }
                $("#player").refresh();
            })
        </script>
    </div>
</section>
<!-- End banner Area -->

<!-- Start fact Area -->
<section class="facts-area section-gap" id="facts-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 single-fact">
                <h1 class="counter">17</h1>
                <p style="margin-bottom: 0"><spring:message code="index.fact1"/></p>
            </div>
            <div class="col-lg-3 col-md-6 single-fact">
                <h1 class="counter">245</h1>
                <p style="margin-bottom: 0"><spring:message code="index.fact2"/></p>
            </div>
            <div class="col-lg-3 col-md-6 single-fact">
                <h1 class="counter">20239</h1>
                <p style="margin-bottom: 0"><spring:message code="index.fact3"/></p>
            </div>
            <div class="col-lg-3 col-md-6 single-fact">
                <h1 class="counter">28</h1>
                <p style="margin-bottom: 0"><spring:message code="index.fact4"/></p>
            </div>
        </div>
    </div>
</section>
<!-- end fact Area -->

<!-- Start services Area -->
<section class="services-area section-gap" style="background: rgba(209,237,255,0.55)">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content  col-lg-7">
                <div class="title text-center">
                    <h1 class="mb-10 mt-10"><spring:message code="index.service"/></h1>
                    <p style="margin-bottom: 0"><spring:message code="index.text"/></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#program"><span class="lnr lnr-picture"></span><br><h4><spring:message code="index.web"/></h4></a>
                    <p>
                        <spring:message code="index.web1"/>
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#program"><span class="lnr lnr-laptop-phone"></span><br><h4><spring:message code="index.java"/></h4></a>
                    <p>
                        <spring:message code="index.java1"/>
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#graphics"><span class="lnr lnr-camera"></span><br><h4><spring:message code="index.graphic"/></h4></a>
                    <p>
                        <spring:message code="index.graphic1"/>
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#lan"><span class="lnr lnr-link"></span><br><h4><spring:message code="index.lan"/></h4></a>
                    <p>
                        <spring:message code="index.lan1"/>
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#database"><span class="lnr lnr-chart-bars"></span><br><h4><spring:message code="index.AdmDB"/></h4></a>
                    <p>
                        <spring:message code="index.AdmDB1"/>
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="single-services">
                    <a href="/experience#database"><span class="lnr lnr-database"></span><br><h4><spring:message code="index.DevDB"/></h4></a>
                    <p>
                        <spring:message code="index.DevDB1"/>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End services Area -->

<jsp:include page="fragments/testimonials.jsp"/>

<jsp:include page="fragments/footer.jsp"/>
</html>