<%-- 
    Document   : update
    Created on : 25-10-2023, 21:47:44
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
          <link rel="stylesheet" href="css/style2.css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet" href="css/style.css"/>

        <style>
            img{
                width: 100%;
                height: 100%;
            }
        </style>
        </head>
    <body>
        
         <!-- Edit Modal HTML -->
       
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="update" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Update Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>ProductID</label>
                                <input value="${detail.productID}" name="productIdUpade" type="text" class="form-control" readonly required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input value="${detail.name}" name="nameUpade" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <img src="${detail.image}" alt="alt"/>
                                <input value="${detail.image}" name="nameUpade" type="text" class="form-control" required>
                                <input  name="imageUpade" value="chon tep" type="file" class="form-control"  placeholder="sdf">
                                
                            </div>
                            
                            <div class="form-group">
                                <label>ListPrice</label>
                                <input value="${detail.listPrice}" name="listPriceUpade" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <input value="${detail.sellStartDate}" name="dateUpade" type="date" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="descriptionUpdate" class="form-control" required>${detail.description}</textarea>
                            </div>
                            <div class="form-group">
                                <label>quantity</label>
                                <input value="${detail.quantity}" name="quantityUpade" type="text" class="form-control" required>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        
    </body>
</html>
