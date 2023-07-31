<html>
  <head>
  </head>
  <body>
    <table border = 1 cellspacing= 0 cellpadding = 5>
      <tr>
        <td>#</td>
        <td>IP</td>
        <td>Bot</td>
        <td>Country</td>
        <td>AS Number</td>
        <td>AS Description</td>
      </tr>
      <?php
      require 'config.php';
      $rows = mysqli_query($conn, "SELECT * FROM tb_data");
      ?>
      <?php foreach($rows as $row) : ?>
      <tr>
        <td>#<?php echo $row["id"]; ?> Visitor</td>
        <td><?php echo $row["ip"]; ?></td>
        <td><?php echo $row["bot"]; ?></td>
        <td><?php echo $row["country"]; ?></td>
        <td><?php echo $row["asn"]; ?></td>
        <td><?php echo $row["asndescription"]; ?></td>
      </tr>
      <?php endforeach; ?>
    </table>
  </body>
</html>
