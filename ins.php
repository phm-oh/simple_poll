<?php
    require('conn.php');
    if($_POST['d']){
        $re=mysqli_query($conn,"SELECT * FROM ques ");
        while($data=(mysqli_fetch_assoc($re))){
            $idq=$data['idq'];
            $score=$_POST['ans'.$data['idq'] ];
            mysqli_query($conn,"INSERT INTO ques_re (idq,score) VALUES ('$idq','$score') " );
            header('location:index.php');
        }
    }
?>