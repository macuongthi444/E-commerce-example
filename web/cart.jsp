<%-- 
    Document   : cart
    Created on : 26-10-2023, 10:20:57
    Author     : hoang
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="image/309049171_617832116693537_7802717767721135889_n.jpg"/>
        <title>Vườn Hoa Hải Hoàng</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="cart.jsp">Product Cart</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <c:if test="${sessionScope.name!=null}">
                            <h3>Wellcome ${sessionScope.name.lastName}   </h3>
                            <h3>||</h3>
                            <h3>Amount ${sessionScope.name.amount}</h3>
                            <li class="nav-item"><a class="nav-link" href="home">Home</a></li>


                            <li class="nav-item"><a class="nav-link" href="login.jsp">Logout</a></li>
                            </c:if>
                            <c:if test="${sessionScope.name==null}">
                            <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                            </c:if>

                        

                    </ul>
                </div>
            </div>
        </nav>
        <div class="container my-3">
            <div class="d-flex py-3"><h3>Total Price: $  </h3> </div>
            <form action="checkout" method="post"> <input type="submit" value="Check Out"></form>        
            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">ProductID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                        
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="o" value="${sessionScope.cart}"/>
                    <c:set var="t" value="0"/>
                    <c:forEach items="${o.items}" var="i">
                        <c:set var="t" value="${t+1}"/>
                        <tr>
                            <td>${t}</td>
                            <td>${i.product.name}</td>
                            <td><img src="${i.product.image}" alt="alt"/></td>
                            
                            <td><fmt:formatNumber pattern="##.#" value="${i.price}"/></td>
                            


                            <td><a href="chua dc ?productID=${i.product.productID}" class="btn btn-sm btn-danger">Remove</a></td>
                        </tr>
                    </c:forEach>

                </tbody>
            </table>
        </div>


    </body>
</html>
