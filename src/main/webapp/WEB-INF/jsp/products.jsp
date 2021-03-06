<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<fmt:setLocale value="${sessionScope.language}"/>
<fmt:setBundle basename="localization" var="loc"/>
<fmt:message bundle="${loc}" key="title_our_products" var="title"/>
<%--<fmt:message bundle="${loc}" key="" var=""/>--%>
<html>
<head>
    <title>${title}</title>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/jsp/header.jsp"/>
<!-- Page Content -->
<div class="page-heading products-heading header-text">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="text-content">
                    <h4>new arrivals</h4>
                    <h2>sixteen products</h2>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="products">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="filters">
                    <ul>
                        <li class="active" data-filter="*">All Products</li>
                        <li data-filter=".des">Featured</li>
                        <li data-filter=".dev">Flash Deals</li>
                        <li data-filter=".gra">Last Minute</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-12">
                <div class="filters-content">
                    <div class="row grid">
                        <div class="col-lg-4 col-md-4 all des">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_01.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$18.25</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (12)</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 all dev">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_02.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$16.75</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (24)</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 all gra">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_03.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$32.50</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (36)</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 all gra">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_04.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$24.60</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (48)</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 all dev">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_05.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$18.75</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (60)</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 all des">
                            <div class="product-item">
                                <a href="#"><img alt="" src="../../assets/images/product_06.jpg"></a>
                                <div class="down-content">
                                    <a href="#"><h4>Tittle goes here</h4></a>
                                    <h6>$12.50</h6>
                                    <p>Lorem ipsume dolor sit amet, adipisicing elite. Itaque, corporis nulla
                                        aspernatur.</p>
                                    <ul class="stars">
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                        <li><i class="fa fa-star"></i></li>
                                    </ul>
                                    <span>Reviews (72)</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <ul class="pages">
                    <li><a href="#">1</a></li>
                    <li class="active"><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<jsp:include page="${pageContext.request.contextPath}/WEB-INF/jsp/footer.jsp"/>
</body>
</html>
