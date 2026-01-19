<html>
<head>
<title>Student Form Page</title>
</head>
<body>

    <h3 style="color:green;">
        ${message}
    </h3>

    <form action="displayus" method="post">

        <label for="sid">SID:</label>
        <input type="number" id="sid" name="sid"
               placeholder="Enter Student ID" required>
        <br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name"
               placeholder="Enter Full Name" required>
        <br><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email"
               placeholder="Enter Email Address" required>
        <br><br>

        <label for="phone">Phone:</label>
        <input type="number" id="phone" name="phone"
               placeholder="Enter Phone Number" required>
        <br><br>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address"
               placeholder="Enter Address" required>
        <br><br>

        <label for="std">STD:</label>
        <input type="number" id="std" name="std"
               placeholder="Enter Standard" required>
        <br><br>

        <button type="submit">Submit</button>
    </form>

</body>
</html>
