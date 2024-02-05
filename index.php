<?php
    require('conn.php');
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table>
        <?php $re=mysqli_query($conn,"SELECT * FROM ques  "); while($data=(mysqli_fetch_assoc($re))){ ?>
        <tr>
            <td><?php echo $data['nameq'] ?></td>
        </tr>
        <form action="ins.php" method="post">
        <tr>
            <td>
                <input type="radio" name="ans<?php echo $data['idq'] ?>" value="5">มาก
                <input type="radio" name="ans<?php echo $data['idq'] ?>" value="4">
                <input type="radio" name="ans<?php echo $data['idq'] ?>" value="3">มาก
                <input type="radio" name="ans<?php echo $data['idq'] ?>" value="2">มาก
                <input type="radio" name="ans<?php echo $data['idq'] ?>" value="1">มาก
            </td>
        </tr>
        <?php } ?>

        <tr>
            <td><input type="submit" name="d" id=""></td>
        </tr>
    </table>
        </form>
        <?php $re=mysqli_query($conn,"SELECT *, AVG(score) AS ans FROM ques_re INNER JOIN ques ON ques_re.idq=ques.idq GROUP BY ques_re.idq  "); while($data=(mysqli_fetch_assoc($re))){ ?>
    <table>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td><?php echo $data['nameq'] ?></td>
        </tr>
        <tr>
            <td><?php echo $data['ans'] ?></td>
        </tr>
    </table>
    <?php } ?>
</body>
</html>