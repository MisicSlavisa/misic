<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- Start portfolio-area Area -->
<section class="portfolio-area section-gap" id="portfolio">
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="menu-content pb-10 col-lg-8">
                <div class="title text-center">
                    <h1 class="mb-10"><spring:message code="portfolio.title"/></h1>
                    <p><spring:message code="portfolio.text"/></p>
                </div>
            </div>
        </div>

        <div class="filters">
            <ul>
                <li class="active" data-filter="*"><spring:message code="portfolio.all"/></li>
                <li data-filter=".graphics"><spring:message code="portfolio.graph"/></li>
                <li data-filter=".video"><spring:message code="portfolio.video"/></li>
                <li data-filter=".database"><spring:message code="portfolio.db"/></li>
                <li data-filter=".web"><spring:message code="portfolio.web"/></li>
            </ul>
        </div>

        <div class="filters-content">
            <div class="row grid" style="height: 100%">
                <div class="single-portfolio col-sm-4 all graphics">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/img/visit.png" alt="">
                        </div>
                        <a href="resources/img/visit1.jpg">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption1"/></h4>
                        <div class="cat"><spring:message code="portfolio.graph"/></div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all graphics">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/img/kat.jpg" alt="">
                        </div>
                        <a href="resources/img/kat.pdf">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption2"/></h4>
                        <div class="cat"><spring:message code="portfolio.graph"/></div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all web">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/img/site.png" alt="">
                        </div>
                        <a href="resources/img/site1.png">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption3"/></h4>
                        <div class="cat"><spring:message code="portfolio.web"/></div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all database">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/img/base.png" alt="">
                        </div>
                        <a href="resources/img/base1.png">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption4"/></h4>
                        <div class="cat"><spring:message code="portfolio.db"/></div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all graphics">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/doc/CVen.png" alt="">
                        </div>
                        <a href="resources/doc/CVen.pdf">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption5"/></h4>
                        <div class="cat"><spring:message code="portfolio.graph"/></div>
                    </div>
                </div>
                <div class="single-portfolio col-sm-4 all video">
                    <div class="relative">
                        <div class="thumb">
                            <div class="overlay overlay-bg"></div>
                            <img class="image img-fluid" src="resources/img/Main.png" alt="">
                        </div>
                        <a href="resources/img/videoEn.webm">
                            <div class="middle">
                                <div class="text align-self-center d-flex"><img src="resources/img/preview.png" alt=""></div>
                            </div>
                        </a>
                    </div>
                    <div class="p-inner">
                        <h4><spring:message code="portfolio.caption6"/></h4>
                        <div class="cat"><spring:message code="portfolio.video"/></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>
<!-- End portfolio-area Area -->
