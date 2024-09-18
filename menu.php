<nav class="navbar navbar-expand-lg navbar-light bg-light align-content-center">
    <div class="container">
        <a class="navbar-brand" href="index.php"><img src="images/Har.jpg" height="75" width="125"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll"
            aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarScroll">
            <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">หน้าหลัก</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="show_product.php">รายการสินค้า</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        จัดการข้อมูลสินค้า
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                        <li><a class="dropdown-item" href="admin_showproduct.php">แสดงข้อมูลสินค้า</a></li>
                        <li><a class="dropdown-item" href="form_product.php">เพิ่มข้อมูลสินค้า</a></li>

                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href="report.php">รายงานปัญหาของรถ</a></li>
                    </ul>
                </li>
            </ul>
            <form class="d-flex" method="POST" action="admin_showproduct.php">
                <input class="form-control me-2" type="search"  name="keyword" placeholder="ใส่คำค้นหา" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">ค้นหา</button>
            </form>
        </div>
    </div>
</nav>




