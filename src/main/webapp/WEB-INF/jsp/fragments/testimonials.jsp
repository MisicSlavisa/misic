<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- Start testimonial Area -->
<section class="testimonial-area section-gap" style="background: rgba(190,229,235,0.19); padding: 40px 0">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-20 col-lg-8" style="width: 700px">
                <div class="title text-center">
                    <h1 class="mb-10"><spring:message code="testemonial.feedback"/></h1>
                    <p style="font-size: 17px"><spring:message code="testemonial.feedback.text"/></p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="active-testimonial">
                <div class="single-testimonial item d-flex flex-row" style="box-shadow: -12px 12px 17px 5px rgba(204,204,204,0.35); margin: 27px">
                    <div class="client">
                        <img style="width: 80px; height: 80px" src="resources/img/1.jpg" alt="">
                    </div>
                    <div class="desc">
                        <p>
                            <spring:message code="testemonial.1text"/>
                        </p>
                        <h4><spring:message code="testemonial.1name"/></h4>
                        <b style="color: #0a2b1d"><i><spring:message code="testemonial.1task"/></i></b>
                    </div>
                </div>
                <div class="single-testimonial item d-flex flex-row" style="box-shadow: -12px 12px 17px 5px rgba(204,204,204,0.35); margin: 27px">
                    <div class="client">
                        <img style="width: 80px; height: 80px" src="resources/img/2.jpg" alt="">
                    </div>
                    <div class="desc">
                        <p>
                            <spring:message code="testemonial.2text"/>
                        </p>
                        <h4><spring:message code="testemonial.2name"/></h4>
                        <b style="color: #0a2b1d"><i><spring:message code="testemonial.2task"/></i></b>
                    </div>
                </div>
                <div class="single-testimonial item d-flex flex-row" style="box-shadow: -12px 12px 17px 5px rgba(204,204,204,0.35); margin: 27px">
                    <div class="client">
                        <img style="width: 80px; height: 80px" src="resources/img/3.jpg" alt="">
                    </div>
                    <div class="desc">
                        <p>
                            <spring:message code="testemonial.3text"/>
                        </p>
                        <h4><spring:message code="testemonial.3name"/></h4>
                        <b style="color: #0a2b1d"><i><spring:message code="testemonial.3task"/></i></b>
                    </div>
                </div>
                <div class="single-testimonial item d-flex flex-row" style="box-shadow: -12px 12px 17px 5px rgba(204,204,204,0.35); margin: 27px">
                    <div class="client">
                        <img style="width: 80px; height: 80px" src="resources/img/4.jpg" alt="">
                    </div>
                    <div class="desc">
                        <p>
                            <spring:message code="testemonial.4text"/>
                        </p>
                        <h4><spring:message code="testemonial.4name"/></h4>
                        <b style="color: #0a2b1d"><i><spring:message code="testemonial.4task"/></i></b>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End testimonial Area -->
