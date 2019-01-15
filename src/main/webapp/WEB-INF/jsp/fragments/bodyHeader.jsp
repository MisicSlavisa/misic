<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<nav class="navbar navbar-expand-md navbar-light bg-light py-0">
    <div class="container">
        <a href="/index" class="navbar-brand" style="max-width: 70%"><img src="resources/img/logo.png" style="max-width: 200px; padding-bottom: 8px"> </a>
        <%--<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>--%>

        <div id="navbarNav" style="max-width: 82%; text-align: right">
            <ul class="nav-menu">
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item">
                        <form:form class="row" action="logout" method="post">
                            <div style="width: 200px; padding: 5px 3px 0 3px; text-align: right">
                                <a style="margin-right: 15px; font-weight: bolder" href="profile"><sec:authentication property="principal.userTo.name"/>
                                    <spring:message code="app.profile"/></a>
                            </div>
                            <div style="width: 40px; padding: 0 3px 0 3px">
                                <button class="btn btn-primary" type="submit">
                                    <span class="fa fa-sign-out"></span>
                                </button>
                            </div>
                        </form:form>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item">
                        <form:form class="row" action="spring_security_check" method="post">
                            <div style="width: 350px; padding: 7px 10px 0 3px">
                                <strong><spring:message code="app.login1"/></strong>
                            </div>
                            <div style="width: 200px; padding: 0 3px 0 3px">
                                <input class="form-control" type="text" placeholder="Email" name="username">
                            </div>
                            <div style="width: 120px; padding: 0 3px 0 3px">
                                <input class="form-control" type="password" placeholder="Password" name="password">
                            </div>
                            <div style="width: 30px; margin-top: 4px; margin-left: 3px">
                                <button class="btn btn-success" type="submit">
                                    <span class="fa fa-sign-in"></span>
                                </button>
                            </div>
                        </form:form>
                    </li>
                </sec:authorize>
                <li class="nav-item">
                <nav id="flags" style="width: auto; margin-top: 3px; margin-left: 35px">
                    <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=ru" style="padding: 0 1px 0 1px"><img style="height: 15px" src="resources/img/elements/f1.jpg" alt="по-русски"></a>
                    <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=en" style="padding: 0 1px 0 1px"><img style="height: 15px" src="resources/img/elements/f3.jpg" alt="English"></a>
                    <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=de" style="padding: 0 1px 0 1px"><img style="height: 15px" src="resources/img/elements/f4.jpg" alt="Deutch"></a>
                    <a href="${requestScope['javax.servlet.forward.request_uri']}?lang=sr" style="padding: 0 1px 0 1px"><img style="height: 15px" src="resources/img/elements/f2.jpg" alt="Srpski"></a>
                </nav>
                </li>
            </ul>
        </div>

    </div>
</nav>
<script type="text/javascript">
    var localeCode = "${pageContext.response.locale}";
</script>