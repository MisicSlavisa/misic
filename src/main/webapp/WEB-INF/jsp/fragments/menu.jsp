<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<body>
<header id="header">
    <div class="container main-menu" style="padding-right: 0; padding-left: 0;">
        <nav class="row align-items-center justify-content-between d-flex">
            <div id="logo">
                <a href="/index"><img src="resources/img/logo.png" style="width: 200px" alt="" title="" /></a>
            </div>
            <nav id="nav-menu-container">
                <ul class="nav-menu">
                    <li><a href="/index"><spring:message code="app.home"/></a></li>
                    <li><a href="/about"><spring:message code="app.about"/></a></li>
                    <li><a id="cv2" href="/education"><spring:message code="app.education"/></a></li>
                    <li><a id="cv3" href="/experience"><spring:message code="app.experience"/></a></li>
                    <li><a id="cv4" href="/portfolio"><spring:message code="app.portfolio"/></a></li>
                    <li><a id="cv5" href="/contact"><spring:message code="app.contact"/></a></li>
                    <li class="menu-has-children">
                        <span style="color:#222; font-size: 14px; font-weight: 500" id="cv"><spring:message code="header.resume"/></span>
                        <ul>
                            <li class="menu-has-children"><a href="resources/doc/CVru.pdf">по-русски <img src="resources/img/elements/f1.jpg" class="flag-menu"></a>
                            <li class="menu-has-children"><a href="resources/doc/CVen.pdf">in English <img src="resources/img/elements/f3.jpg" class="flag-menu"></a>
                            <li class="menu-has-children"><a href="resources/doc/CVde.pdf">in Deutsch <img src="resources/img/elements/f4.jpg" class="flag-menu"></a>
                            <li class="menu-has-children"><a href="resources/doc/CVsr.pdf">na srpskom <img src="resources/img/elements/f2.jpg" class="flag-menu"></a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </nav><!-- #nav-menu-container -->
            <nav id="flags" style="width: auto; margin-top: -4px">
                <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=ru"><img style="height: 15px" src="resources/img/elements/f1.jpg" alt="по-русски"></a>
                <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=en"><img style="height: 15px" src="resources/img/elements/f3.jpg" alt="English"></a>
                <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=de"><img style="height: 15px" src="resources/img/elements/f4.jpg" alt="Deutch"></a>
                <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=sr"><img style="height: 15px" src="resources/img/elements/f2.jpg" alt="Srpski"></a>
            </nav>
            <nav id="login" style="margin-top: -2px">
                <a href="/login"><span class="fa fa-sign-in"></span></a>
            </nav>
        </nav>
    </div>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            $(window).scroll(function () {
                if ($(this).scrollTop() > 0) {
                    $('#scroller').fadeIn();
                } else {
                    $('#scroller').fadeOut();
                }
            });
            $('#scroller').click(function () {
                $('body,html').animate({
                    scrollTop: 0
                }, 400);
                return false;
            });
        });
    </script>
</header>
<!-- #header -->
</body>
</html>
