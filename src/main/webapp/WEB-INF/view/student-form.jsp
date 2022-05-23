<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>
    <title>Student Registration Form</title>
</head>

<body>

<form:form action="processForm" modelAttribute="student">

    First name: <form:input path="firstName"/>

    <br><br>

    Last name: <form:input path="lastName"/>


    <br><br>

    Country:
    <form:select path="country">

        <form:options items="${student.countryOptions}"></form:options>
        <%--        <form:option value="France" label="France"></form:option>--%>
        <%--        <form:option value="Germany" label="Germany"></form:option>--%>
        <%--        <form:option value="India" label="India"></form:option>--%>


    </form:select>

    <br><br>


    <br><br>


    Favorite Language:

    Java <form:radiobutton path="favoriteLanguage" value="Java"></form:radiobutton>
    C# <form:radiobutton path="favoriteLanguage" value="C#"></form:radiobutton>
    PHP <form:radiobutton path="favoriteLanguage" value="PHP"></form:radiobutton>
    Ruby <form:radiobutton path="favoriteLanguage" value="Ruby"></form:radiobutton>

    <br><br>
    Operating Systems:

    Linux <form:checkbox path="operatingSystems" value="Linux"/>
    Mac Os <form:checkbox path="operatingSystems" value="Mac Os"/>
    MS Windows <form:checkbox path="operatingSystems" value="MS Windows"/>


    <br><br>

    <input type="submit" value="Submit"/>

</form:form>


</body>

</html>












