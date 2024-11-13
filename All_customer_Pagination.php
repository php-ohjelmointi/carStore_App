<!DOCTYPE html> 
<html> 
  <head> 
    <title>ProGeeks Cup 2.0</title> 
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <link rel="stylesheet" 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
    <style> 
     .inline{ 
         display: inline-block; 
       } 
     input, button{ 
         height: 34px; 
     } 
     
    </style> 
  </head> 
  <body> 
  <?php 
    require_once "db.php"; 
  
    $limit = 50;   
    if (isset($_GET["page"])) {  
      $pn  = $_GET["page"];  
    }  
    else {  
      $pn=1;  
    };   
  
    $start_from = ($pn-1) * $limit;   
  
    $sql = "SELECT * FROM customers LIMIT $start_from, $limit";   
    $rs_result = mysqli_query ($conn,$sql);  
  
  ?> 
  <div class="container"> 
    <br> 
    <div> 
      <table class="table table-striped table-condensed table-bordered"> 
        <thead> 
        <tr> 
          <th width="10%">Customer_ID</th> 
          <th>SSN</th> 
          <th>Name</th> 

        </tr> 
        </thead> 
        <tbody> 
        <?php   
           while($row = mysqli_fetch_assoc($rs_result)) {   
        ?>   
        <tr>   
          <td><?php echo $row["Customer_ID"]; ?></td>   
          <td><?php echo $row["SSN"]; ?></td> 
          <td><?php echo $row["F_Name"]." ".$row["L_Name"]; ?></td>                                         
        </tr>   
        <?php   
        };   
        ?>   
        </tbody> 
      </table> 
      <div> 
      <ul class="pagination"> 
      <?php   
        $sql = "SELECT COUNT(*) FROM customers";   
        $rs_result_2 = mysqli_query($conn,$sql);   
        $row = mysqli_fetch_row($rs_result_2);   
        $total_records = $row[0];   
        $total_pages = ceil($total_records / $limit); 
        $k = (($pn+4>$total_pages)?$total_pages-4:(($pn-4<1)?5:$pn));         
        $pagLink = ""; 
        if($pn>=2){ 
            echo "<li><a href='All_customer_Pagination.php?page=1'> First Page </a></li>"; 
            echo "<li><a href='All_customer_Pagination.php?page=".($pn-1)."'> Previous Page </a></li>"; 
        } 
        for ($i=-4; $i<=10; $i++) { 
          if($k+$i==$pn) 
            $pagLink .= "<li class='active'><a href='All_customer_Pagination.php?page=".($k+$i)."'>".($k+$i)."</a></li>"; 
          else
            $pagLink .= "<li><a href='All_customer_Pagination.php?page=".($k+$i)."'>".($k+$i)."</a></li>";   
        };   
        echo $pagLink; 
        if($pn<$total_pages){ 
            echo "<li><a href='All_customer_Pagination.php?page=".($pn+1)."'> Next Page </a></li>"; 
            echo "<li><a href='All_customer_Pagination.php?page=".$total_pages."'> Last page </a></li>"; 
        }     
      ?> 
      </ul> 
     <!--  <div class="inline"> 
      <input id="pn" type="number" min="1" max="<?php echo $total_pages?>" 
      placeholder="<?php echo $pn."/".$total_pages; ?>" required> 
      <button onclick="go2Page();">Go</button> 
      </div>  -->
     </div>  
    </div> 
  </div> 
  <!-- <script> 
    function go2Page() 
    { 
        var pn = document.getElementById("pn").value; 
        pn = ((pn><?php echo $total_pages; ?>)?<?php echo $total_pages; ?>:((pn<1)?1:pn)); 
        window.location.href = 'All_customer_Pagination.php?page='+pn; 
    } 
  </script>  -->
  </body> 
</html> 