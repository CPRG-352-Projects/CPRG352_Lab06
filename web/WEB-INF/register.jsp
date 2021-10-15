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
    <title>Register Page</title>
  </head>
  <body>
    <div class="container">
      <h1>Shopping List</h1>

      <form method="POST" action="shoppingList">
        <div class="mb-3">
          <label for="userName" class="form-label">Name</label>
          <input
            type="text"
            class="form-control"
            id="userName"
            name="username"
          />
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
        <input type="hidden" name="action" value="register" />
      </form>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
