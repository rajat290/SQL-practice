1. How to connect PHP to MySQL

To integrate PHP with MySQL, you would typically design a database structure in SQL with tables that store the necessary data for your application, then use PHP code to connect to the database, execute queries to retrieve or manipulate data, and display the results on a webpage; essentially, PHP acts as the bridge between the user interface and the MySQL database, allowing dynamic content generation based on the stored data

Key elements of a basic PHP-MySQL database design:
Database Connection:
Using PHP functions like mysqli_connect or 
PDO (PHP Data Objects) to establish a connection to the MySQL server.

-- Connecting to MySQL Database Using PDO

try {
    $pdo = new PDO("mysql:host=localhost;dbname=school", "root", "");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully!";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

