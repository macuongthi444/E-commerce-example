<%-- 
    Document   : lienhe
    Created on : 27-10-2023, 22:45:35
    Author     : hoang
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/style1.css"/>
        <link rel="stylesheet" href="css/style2.css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
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

        <div id="menu_box">
           <div class="pagewrap" style="display: flex;">
                <ul id="menu" style="margin-left: 150px;">

                    <li class="show "><a href="home" title="Trang chủ">Trang chủ</a></li>



                    <li class="show "><a icons="›" title="Sản Phẩm" style="cursor:default;">Sản Phẩm</a>
                        <ul>
                            <c:forEach items="${listT}" var="t">
                                <li><a href="type?typeID=${t.typeID}" icons="›">${t.name}</a></li>       
                                </c:forEach>
                        </ul>   

                    </li>

                    <li class="show "><a icons="›" title="Kỹ thuật trồng" style="cursor:default;">Kỹ thuật trồng</a>
                        <ul><li><a href="" icons="›">Hướng dẫn gieo trồng</a></li><li><a href="" icons="›">Dinh dưỡng cây trồng</a></li></ul></li>

                    <li class="show ">
                        <a href="lienhe" icons="›" title="Liên hệ">Liên hệ</a>
                    </li>
                    <c:if test="${sessionScope.name.isAdmin==0 && sessionScope.name.isSell==0}">
                        <li class="show ">
                            <a href="cart.jsp"  title="Đặt hàng">Đặt Hàng</a>
                        </li>
                    </c:if>
                    <c:if test="${sessionScope.name.isAdmin==1}">
                        <li class="show ">
                            <a href=""  title="">Quản trị</a>
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
            <div class="conten"><article><section>
                        <div class="pagewrap load_conten">

                            <div class="left_conten">                              
                                <div class="box_right_conten sp_noibat">
                                    <div class="title_page_right"> <span></span>
                                        <h2>sản phẩm nổi bật</h2>
                                    </div>
                                    <div class="boder_right">
                                        <div class="marquee" style="height: 400px;"><div class="js-marquee-wrapper" style="margin-top: 0px; animation: 21.7075s linear 0s infinite normal none running marqueeAnimation-8575321;"><div class="js-marquee" style="margin-right: 0px; float: none; margin-bottom: 0px;">
                                                    <div class="product_left">
                                                        <ul>
                                                            <c:forEach items="${listNoiBat}" var="n">
                                                                <a href="detail?productID=${n.productID}">
                                                                    <li><img src="${n.image}" alt="${n.name}"></li>
                                                                    <h2>${n.name}</h2>
                                                                </a>
                                                            </c:forEach>
                                                        </ul>

                                                        <div class="clr"></div>
                                                    </div>
                                                </div><style>@-webkit-keyframes marqueeAnimation-8575321  {
                                                        100%  {
                                                            margin-top:-514px
                                                        }
                                                    }</style></div></div>
                                        <script>$('.marquee').marquee({
                                                duration: 19000,
                                                gap: 0,
                                                delayBeforeStart: 0,
                                                direction: 'up',
                                                duplicated: true,
                                                startVisible: true
                                            });
                                        </script> 
                                    </div>
                                </div>

                            </div>


                            <div class="right_conten">
                                <div class="box_right_conten">
                                    <div class="title_page_home"> <span></span>
                                        
                                        <ul>
                                            <li> 
                                                <a href="home">Trang chủ</a> 
                                            </li>
                                        </ul>
                                        <div class="clr"></div>

                                    </div>
                                    <div class="page_padding">
                                        <div class="showText">

                                            <h2>Liên hệ</h2>
                                            <p font-size:="" open="" style="margin: 0px auto; outline: none; padding-bottom: 10px; color: rgb(0, 0, 0); font-family: "><strong>Vườn Hoa Hải Hoàng</strong></p>

                                            <p font-size:="" open="" style="margin: 0px auto; outline: none; padding-bottom: 10px; color: rgb(0, 0, 0); font-family: "><span style="color: rgb(34, 34, 34);"><strong>Facebook:</strong> <a href="https://www.facebook.com/vuonhoacaycanhHaiHoang/"/><img li src="image/Ảnh chụp màn hình 2023-10-28 084109.png" alt="alt"/></a></span></p>

                                            <p font-size:="" open="" style="margin: 0px auto; outline: none; padding-bottom: 10px; color: rgb(0, 0, 0);"><strong style="margin: 0px auto; outline: none;">Cơ sở làm việc:&nbsp;</strong><br style="margin: 0px auto; outline: none;">
                                                Địa chỉ: Thôn Vân Lũng, An Khánh, Hoài Đức, Hà Nội.<br>
                                                Điện thoại: +84 93 440 80 20&nbsp; &nbsp;<br>
                                                Email: </p>

                                           

                                        <div id="contact">
                                            <form action="lienhe" class="formBox" method="post" name="FormNameContact" id="FormNameContact">
                                                <input type="hidden" name="send_lienhe">
                                                <div class="left">
                                                    <li class="name">
                                                        <input name="s_fullname" id="s_fullname" type="text" placeholder="Họ và tên" >
                                                    </li>
                                                    <li class="phone">
                                                        <input name="s_dienthoai" id="s_dienthoai" type="text" placeholder="Số điện thoại" " >
                                                    </li>
                                                    <li class="mail">
                                                        <input name="s_email" id="s_email" type="text" placeholder="Email"  >
                                                    </li>
                                                    <li class="local">
                                                        <input name="s_address" id="s_address" type="text" placeholder="Địa chỉ"  >
                                                    </li>
                                                    <li class="subject">
                                                        <input name="s_title" id="s_title" type="text" placeholder="Tiêu đề"  >
                                                    </li>
                                                </div>
                                                <div class="right">
                                                    <li class="mess">
                                                        <textarea name="s_message" id="s_message" cols="" rows="" placeholder="Nội dung"  ></textarea>
                                                    </li>
                                                     <div class="alert alert-danger" role="alert">${requestScope.guiduoc}</div>
                                                  <input type="submit" class="btn btn-success" value="Gửi">
                                                </div>
                                                <div class="clr"></div>
                                              
                                            </form>
                                        </div>

                                        
                                        <div id="map">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d1809.3356868388978!2d105.71382605352792!3d21.004401587745807!3m2!1i1024!2i768!4f13.1!3m2!1m1!2s!5e0!3m2!1svi!2s!4v1698456531095!5m2!1svi!2s"  width="600" height="450" frameborder="0" style="border:0" allowfullscreen=""></iframe>
                                       </div>
                                    </div>
                                </div>
                                <div class="clr"></div>
                            </div>
                    </section></article><div class="clr"></div>
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



    </body>
</html>

