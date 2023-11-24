<%-- 
    Document   : homr
    Created on : 15-10-2023, 08:44:51
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/style1.css"/>
        <link rel="stylesheet" href="css/style2.css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">


    </head>
    <body>


        <div class="header" style="background-image:url(image/h-8.jpg);">
            <div class="pagewrap">
                <div class="logo_top">
                    <li>
                        <a href="home" title="logo"><img src="image/309049171_617832116693537_7802717767721135889_n.jpg" alt="logo"></a></li>
                    <ul>
                        <h1>Vườn Hoa Hải Hoàng</h1>
                        <h2><span>Vườn cây hoa</span> trang trí cho căn nhà </h2>

                    </ul>
                </div>
                <div class="text-end pe-4 me-4 border-end border-dark search-btn">
                    <div class="search-form">
                        <form method="post" action="search">
                            <div class="form-group">
                                <div class="d-flex">
                                    <input type="text" style="font-size: 1rem;" class="form-control border-0 rounded-pill" name="txt" value="${searchvalue}" placeholder="Search Here" required="">
                                    <button type="submit" value="Search Now!" class="btn">
                                        <i class="fa fa-search text-dark"><img src="image/icon-search.png" alt="alt"/></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <div style="display: flex;">
                    <c:if test="${sessionScope.name==null}">

                        <a style="color: black; margin-left:  150px;text-decoration: inherit;border-style: groove; "href="register.jsp">Đăng ký</a>
                        <a style="color: black; margin-right: 200px;text-decoration: inherit;border-style: groove;" href="login.jsp">Đăng nhập</a>
                    </c:if>
                    <c:if test="${sessionScope.name!=null}">
                        <a style="color: black; margin-left:  150px;text-decoration: inherit;border-style: groove; "href="logout">Thoát</a>
                        <h3>Wellcome ${sessionScope.name.lastName}</h3>
                    </c:if>
                </div>
            </div>

        </div>

        <div id="menu_box" >
            <div class="pagewrap" style="display: flex;">
                <ul id="menu" style="margin-left: 150px;">

                    <li class="show "><a href="home" title="Trang chủ">Trang chủ</a></li>



                    <li class="show "><a icons="›" title="Sản Phẩm" style="cursor:default;">Sản Phẩm</a>

                        <form action="home" method="post">
                            <ul>
                                <c:forEach items="${listT}" var="t">
                                    <li><a href="type?typeID=${t.typeID}" icons="›">${t.name}</a></li>       
                                    </c:forEach>
                            </ul>   
                        </form>
                    </li>

                    <li class="show "><a icons="›" title="Kỹ thuật trồng" style="cursor:default;">Kỹ thuật trồng</a>
                        <ul><li><a href="" icons="›">Hướng dẫn gieo trồng</a></li><li><a href="" icons="›">Dinh dưỡng cây trồng</a></li></ul></li>

                    <li class="show ">
                        <a href="lienhe" icons="›" title="Liên hệ">Liên hệ</a>
                    </li>
                    <c:if test="${sessionScope.name.isAdmin==0 && sessionScope.name.isSell==0}">
                        <c:set var="size" value="${sessionScope.size}"/>
                        <li class="show ">
                            <a href="cart.jsp"  title="Đặt hàng">Đặt Hàng(${size})</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.name.isAdmin==1}">
                        <li class="show ">
                            <a href="managerUser"  title="">Quản trị</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.name.isSell==1}">
                        <li class="show ">
                            <a href="manager"  title="">Quản lý sản phẩm</a>
                        </li>
                    </c:if>
                </ul>
                <div class="clr"></div>
            </div>


        </div>

        <div class="bannerMain">


            <img src="image/318555050_133775472841455_1358442034130724765_n.jpg" alt="alt" >
            <div class="pagewrap">
                <div class="box_title_banner">
                    <ul>
                        <h2>DẠ YÊN THẢO</h2>
                        <p>
                            <span style="font-size:14px;">Cây khỏe, sai hoa, màu sắc đa dạng</span></p>
                        <p>
                            <span style="font-size:14px;">Dòng hạt F1 cho năng suất cao</span></p>
                        <p>
                            <span style="font-size:14px;">Có nhiều sự lựa chọn cho từng mục đích khác nhau</span></p>          </ul>
                </div>
            </div>
        </div>




        <div class="conten">
            <div class="conten"><article><section><div class="gioithieu_home">
                            <div class="pagewrap">
                                <div class="gioithieu_home_id">
                                    <li>
                                        <img src="image/318840065_133775412841461_1550456133701032360_n.jpg" alt="giới thiệu" title="giới thiệu"></li>
                                    <ul>

                                        <h4>Giới thiệu Vườn Hoa Hải Hoàng</h4>
                                        <h2>
                                            Bán buôn, bản lẻ cây hoa trang trí trong các dịp lễ tết.</h2>
                                        <p>
                                            Được thành lập vào năm 2003, Vườn Hoa Hải Hoàng hiện đang được biết đến là một trong những nhà trồng cây hoa uy tín và chất lượng trong xã An Khánh. Hạt giống được lấy từ Công ty có văn phòng chính tại TP. Hồ Chí Minh - Công ty TNHH Hạt Giống Hoa Việt Nam – FVN đảm bảo chất lượng. Vườn hoa được đặt tại xã An Khánh, có bán sỉ lẻ, vận chuyển và đóng gói được khắp các khu chợ cây tại Hà Nội...
                                        </p>        <a href="gioithieu"><h3>XEM THÊM</h3></a>
                                        <div class="clr"></div>
                                    </ul>
                                    <div class="clr"></div>
                                </div>
                            </div>
                        </div>
                        <div class="page_home_sp" >
                            <div class="pagewrap">
                                <div class="product_home">
                                    <h3>sản phẩm nổi bật</h3>


                                    <div class="text-end pe-4 me-4 border-end border-dark search-btn">
                                        <div class="search-form">

                                            <form method="post" action="search">
                                                <label>
                                                    Sort By:
                                                    <select class="input-select" name="sortID">
                                                        <option value="0">Price Max to Min</option>
                                                        <option value="1">Price Min to Max</option>
                                                        <option value="2">All</option>
                                                    </select>
                                                </label>
                                                <select name="did" > 

                                                    <option value="0">-----All Type--------</option>
                                                    <c:forEach items="${listT}" var="t">
                                                        <option  value="${t.typeID}">${t.name}</option>
                                                    </c:forEach>  
                                                        
                                                </select>
                                                <div>
                                                    ProductID:<input type="text" name="ProductID" value=""/> <br/>
                                                    Name: <input type="text" name="ProductID" value=""/> <br/>
                                                </div>
                                                <input type="submit" value="Search"/>
                                            </form>
                                        </div>
                                    </div>
                                    <form name="f" action="" method="post">

                                        <c:forEach items="${requestScope.listpage}" var="o">
                                            <ul> 
                                                <a href="detail?productID=${o.productID}">
                                                    <li><img src=${o.image} alt="image" style="width: 100%"/></li>
                                                    <h2>${o.name}</h2>
                                                </a>

                                                <h2>${o.listPrice}$</h2>

                                                <td><input type="submit" class="btn btn-dark" style="margin-left: 4rem;" onclick="buy('${o.productID}')" value="Add to Cart"></td>


                                            </ul>
                                        </c:forEach>  

                                    </form>

                                </div>

                            </div>
                    </section>
                </article>

                <div class="clr"></div>
                <div>
                    <div class="hint-text">Showing <b>${requestScope.numberpage}</b> out of <b>${requestScope.size}</b> entries</div>
                    <div class="hint-text">Page ${requestScope.page}</div>
                    <ul class="pagination" style="height: 50px; display: inline-flex;">
                        <c:set var="page" value="${requestScope}"/>
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">

                            <li class="page-item"><a href="home?page=${i}" class="page-link" style="color: black;">${i}</a></li>                                          

                        </c:forEach>

                    </ul>
                </div>
            </div>
            <div class="clr"></div>

        </div>

        <div class="footer_top">
            <div class="pagewrap">

                <ul class="ketnoi">
                    <h2>kết nối với chúng tôi</h2>
                    <div class="sharelink"> <a href="https://www.facebook.com/vuonhoacaycanhHaiHoang/" target="_blank" class="addthis_button_facebook"><img src="image/facebook.png" title="facebook" alt="facebook" border="0"></a> 

                    </div>
                </ul>
                <div class="clr"></div>
            </div>
        </div>
        <div class="footer_bottom">
            <div class="pagewrap">
                <ul>
                    <h2>Vườn Hoa cây cảnh Hải Hoàng</h2>
                    <p>
                        Địa chỉ: Thôn Vân Lũng, An Khánh, Hoài Đức, Hà Nội.</p>
                    <p>
                        Điện thoại: +84 93 440 80 20&nbsp;</p>

                </ul>
            </div>
        </div>
        <div id="back-top" style="display: none;"><a href="#top">TOP</a></div>






    </body>
</html>
<script type="text/javascript">
    function buy(productID) {
        document.f.action = "buy?productID=" + productID;
        document.f.submit();
    }
</script>
