<div class="row">
    <div class="col-md-2">
        <h3>MaxWATECH</h3>
        <br>
        <?php
        if(isset($_SESSION['email'])){
            //echo "<h4>Hello " . $_SESSION['customer'] . "</h4>";

            $uid = $_SESSION['email'];

            //echo $uid;

            $adminsql = "SELECT firstname
                                FROM admin a
                                WHERE a.email='$uid'";
            $adminsqlr = mysqli_query($connection, $adminsql);
            if (mysqli_num_rows($adminsqlr) == 1) {
                $ad = mysqli_fetch_assoc($adminsqlr);
                echo "<h4>Hello " . $ad['firstname'] . "</h4>";
            }
            else{
                echo "no username of admin found";
            }
        }
        ?>
    </div>
    <div class="col-md-10">

        <style>
            /* Dropdown Button */
            .dropbtn {
                background-color: #2aaf9a;
                color: white;
                padding: 16px;
                font-size: 16px;
                border: none;
            }

            /* The container <div> - needed to position the dropdown content */
            .dropdown {
                position: relative;
                display: inline-block;
                margin:4px;
            }

            /* Dropdown Content (Hidden by Default) */
            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f1f1f1;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            /* Links inside the dropdown */
            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
            }

            /* Change color of dropdown links on hover */
            .dropdown-content a:hover {background-color: #ddd;}

            /* Show the dropdown menu on hover */
            .dropdown:hover .dropdown-content {display: block;}

            /* Change the background color of the dropdown button when the dropdown content is shown */
            .dropdown:hover .dropbtn {background-color: #2fd7c0;}

        </style>

        <div class="dropdown">
            <button class="dropbtn">
                <a style="color: white;" href="index.php">Dashboard</a>
            </button>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                Categories
            </button>
            <div class="dropdown-content">
                <ul>
                    <li><a href="categories.php">View Categories</a></li>
                    <li><a href="addcategory.php">Add Category</a></li></ul>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                Products
            </button>
            <div class="dropdown-content">
                <ul>
                    <li><a href="products.php">View Products</a></li>
                    <li><a href="addproduct.php">Add Product</a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                Orders
            </button>
            <div class="dropdown-content">
                <ul>
                    <li><a href="orders.php">View Orders</a></li>
                </ul>

            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                Customers
            </button>
            <div class="dropdown-content">
                <ul>
                    <li><a href="customers.php">View Customers</a></li>
                    <li><a href="reviews.php">View Reviews</a></li>
                </ul>
            </div>
        </div>

        <div class="dropdown">
            <button class="dropbtn">
                My Account
            </button>
            <div class="dropdown-content">
                <ul>
                    <li><a href="#">Edit Profile</a></li>
                </ul>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">
                <a style="color: white;" href="logout.php">Logout</a>
            </button>
        </div>
    </div>
</div>


		</div>
	</header>