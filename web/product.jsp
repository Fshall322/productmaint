<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ax" uri="/WEB-INF/tlds/Asterisk.tld" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Product Maintenance</title>
        <link rel="stylesheet" href="<c:url value='/styles/main.css'/> ">
    </head>
    <body>
        <h1>Product</h1>
        <p><i>${message}</i></p>
        
            <input type="hidden" name="action" value="updateProduct">
            
            <label class="pad_top">Code:</label>
            <input type="text" name="productCode" id="codeBox"
                   value="${product.code}"><br>

            <label class="pad_top">Description:</label>
            <input type="text" name="description" 
                   value="${product.description}"><ax: field="${product.description}"/><br>

            <label class="pad_top">Price:</label>
            <input type="text" name="price" id="priceBox"
                   value="${product.priceNumberFormat}"><br>

            <label class="pad_top">&nbsp;</label>
            <input type="submit" value="Update Product" class="margin_left">

        <form action="<c:url value='/productMaint'/>" 
              method="get" class="inline">
            <input type="hidden" name="action" value="displayProducts">
            <input type="submit" value="View Products">
        </form>
    </body>
</html>