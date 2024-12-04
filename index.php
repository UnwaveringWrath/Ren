

<?php
    
    $servername = "localhost";
    $username = "root"; 
    $password = ""; 
    $dbname = "ren"; 

    
    $conn = new mysqli($servername, $username, $password, $dbname);

    
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get the current month number (1-12)
    $currentMonth = date('n');

    
    $sql = "SELECT FlowerName, Flowerpic, Fdescription FROM monthlyflower WHERE MonthName = MONTHNAME(CURRENT_DATE)";
    $result = $conn->query($sql);

    $flower = null;

    if ($result->num_rows > 0) {
        
        $flower = $result->fetch_assoc();
    } else {
        echo "No flower found for the current month.";
    }
    ?>

    