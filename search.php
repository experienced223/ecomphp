<?php

session_start();
require_once 'config/connect.php';




if(isset($_REQUEST["term"])){

    //echo date("F d, Y h:i:s A");
    //echo "<br>". $_REQUEST["term"];

    $sql = "SELECT * FROM `products` WHERE `name` LIKE '%".$_REQUEST["term"]."%'" ;

    $res = mysqli_query($connection, $sql);

    if(mysqli_num_rows($res) > 0){
        $rs = mysqli_fetch_assoc($res);
        while($row = $res->fetch_object()){
        ?>
        <div style="width: 100%; display: block;">
            <div style="
            text-align: center;
            display: inline-block; width: 48%; overflow: hidden; margin-left:2px;">
                <?php
                    echo "<a style='color:white;' 
                    target='_blank' href='single.php?id=".$row->id."'>".$row->name."</a>";
                    //$r['name']
                ?>
            </div>
            <div style="
            text-align: center;
            display: inline-block; width: 48%">
                <a target='_blank' href='single.php?id=".<?php $row->id ?>."'>
                    <!--<img src="admin/<?php //echo $r['thumb']; ?>"-->
                    <img src="admin/<?php echo $row->thumb; ?>"
                         alt="Product Image" height="90" width="90">
                </a>
            </div>
        </div>
        <?php
        }
    }
    else{
        echo "no data found";
    }
}
