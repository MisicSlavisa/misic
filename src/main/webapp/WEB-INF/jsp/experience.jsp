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
        <div class="row d-flex align-items-center justify-content-center" style="background-image: url(/resources/img/elements/exper.png);
                background-repeat: no-repeat; background-position: 50px 90px">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.experience"/>
                </h1>
                <p class="text-white link-nav"><a href="/index"><spring:message code="app.home"/> </a>  <span class="lnr lnr-arrow-right"></span>  <spring:message code="app.experience"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- Start home-about Area -->
<section class="home-about-area section-gap" style="background: linear-gradient(to right, rgba(189,216,255,0.69),white, rgba(189,216,255,0.69))">
    <div class="container" style="background-image: url(/resources/img/elements/javaLogo.png);
                            background-repeat: no-repeat; background-position: center center;
                            padding-left: 60px; padding-right: 0">
        <h2 class="pt-10"><spring:message code="experience.titel"/></h2>
        <br>
        <div style="padding-left: 0; padding-right: 50px; font-size: 17px">
            <p>
                <spring:message code="experience.text"/>
            </p>
        </div>
        <h3 id="program" class="pt-10"><spring:message code="experience.titel1"/></h3>
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-6 col-md-6 home-about-left" style="text-align: left; font-size: 17px">
                <p>
                    <spring:message code="experience.text1"/>
                </p>
                <p>
                    <spring:message code="experience.text1a"/>
                </p>
            </div>
            <div class="col-lg-5 col-md-6 home-about-right" style="max-width: 55%; width: 55%">
                <div style="width: auto">
                    <table style="height: content-box">
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Java</strong> 82% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="82">></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>JavaScript</strong> 70% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="70"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>jQuery</strong> 50% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="50"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>SQL</strong> 80% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="80"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>HTML/CSS</strong> 80% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="80"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Spring MVC</strong> 90% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="90"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Spring Data JPA </strong> 92% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="92"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Spring Security</strong> 80% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="75"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Hibernate ORM</strong> 78% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="78"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Bootstrap</strong> 80% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="80"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>AngularJS</strong> 40% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="40"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>JUnit/Mockito</strong> 70% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="70"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>C#</strong> 50% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="50"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>XML</strong>(JAXB, StAX, XPath) 85% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="85"></div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <h3 id="database" class="pb-20"><spring:message code="experience.titel3"/></h3>
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-6 col-md-6 home-about-left" style="text-align: left; font-size: 17px">
                <p>
                    <spring:message code="experience.text3"/>
                </p>
            </div>
            <div class="col-lg-5 col-md-6 home-about-right">
                <div style="width: auto">
                    <table style="height: content-box">
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>PostgreSQL </strong> 90% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="90">></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>MySQL </strong> 70% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="70"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>MS Access </strong> 80% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="80"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>MS SQL Server </strong> 60% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="60"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Oracle </strong> 45% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="45"></div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <h3 id="graphics" class="pt-10"><spring:message code="experience.titel2"/></h3>
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-6 col-md-6 home-about-left" style="text-align: left; font-size: 17px">
                <p>
                    <spring:message code="experience.text2"/>
                </p>
            </div>
            <div class="col-lg-5 col-md-6 home-about-right">
                <div style="width: auto">
                    <table style="height: content-box">
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Photoshop</strong> 95% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="95">></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Illustrator</strong> 85% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="85"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>After Effects</strong> 60% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="60"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Premier Pro</strong> 60% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="60"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>InDesign</strong> 88% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="88"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="single-skill-short" style="width: 220px">
                                <p style="width: 220px"><strong>Acrobat Pro</strong> 75% </p>
                            </td>
                            <td style="width: 140px; padding-left: 20px">
                                <div class="skill" data-width="75"></div>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <br>
        <h3 id="lan"><spring:message code="experience.lan"/></h3>
        <div class="pt-10" style="padding-left: 0; padding-right: 50px; font-size: 17px">
            <p>
                <spring:message code="experience.text4"/>
            </p>
        </div>
    </div>
</section>
<!-- End home-about Area -->

<jsp:include page="fragments/brands.jsp"/>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>