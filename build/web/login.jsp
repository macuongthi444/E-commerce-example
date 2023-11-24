<%-- 
    Document   : login
    Created on : 21-10-2023, 22:16:35
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/font.css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
    </head>
    <body>
        <section class="h-100 gradient-form" style="background-color: #eee;">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-xl-10">
                        <div class="card rounded-3 text-black">
                            <div class="row g-0">
                                <div class="col-lg-6">
                                    <div class="card-body p-md-5 mx-md-4">

                                        <div class="text-center">
                                            <img src="image/b5686b20e01637486e07.jpg"
                                                 style="width: 200px;" alt="logo">
                                            <h4 class="mt-1 mb-5 pb-1">Vườn Hoa Hải Hoàng</h4>
                                        </div>

                                        <form action="login" method="post">
                                            <div class="alert alert-danger" role="alert">${requestScope.error}</div>

                                            <div class="form-outline mb-4">
                                                <input style="font-size: 1rem" type="text" name="loginID" id="form2Example11" class="form-control"
                                                       placeholder="Tài khoản đăng nhập" />
                                                <label class="form-label" for="form2Example11">Người dùng</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input style="font-size: 1rem" type="password" name="password" id="form2Example22" class="form-control" />
                                                <label class="form-label" for="form2Example22">Mật khẩu</label>
                                            </div>

                                            <div class="text-center pt-1 mb-5 pb-1">

                                                <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">ĐĂNG NHẬP</button>




                                                <a class="text-muted" href="#!">QUÊN MẬT KHẨU?</a>
                                            </div>

                                            <div class="d-flex align-items-center justify-content-center pb-4">
                                                <p class="mb-0 me-2">BẠN KHÔNG CÓ TÀI KHOẢN?</p>
                                                <button  type="submit" class="btn btn-outline-danger"><a href="register.jsp" style="color: black;">TẠO TÀI KHOẢN</a></button>
                                            </div>
                                            <button type="button" class="btn btn-light btn-lg"><a href="home">Back</a></button>
                                        </form>

                                    </div>
                                </div>
                                <div class="col-lg-6 d-flex align-items-center gradient-custom-2">

                                    <img src="image/3d5a1d7dea493d176458.jpg"style="width:100%" alt="alt"/>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
