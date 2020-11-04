


            <div class="container" style="">
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

                <div class="row">
                    <div class="col-md-3 col-xs-3">
                        <h3>MaxWATECH</h3>
                        <br>
                        <?php
                        if(isset($_SESSION['customer'])) {
                            //echo "<h4>Hello " . $_SESSION['customer'] . "</h4>";

                            $uid = $_SESSION['customerid'];

                            //echo $uid;

                            $csql = "SELECT u1.firstname, u1.lastname
                                FROM users u 
                                JOIN usersmeta u1 
                                WHERE u.id=u1.uid AND u.id=$uid";
                            $cres = mysqli_query($connection, $csql);
                            if (mysqli_num_rows($cres) == 1) {
                                $cr = mysqli_fetch_assoc($cres);
                                echo "<h4>Hello " . $cr['firstname'] . " " . $cr['lastname'] . "</h4>";
                            }
                        }
                        ?>

                    </div>
                    <div class="col-md-6 col-xs-8">

                        <div class="dropdown">
                            <button class="dropbtn">
                                <a style="color:white;" href="http://localhost/ecomphp/index.php">Home</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropbtn">
                                Shop
                            </button>
                            <div class="dropdown-content">
                                <ul>
                                    <?php
                                    $catsql = "SELECT * FROM category";
                                    $catres = mysqli_query($connection, $catsql);
                                    while($catr = mysqli_fetch_assoc($catres)){
                                        ?>
                                        <li><a href="index.php?id=<?php echo $catr['id']; ?>"><?php echo $catr['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>

                        <div class="dropdown">
                            <button class="dropbtn">
                                <a style="color: white;" href="http://localhost/ecomphp/cart.php">Cart</a>
                                <?php
                                    if(isset($_SESSION['cart'])){
                                        $cart = $_SESSION['cart'];
                                    }

                                    if(isset($cart)){
                                        echo '- '.count($cart);
                                    }
                                    if(!isset($cart)){
                                        echo '- 0';
                                    }
                                ?>
                            </button>
                        </div>

                        <?php
                            if(isset($_SESSION['customer'])) {
                                ?>
                                <div class="dropdown">
                                    <button class="dropbtn">
                                        My Account
                                    </button>
                                    <div class="dropdown-content">
                                        <ul>
                                            <li><a href="http://localhost/ecomphp/my-account.php">My Orders</a></li>
                                            <li><a href="http://localhost/ecomphp/my-info.php">My Info</a></li>
                                            <li><a href="http://localhost/ecomphp/edit-address.php">Update Info</a></li>

                                        </ul>
                                    </div>
                                </div>
                                <!--
                                <div class="dropdown">
                                    <button class="dropbtn">
                                        <a style="color:white;" href="http://localhost/ecomphp/cart.php">Cart</a>
                                    </button>
                                </div>
                                -->
                                <div class="dropdown">
                                    <button class="dropbtn">
                                        <a style="color: white;" href="http://localhost/ecomphp/logout.php">Logout</a>
                                    </button>
                                </div>

                                <?php
                            }
                        if(!isset($_SESSION['customer'])) {
                            ?>
                            <div class="dropdown">
                                <button class="dropbtn">
                                    <a style="color: white;" href="http://localhost/ecomphp/login.php">Login</a>
                                </button>
                            </div>

                            <?php
                        }
                        ?>

                    </div>
                    <div class="col-md-3 col-xs-3">
                        <form>
                            <input style="    padding: 10px 20px;
                                              font-size:24px;
                                              margin: 2px 0;
                                              box-sizing: border-box;"
                                    type="text" placeholder="Search Product" class="search-box">

                            <div class="result modal-dialog modal-sm"
                                 style= "width: 240px;
                                 position:absolute;
                                 left: 20px;top: 30px;
                                         visibility: hidden;
                                         display: none;
                                         background-color: darkslategray;
                                         height: 300px;
                                         overflow-y: scroll;
                                         z-index: 1000;">
                            </div>
                        </form>
                    </div>



                </div>

            </div>

		</div>
	</header>