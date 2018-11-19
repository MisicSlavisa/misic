<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--https://getbootstrap.com/docs/4.0/examples/sticky-footer/--%>
<!-- start footer Area -->
<footer class="footer-area section-gap">

    <!-- start Email Area -->
    <div class="container" style="width: 80%">
        <div class="single-footer-widget" style="text-align: center">
            <div class="social-widget" style="font-weight: 500; text-align: center">
                <div class="single-footer-widget">
                    <h4><spring:message code="footer.follow"/></h4>
                    <div class="footer-social align-items-center">
                        <a href="https://www.facebook.com/slavisa.misic.14268"><i class="fa fa-facebook" style="font-size: x-large"></i></a>
                        <a href="https://twitter.com/MisicSlavisa"><i class="fa fa-twitter" style="font-size: x-large"></i></a>
                        <a href="https://www.instagram.com/smishich/"><i class="fa fa-instagram" style="font-size: x-large"></i></a>
                        <a href="https://plus.google.com/u/0/+SlavisaMisic"><i class="fa fa-google-plus" style="font-size: x-large"></i></a>
                    </div>
                </div>
            </div>
            <%--<p class="footer-text-normal">
                We have tested a number of registry fix and clean utilities and present our top 3 list on our site for your convenience.
            </p>--%>
            <p class="footer-text footer-text-normal"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made by <a href="/index" target="_blank">Mišić Slaviša</a>
            </p>
            <a href="/index"><img src="resources/img/logoWhite.png" style="width: 150px" alt="" title="" /></a>
        </div>
    </div>

    <a href="#top" title="<spring:message code="footer.arrow"/>" id="scroller" aria-hidden="true"></a>

    <script src="resources/js/vendor/jquery-2.2.4.min.js"></script>
    <script src="resources/js/popper.min.js"></script>
    <script src="resources/js/vendor/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
    <script src="resources/js/easing.min.js"></script>
    <script src="resources/js/hoverIntent.js"></script>
    <script src="resources/js/superfish.min.js"></script>
    <script src="resources/js/jquery.ajaxchimp.min.js"></script>
    <script src="resources/js/jquery.magnific-popup.min.js"></script>
    <script src="resources/js/jquery.tabs.min.js"></script>
    <script src="resources/js/jquery.nice-select.min.js"></script>
    <script src="resources/js/isotope.pkgd.min.js"></script>
    <script src="resources/js/waypoints.min.js"></script>
    <script src="resources/js/jquery.counterup.min.js"></script>
    <script src="resources/js/simple-skillbar.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <script src="resources/js/mail-script.js"></script>
    <script src="resources/js/main.js"></script>
</footer>