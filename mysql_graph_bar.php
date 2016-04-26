<?php
include("../realproject/bar/phpgraphlib.php");

$graph=new PHPGraphLib(1150,550); 

$link = mysql_connect('localhost', 'root', '')
   or die('Could not connect: ' . mysql_error());
     
mysql_select_db('dbproject_elective') or die('Could not select database');
  
$dataArray=array();
  
//get data from database
$sql="SELECT CATEGORY, COUNT(*) AS 'BARCODE' FROM main_table GROUP BY CATEGORY";
$result = mysql_query($sql) or die('Query failed: ' . mysql_error());
if ($result) {
  while ($row = mysql_fetch_assoc($result)) {
      $salesgroup=$row["CATEGORY"];
      $count=$row["BARCODE"];
      //add to data areray
      $dataArray[$salesgroup]=$count;
  }
}
  
//configure graph
$graph->addData($dataArray);
$graph->setGradient("#64dd17","#76ff03");
$graph->setGridColor("black");
$graph->setBarOutlineColor("black");
$graph->setDataValues(true);
$graph->setTextColor("black");
$graph->setYValues(true);
$graph->setXAxisTextColor("white");
$graph->setYAxisTextColor("black");
$graph->setBarColor("white", "gray", "green");
$graph->setBackgroundColor("black");
$graph->setDataPointSize(20);

$graph->createGraph();
?>