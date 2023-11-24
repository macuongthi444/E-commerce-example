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
        <section class="h-100 bg-light">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card card-registration my-4">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="image/25be95eb1eddc98390cc.jpg"
                                         alt="Sample photo" class="img-fluid"
                                         style="border-top-left-radius: 5.25rem; border-bottom-left-radius: 5.25rem;width: 80%;" />
                                </div>
                                <div class="col-xl-6">
                                    <form action="register" method="post">
                                        <div class="card-body p-md-5 text-black">
                                            <h3 class="mb-5 text-uppercase">Student registration form</h3>
                                            <div class="form-outline mb-4">
                                                <input type="text" name="personID" id="form3Example8" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">PersonID</label>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" name="fname" id="form3Example1m" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1m">First name</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input type="text" name="lname" id="form3Example1n" class="form-control form-control-lg" />
                                                        <label class="form-label" for="form3Example1n">Last name</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-outline mb-4">
                                                <input type="text" name="loginID" id="form3Example8" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example8">LoginID</label>
                                            </div>


                                            <div class="form-outline mb-4">
                                                <input type="password" name="password" id="form3Example9" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example9">Password</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="password" name="repassword" id="form3Example90" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example90">Reset Password</label>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <input type="date" name="dob" id="form3Example99" class="form-control form-control-lg" />
                                                <label class="form-label" for="form3Example99">Birth Date</label>
                                            </div>
                                            <div class="d-flex justify-content-end pt-3">
                                                <button type="button" class="btn btn-light btn-lg"><a href="login.jsp">Back</a></button>
                                                <button type="submit" class="btn btn-warning btn-lg ms-2">Submit form</button>
                                            </div>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
