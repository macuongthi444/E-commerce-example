<%-- 
    Document   : managerUser
    Created on : 06-11-2023, 18:15:23
    Author     : hoang
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 100%;
                height: 100%;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title" style="background-color: green;">
                    <div class="row" >
                        <div class="col-sm-6">
                            <h3>${sessionScope.name.lastName}</h3>
                            <h2><a href="home"><button type="button" class="btn btn-primary">Back to home</button></a></h2>

                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>


                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>User List </h5>
                    </div>
                    <div class="card-body">
                        <div class="row align-items-center m-l-0">
                            <div class="col-sm-6">
                            </div>

                        </div>
                        <div class="table-responsive">
                            <table id="report-table" class="table table-bordered table-striped mb-0">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>PersonID</th>
                                        <th>FirstName</th>
                                        <th>LastName</th>
                                        <th>LoginID</th>
                                        <th>Password</th>
                                        <th>Birth Date</th>
                                        <th>Amount</th>
                                        <th>isSell</th>
                                        <th>isAdmin</th>
                                        <th>Options</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.listpage1}" var="o">
                                        <tr>

                                            <td>
                                                <span class="custom-checkbox">
                                                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                                    <label for="checkbox1"></label>
                                                </span>
                                            </td>
                                            <td>${o.personID}</td>
                                            <td>${o.firstName}</td>
                                            <td>${o.lastName}</td>
                                            <td>${o.loginID}</td>
                                            <td>${o.password}</td>
                                            <td>${o.birthDate}</td>
                                            <td>${o.amount} $</td>
                                            <td>${o.isSell}</td>
                                            <td>${o.isAdmin}</td>
                                            <td>
                                                <a href="LoadPerson?personID=${o.personID}" class="btn btn-info btn-sm">Edit</a>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>${requestScope.numberpage}</b> out of <b>${requestScope.size}</b> entries </div>
                    <div class="hint-text">Page ${requestScope.page}</div>
                    <ul class="pagination" style="height: 50px;">
                        <c:set var="page" value="${requestScope}"/>
                        <c:forEach begin="${1}" end="${requestScope.num}" var="i">

                            <li class="page-item"><a href="managerUser?page=${i}" class="page-link" style="color: black;">${i}</a></li>                                          

                        </c:forEach>
                </div>



            </div>

        </a>
    </div>
    <!-- add Modal HTML -->
    <div id="addEmployeeModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="addPersons">
                    <div class="modal-header">						
                        <h4 class="modal-title">Add Account</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    
                    <div class="modal-body">	
                        <div class="form-group">
                            <label>PersonID</label>
                            <input name="personID" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>FirstName</label>
                            <input name="FirstName" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>LastName</label>
                            <input name="LastName" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>LoginID</label>
                            <input name="LoginID" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input name="Password" type="text" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Birth Date</label>
                            <input name="birthDate" type="date" class="form-control" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Amount</label>
                            <textarea name="Amount" type="text" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>isSell</label>
                            <textarea name="isSell" type="text" class="form-control" required></textarea>
                        </div>
                        <div class="form-group">
                            <label>isAdmin</label>
                            <textarea name="isAdmin" type="text" class="form-control" required></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                        <input type="submit" class="btn btn-success" value="addPerson">
                    </div>
                </form>
            </div>
        </div>
    </div>





    <script src="js/manager.js" type="text/javascript"></script>
</body>
</html>