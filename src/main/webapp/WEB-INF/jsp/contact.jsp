<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/jquery-ui.css">
<link rel="stylesheet" href="resources/css/nice-select.css">
<link rel="stylesheet" href="resources/css/animate.min.css">
<link rel="stylesheet" href="resources/css/owl.carousel.css">
<link rel="stylesheet" href="resources/css/main.css">
</head>
<body id="top">
<jsp:include page="fragments/menu.jsp"/>

<spring:message code='contact.email' var="mail"/>
<spring:message code='contact.subject' var="sub"/>
<spring:message code='contact.message' var="mas"/>
<spring:message code='common.lang' var="lan"/>

<script type="text/javascript">
    $(window).load(function(){
        var path = window.location.pathname.toString();
        var path1 = window.location.search.toString();
        if (path.slice(path.lastIndexOf("/")+1) === "email" || path1.indexOf("result") !== -1){
            $(window).scrollTop(500);
        }
        else{
            $(window).scrollTop(0);
        }
    });
</script>

<!-- start banner Area -->
<section class="about-banner" style="background-image: url(/resources/img/elements/top.jpg);
                background-repeat: no-repeat; background-position: 100% 100%; background-size: 100%">
    <div class="container">
        <div class="row d-flex align-items-center justify-content-center" style="background-image: url(/resources/img/elements/cont.png);
                background-repeat: no-repeat; background-position: 20px 110px">
            <div class="about-content col-lg-12" style="text-shadow: black 2px 3px 4px">
                <h1 class="text-white">
                    <spring:message code="app.contact"/>
                </h1>
                <p class="text-white link-nav"><a href="/index"><spring:message code="app.home"/> </a>  <span class="lnr lnr-arrow-right"></span>  <spring:message code="app.contact"/></p>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<!-- start banner Area -->
<section class="banner-area" style="height: 400px;
        background: linear-gradient(to right, rgba(0,83,255,0.18),white, rgba(0,83,255,0.18))">
    <div class="container" style="height: 480px">
        <div class="row align-items-center justify-content-between"
             style="background-image: url(/resources/img/elements/siluet1.png);
                background-repeat: no-repeat; background-position: 480px center">
            <div class="col-lg-6 col-md-6 banner-left">
                <h2><spring:message code="contact.contacts"/></h2>
                <br>
                <p style="font-size: large">
                    <strong><spring:message code="app.name"/></strong>
                </p>
                <p>
                    <span class="glyphicon glyphicon-envelope"></span> grslavisa@gmail.com
                </p>
                <p>
                    <span class="glyphicon glyphicon-phone"></span> +7 926 373 42 02
                </p>
                <p>
                    <span class="glyphicon glyphicon-map-marker"></span> <spring:message code="contact.address"/>
                </p>
            </div>
            <div class="col-lg-6 col-md-6 banner-right" style="background-color:transparent; background: none;
                             float: right; top: 0; left: 0; width: 720px; height:400px" >
                <div id="back" style="position: absolute; margin-top: 50px; margin-left: 50px">
                    <script type="text/javascript" charset="utf-8" async
                            src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A7fe35a5b10606f253d76af4cff6c6e99b1ac15eaea82f16c096483bc40474149&amp;width=500&amp;height=300&amp;lang=${lan}&amp;scroll=true">
                    </script>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End banner Area -->

<section class="facts-area section-gap" style="height: auto">
    <div class="container" id="mail" style="background-image: url(/resources/img/elements/Email.png);
                background-repeat: no-repeat; background-position: 0 center">
        <div class="container" style="width: 95%">
            <table>
                <tr>
                    <td style="width: 250px"></td>
                    <td style="width: 460px">
                        <h2 style="color: white; text-align: center">
                            <spring:message code="contact.emailMe"/>
                        </h2>
                    </td>
                    <td>
                        <c:if test="${pageContext.request.getParameter('result') == 'true'}">
                            <h4 style="color: white; border: 5px solid rgb(5,169,25); padding: 5px; background-color: rgb(5,169,25);
                                            text-align: center">
                                <spring:message code="contact.sent"/></h4>
                        </c:if>
                    </td>
                </tr>
            </table>
            <table>
                <tr>
                    <td style="width: 220px"></td>
                    <td style="width: 520px; padding-top: 0">
                        <hr style="width: 80px; border-top: 3px solid white"/>
                        <p style="color: white; text-align: center"><spring:message code="contact.answer"/></p>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>

            <form:form modelAttribute="emailDB" class="form-horizontal" action="email" charset="utf-8" accept-charset="UTF-8"
                       cssStyle="margin-bottom: 0" method="post">
            <fieldset class="boxBody">
                <div class="row" style="color: #F7F7F7; margin-left: 0; margin-top: 15px">
                    <table>
                        <tr>
                            <td style="text-align: right; font-size: 14px; width: 220px; color: #F7F7F7; margin-left: 0">
                                <form:label path="sender" style="margin-right: 5px"><spring:message code="contact.from"/> : </form:label>
                            </td>
                            <td style="text-align: left; width: 520px">
                                <form:input type="email" id="sender" path="sender" class="form-control" placeholder="${mail}"/>
                            </td>
                            <td style="text-align: left; width: auto; font-size: smaller; padding-left: 5px">
                                <form:errors path="sender" cssClass="error" style="color: #F7D478; width: auto"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="row" style="color: #F7F7F7; margin-left: 0; margin-top: 8px">
                    <table>
                        <tr>
                            <td style="text-align: right; font-size: 14px; width: 220px; color: #F7F7F7; margin-left: 0">
                                <form:label path="subject" style="margin-right: 5px"><spring:message code="contact.subject"/> :</form:label>
                            </td>
                            <td style="text-align: left; width: 520px">
                                <form:input type="text" path="subject" id="subject" class="form-control" placeholder="${sub}"/>
                            </td>
                            <td style="text-align: left; width: auto; font-size: smaller; padding-left: 5px">
                                <form:errors path="subject" cssClass="error"  style="color: #F7D478; width: auto"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="row" style="color: #f7f7f7; margin-left: 0; margin-top: 8px">
                    <table>
                        <tr>
                            <td style="vertical-align: top; padding-top: 5px; text-align: right; font-size: 14px; width: 220px; color: #F7F7F7; margin-left: 0">
                                <form:label path="message" style="margin-right: 5px" ><spring:message code="contact.message"/> : </form:label>
                            </td>
                            <td style="text-align: left; width: 520px">
                                <form:textarea path="message" id="message" class="form-control" style="height: 11em" placeholder="${mas}"/>
                            </td>
                            <td style="text-align: left; width: auto; font-size: smaller; padding-left: 5px">
                                <form:errors path="message" cssClass="error" style="color: #F7D478; width: auto"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </fieldset>
            <footer>
                <div class="row" style="margin-left: 230px; margin-top: 20px">
                    <div style="padding-right: 10px">
                        <button type="submit" class="btn btn-primary text-uppercase"><span class='glyphicon glyphicon-envelope'></span> <spring:message code='contact.send'/></button>
                    </div>
                    <div>
                        <button type="reset" class="btn btn-primary text-uppercase"><span class='glyphicon glyphicon-remove'></span> <spring:message code="contact.clear"/></button>
                    </div>
                </div>
            </footer>
            </form:form>
        </div>
    </div>
</section>

<jsp:include page="fragments/footer.jsp"/>

</body>
</html>
