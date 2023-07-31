<html>
  <head>
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
  </head>
  <body>
    <a href="data.php">Data</a>
    <script type="text/javascript">
      $.ajax({
        url: 'https://api.ipdetective.io/ip?info=true',
        headers: {
          'x-api-key': '63b1b184-f940-4219-99fd-fd4dc7690194' // Your IPDetective API key
        },
        type: 'GET',
        dataType: 'json',
        success: function(ip) {
          var data = {
            ip: ip.ip,
            bot: ip.bot,
            country: ip.country_name,
            asn: ip.asn,
            asndescription: ip.asn_description
          };
          $.ajax({
            url: 'index.php',
            type: 'POST',
            data: data,
            success: function(response) {
              alert("Your IP Address Information has been stored");
            }
          });
        }
      });
    </script>
  </body>
</html>
<?php
require 'config.php';
if(isset($_POST["ip"])){
  $ip = $_POST["ip"];
  $bot = $_POST["bot"];
  $country = $_POST["country"];
  $asn = $_POST["asn"];
  $asndescription = $_POST["asndescription"];

  $query = "INSERT INTO tb_data VALUES('', '$ip', '$bot', '$country', '$asn', '$asndescription')";
  mysqli_query($conn, $query);
}
?>
