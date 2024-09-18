<?php require 'conn.php'?>
<?php require 'menu.php' ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <link rel="shortcut icon" type="x-icon" href="images/report.jpg">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>รายงานปัญหา</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script>src="bootstrap/js/bootstrap.bundle.min.js"</script>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div class="alert alert-info h4 text-center mb-4 mt-4" role="alert">
                    รายงานปัญหาที่พบ
                </div>

                <form method="POST" action="reportsave.php" enctype="multipart/form-data">
                    <label>ชื่อรุ่น:</label>
                    <input type="text" name="re_name" class="form-control" placeholder="กรอกชื่อรุ่น" required><br>
                    <label>รายละเอียดปัญหา:</label>
                    <input type="text" name="re_topic" class="form-control" placeholder="กรอกรายละเอียดปัญหาของสินค้า" required><br>
                    </select>
                    <br>
                    <input type="submit" value="บันทึก" class="btn btn-primary">
                    <button type="reset" class="btn btn-warning" >ยกเลิก</button>
                </form>
            </div>
        </div>
    </div>
     <!-- Option 1: Bootstrap Bundle with Popper -->
     <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>

