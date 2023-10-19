
<?php
session_start();

// Check if the user is logged in (you should have authentication in place)
if (!isset($_SESSION["user_id"])) {
    // Redirect to the login page if the user is not logged in
    header("Location: login.php");
    exit();
}

// Assuming you have the user's ID, retrieve information from both tables
$user_id = $_SESSION["user_id"];

// Database connection parameters
$host = "localhost";
$username = "root";
$password = "";
$dbname = "apprentice";

// Create a database connection
$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to select data from both tables
$sql = "SELECT u.first_name, u.last_name, u.email, u.profession, ud.phone_number, ud.age, ud.location, ud.gender, ud.bio, ud.profile_photo
        FROM users u
        LEFT JOIN user_details ud ON u.id = ud.user_id
        WHERE u.id = $user_id";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();

    // Retrieve and store data in variables
    $first_name = $row["first_name"];
    $last_name = $row["last_name"];
    $email = $row["email"];
    $profession = $row["profession"];
    $phone_number = $row["phone_number"];
    $age = $row["age"];
    $location = $row["location"];
    $gender = $row["gender"];
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
    <link rel="stylesheet" href="../css/profileStyle.css">
    <title>Profile</title>
</head>
</head>
<body>
    <h1>Profile Information</h1>

    <!-- Display user information -->
    <p>Name: <?php echo $first_name . ' ' . $last_name; ?></p>
    <p>Email: <?php echo $email; ?></p>
    <p>Profession: <?php echo $profession; ?></p>
    <p>Phone Number: <?php echo $phone_number; ?></p>
    <p>Age: <?php echo $age; ?></p>
    <p>Location: <?php echo $location; ?></p>
    <p>Gender: <?php echo $gender; ?></p>

    <!-- You can add more HTML for user interactions or editing here -->
</body>
</html>

<body>
    <div class="navbar">
        <a href="mentors.php"><i class="fa fa-fw fa-home"></i> Home</a>
        <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
        <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
        <a href="profile.php" class="active"><i class="fa fa-fw fa-user"></i> Profile </a>
    </div>
    <!-- profile card -->
    <div class="profile-info">
        <div class="card">
            <?php if (isset($profile_photo)): ?>
                <img src="<?php echo $profile_photo; ?>" alt="Profile Photo">
            <?php endif; ?>
            <?php if (isset($first_name) && isset($last_name)): ?>
                <h2 id="name"> Howdy <?php echo $first_name; ?></h2>
            <?php endif; ?>
            <?php if (isset($email)): ?>
                <p id="email"><?php echo $email; ?></p>
            <?php endif; ?>
            <?php if (isset($bio)): ?>
                <p id="bio"><?php echo $bio; ?></p>
            <?php endif; ?>
        </div>
    </div>
</body>