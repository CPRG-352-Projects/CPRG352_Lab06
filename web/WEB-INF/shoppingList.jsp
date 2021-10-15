<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />

        <!-- Bootstrap CSS -->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>Shopping List Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Shopping List</h1>
            <br />
            <h3>Welcome ${username}</h3>
            <br />
            <form method="POST" action="shoppingList">
                <button class="btn btn-warning" type="submit">Logout</button>
                <input type="hidden" name="action" value="logout" />
            </form>
            <br>
            <h2>Add Item</h2>

            <form method="POST" action="shoppingList">
                <div class="mb-3">
                    <label for="item" class="form-label">Item name</label>
                    <input type="text" class="form-control" id="item" name="item" />
                </div>
                <div class="d-grid gap-2 col-6 mx-auto">
                    <button class="btn btn-primary" type="submit">Add</button>
                    <input type="hidden" name="action" value="addItem" />
                </div>
            </form>
            <br>
            <form method="POST" action="">
                <c:forEach var="items" items="${itemList}">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="selectedItem" value="${items}">
                        <label class="form-check-label" for="${items}">
                            <h5>${items}</h5>
                        </label>
                    </div>
                </c:forEach>
                <c:if test="${itemList.size() > 0}">
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-danger" type="submit">Delete</button>
                        <input type="hidden" name="action" value="delete" />
                    </div>
                    <br />
                </c:if>
            </form>
        </div>

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
