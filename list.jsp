<%@ page import="java.sql.*"%>
<html>
<head>
<title>User Details</title>
</head>
<body>

<h2>User Details</h2>

<%
try {
    Class.forName("org.postgresql.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:postgresql://localhost:5432/task",
        "postgres",
        "root"
    );

    String query = "SELECT * FROM STUDENT";
    PreparedStatement pst = conn.prepareStatement(query);
    ResultSet rs = pst.executeQuery();
%>

<table border="1" cellpadding="5">
    <tr>
        <th>SID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Address</th>
        <th>STD</th>
    </tr>

    <%
    while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt("sid") %></td>
        <td><%= rs.getString("name") %></td>
        <td><%= rs.getString("email") %></td>
        <td><%= rs.getLong("phone") %></td>
        <td><%= rs.getString("address") %></td>
        <td><%= rs.getInt("std") %></td>
    </tr>
    <%
    }
} catch (Exception e) {
    e.printStackTrace();
}
%>
</table>

</body>
</html>

</html>
