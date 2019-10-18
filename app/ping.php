<?php
$link = mysqli_connect("mysqld", "dev", "dev", "abc");
echo "Host information: " . mysqli_get_host_info($link);
mysqli_close($link);