
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ERC</title>
        <meta name="description" content="Fashion Ecommerce Responsive HTML Template.">
        <meta name="keywords" content="HTML, CSS, JavaScript, jQuery, Animation, Bootstrap, Font Awesome, Revolution Slider, Fasion, Ecommerce, Shop, WooCommerce">
        <meta name="author" content="uiuxom">

        <!-- BEGIN: CSS -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/bootstrap.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/animate.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/fontawesome-all.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/lightcase.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/slick.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/nice-select.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/settings.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/ulina-icons.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/ignore_for_wp.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/preset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/theme.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/responsive.css">
        <!-- END: CSS -->

        <!-- BEGIN: Favicon -->
        <link rel="icon"  type="image/png" href="<%=request.getContextPath()%>/userResources/images/j1.jpg"> 
        <!-- END: Favicon -->
    </head>
    <body>
        

        <jsp:include page="header.jsp"></jsp:include>
        

        <!-- BEGIN: Page Banner Section -->
        <section class="pageBannerSection">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="pageBannerContent text-center">
                            <h2>Product Details</h2>
                            <div class="pageBannerPath">
                                <a href="index.html">Home</a>&nbsp;&nbsp;>&nbsp;&nbsp;<span>Shop</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END: Page Banner Section -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
        <!-- BEGIN: Shop Details Section -->
        <section class="shopDetailsPageSection">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="productGalleryWrap">
                            <div class="productGallery">
                               
                                <c:forEach items="${productFileList}" var="i" varStatus="j"> 
                                <div class="pgImage">
                                	
                                    <%-- <img src="<%=request.getContextPath()%>/userResources/images/product_details/1.jpg" alt="Product Image"/> --%>
                                    <img src="<%=request.getContextPath()%>/documents/productfile/${i.productFileName}" alt="Product Image"/>
                                </div>
                                </c:forEach>
                            </div>
                            <div class="productGalleryThumbWrap">
                                <div class="productGalleryThumb">
                                    
                                    
                                <c:forEach items="${productFileList}" var="i" varStatus="j"> 
                                <div class="pgImage">
                                	
                                    <%-- <img src="<%=request.getContextPath()%>/userResources/images/product_details/1.jpg" alt="Product Image"/> --%>
                                    <img src="<%=request.getContextPath()%>/documents/productfile/${i.productFileName}" alt="Product Image"/>
                                </div>
                                </c:forEach>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="productContent">
                            <div class="pcCategory">
                                <a href="shop_right_sidebar.html">${productVO.categoryVO.categoryName}</a>/ <a href="shop_left_sidebar.html">${productVO.subCategoryVO.subCategoryName}</a>
                            </div>
                            <h2>${productVO.productName}</h2>
                            <div class="pi01Price">
                                <ins>${productVO.productPrice}</ins>
                                <del>${productVO.productPrice + 1000}</del>
                                <span>INR</span>
                            </div>
                            <div class="productRadingsStock clearfix">
                                <!-- <div class="productRatings float-start">
                                    <div class="productRatingWrap">
                                        <div class="star-rating"><span></span></div>
                                    </div>
                                    <div class="ratingCounts">52 Reviews</div>
                                </div> -->
                            </div>
                                <div class="productStock float-end">
                                    <span>Available :${productVO.productQuantity}</span>
                                </div>
                            <div class="pcExcerpt">
                                ${productVO.productDescription}
                            </div>
                            <div class="pcVariations">
                                <div class="pcVariation">
                                    <span>Color</span>
                                    <div class="pcvContainer">
										${productVO.productColor}                                        
                                    </div>
                                </div>
                                <div class="pcVariation pcv2">
                                    <span>Size</span>
                                    <div class="pcvContainer">
                                        <div class="pswItem">
                                            <input checked="" type="radio" name="ws_1" value="S" id="ws_145gb_s">
                                            <label for="ws_145gb_s">${productVO.productSize}</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pcBtns">
                                
                                <a href="addToCart?id=${productVO.productId}">
                                	<button type="submit" class="ulinaBTN"><span>Add to Cart</span></button>
                                </a>
                                
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END: Shop Details Section -->

        <jsp:include page="footer.jsp"></jsp:include>

        

        <!-- BEGIN: Product QuickView  -->
        <div class="modal fade productQuickView" id="productQuickView" tabindex="-1" data-aria-labelledby="exampleModalLabel" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <button type="button" class="quickViewCloser" data-bs-dismiss="modal" aria-label="Close"><span></span></button>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="productGalleryWrap">
                                    <div class="productGalleryPopup">
                                        <div class="pgImage">
                                            <img src="<%=request.getContextPath()%>/userResources/images/product_details/p1.jpg" alt="Product Image"/>
                                        </div>
                                        <div class="pgImage">
                                            <img src="<%=request.getContextPath()%>/userResources/images/product_details/p2.jpg" alt="Product Image"/>
                                        </div>
                                        <div class="pgImage">
                                            <img src="<%=request.getContextPath()%>/userResources/images/product_details/p3.jpg" alt="Product Image"/>
                                        </div>
                                        <div class="pgImage">
                                            <img src="<%=request.getContextPath()%>/userResources/images/product_details/p4.jpg" alt="Product Image"/>
                                        </div>
                                        <div class="pgImage">
                                            <img src="<%=request.getContextPath()%>/userResources/images/product_details/p5.jpg" alt="Product Image"/>
                                        </div>
                                    </div>
                                    <div class="productGalleryThumbWrap">
                                        <div class="productGalleryThumbPopup">
                                            <div class="pgtImage">
                                                <img src="<%=request.getContextPath()%>/userResources/images/product_details/t1.jpg" alt="Product Image"/>
                                            </div>
                                            <div class="pgtImage">
                                                <img src="<%=request.getContextPath()%>/userResources/images/product_details/t2.jpg" alt="Product Image"/>
                                            </div>
                                            <div class="pgtImage">
                                                <img src="<%=request.getContextPath()%>/userResources/images/product_details/t3.jpg" alt="Product Image"/>
                                            </div>
                                            <div class="pgtImage">
                                                <img src="<%=request.getContextPath()%>/userResources/images/product_details/t4.jpg" alt="Product Image"/>
                                            </div>
                                            <div class="pgtImage">
                                                <img src="<%=request.getContextPath()%>/userResources/images/product_details/t5.jpg" alt="Product Image"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="productContent">
                                    <div class="pcCategory">
                                        <a href="shop_right_sidebar.html">Fashion</a>, <a href="shop_left_sidebar.html">Sports</a>
                                    </div>
                                    <h2><a href="shop_details1.html">Ulina luxurious shirt for men</a></h2>
                                    <div class="pi01Price">
                                        <ins>$108</ins>
                                        <del>$120</del>
                                    </div>
                                    <div class="productRadingsStock clearfix">
                                        <!-- <div class="productRatings float-start">
                                            <div class="productRatingWrap">
                                                <div class="star-rating"><span></span></div>
                                            </div>
                                            <div class="ratingCounts">52 Reviews</div>
                                        </div> -->
                                        <div class="productStock float-end">
                                            <span>Available :</span> 12
                                        </div>
                                    </div>
                                    <div class="pcExcerpt">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusncididunt ut labo re et dolore magna aliqua. Ut enim ad minim 
                                        veniam
                                    </div>
                                    <div class="pcVariations">
                                        <div class="pcVariation">
                                            <span>Color</span>
                                            <div class="pcvContainer">
                                                <div class="pi01VCItem">
                                                    <input checked type="radio" name="color_4_6" value="Blue" id="color_4_6_1_blue"/>
                                                    <label for="color_4_6_1_blue"></label>
                                                </div>
                                                <div class="pi01VCItem yellows">
                                                    <input type="radio" name="color_4_6" value="Yellow" id="color_4_6_2_blue"/>
                                                    <label for="color_4_6_2_blue"></label>
                                                </div>
                                                <div class="pi01VCItem reds">
                                                    <input type="radio" name="color_4_6" value="Red" id="color_4_6_3_blue"/>
                                                    <label for="color_4_6_3_blue"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pcVariation pcv2">
                                            <span>Size</span>
                                            <div class="pcvContainer">
                                                <div class="pswItem">
                                                    <input checked="" type="radio" name="ws_1" value="S" id="ws_1_s">
                                                    <label for="ws_1_s">S</label>
                                                </div>
                                                <div class="pswItem">
                                                    <input type="radio" name="ws_1" value="M" id="ws_1_m">
                                                    <label for="ws_1_m">M</label>
                                                </div>
                                                <div class="pswItem">
                                                    <input type="radio" name="ws_1" value="L" id="ws_1_l">
                                                    <label for="ws_1_l">L</label>
                                                </div>
                                                <div class="pswItem">
                                                    <input type="radio" name="ws_1" value="XL" id="ws_1_xl">
                                                    <label for="ws_1_xl">XL</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="pcBtns">
                                        <div class="quantity clearfix">
                                            <button type="button" name="btnMinus" class="qtyBtn btnMinus">_</button>
                                            <input type="number" class="carqty input-text qty text" name="quantity" value="01">
                                            <button type="button" name="btnPlus" class="qtyBtn btnPlus">+</button>
                                        </div>
                                        <button type="submit" class="ulinaBTN"><span>Add to Cart</span></button>
                                    </div>
                                    <div class="pcMeta">
                                        <p>
                                            <span>Sku</span>
                                            <a href="javascript:void(0);">3489 JE0765</a>
                                        </p>
                                        <p class="pcmTags">
                                            <span>Tags:</span>
                                            <a href="javascript:void(0);">Fashion</a>, <a href="javascript:void(0);">Bags</a>, <a href="javascript:void(0);">Girls</a>
                                        </p>
                                        <p class="pcmSocial">
                                            <span>Share</span>
                                            <a class="fac" href="javascript:void(0);"><i class="fa-brands fa-facebook-f"></i></a>
                                            <a class="twi" href="javascript:void(0);"><i class="fa-brands fa-twitter"></i></a>
                                            <a class="lin" href="javascript:void(0);"><i class="fa-brands fa-linkedin-in"></i></a>
                                            <a class="ins" href="javascript:void(0);"><i class="fa-brands fa-instagram"></i></a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: Product QuickView -->

        <!-- BEGIN: JS -->
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery-ui.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/shuffle.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/owl.carousel.filter.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.appear.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/lightcase.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.nice-select.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/slick.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.plugin.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.countdown.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/circle-progress.js"></script>
        
        <script src="<%=request.getContextPath()%>/userResources/js/gmaps.js"></script>
        <script src="https://maps.google.com/maps/api/js?key=AIzaSyCA_EDGVQleQtHIp2fZ-V56QFRbRL8cXT8"></script>

        <script src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.tools.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/jquery.themepunch.revolution.min.js"></script>

        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.actions.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.carousel.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.kenburn.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.layeranimation.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.migration.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.navigation.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.parallax.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.slideanims.min.js"></script>
        <script src="<%=request.getContextPath()%>/userResources/js/revolution.extension.video.min.js"></script>

        <script src="<%=request.getContextPath()%>/userResources/js/theme.js"></script>
        <!-- END: JS -->
    </body>
</html>