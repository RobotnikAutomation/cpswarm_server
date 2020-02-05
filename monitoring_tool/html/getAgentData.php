<?php
	#echo "REQ:".file_get_contents('php://input')."\n";
	echo getAgentData(file_get_contents('php://input'));
	#echo getAgentData($_POST);
?>
