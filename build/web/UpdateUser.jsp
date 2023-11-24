<%-- 
    Document   : UpdateUser
    Created on : 06-11-2023, 21:26:51
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
        <link rel="stylesheet" href="css/style3.css"/>
    </head>
    <body>
        <div class="modal fade show" id="modal-report" tabindex="-1" aria-labelledby="myExtraLargeModalLabel" style="display: block;" aria-modal="true" role="dialog">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">User Update</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="LoadPerson" >
                            <div class="row">
                                <div class="col-12">
                                    <h5>Personal Information</h5>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label" for="Name">PersonID</label>
                                        <input name="personID" value="${detailp.personID}" type="text" class="form-control"  placeholder="">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group fill">
                                        <label class="form-label" for="Email">FirstName</label>
                                        <input name="firstName" value="${detailp.firstName}" type="text" class="form-control"  placeholder="">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group fill">
                                        <label class="form-label" for="Password">LastName</label>
                                        <input name="lastName" value="${detailp.lastName}" type="text" class="form-control"  placeholder="">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label" for="Rollno">LoginID</label>
                                        <input name="loginID" value="${detailp.loginID}" type="text" class="form-control"  placeholder="">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label" for="Rollno">Password</label>
                                        <input name="password" value="${detailp.password}" type="text" class="form-control"  placeholder="">
                                    </div>
                                </div> 
                                <div class="col-sm-6">
                                    <div class="form-group fill">
                                        <label class="form-label" for="Birth">BirthDate</label>
                                        <input name="birthDate" value="${detailp.birthDate}" type="date" class="form-control"  placeholder="123">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label class="form-label" for="Age">Amount</label>
                                        <input name="amount" value="${detailp.amount}" type="text" class="form-control"  placeholder="">
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" for="Age">isSell</label>
                                            <input name="isSell" value="${detailp.isSell}" type="text" class="form-control"  placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label class="form-label" for="Age">isAdmin</label>
                                            <input name="isAdmin" value="${detailp.isAdmin}" type="text" class="form-control"  placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-sm-12">
                                        <button class="btn btn-primary">Submit</button>
                                        <button class="btn btn-danger">Clear</button>
                                    </div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
    </body>
</html>
