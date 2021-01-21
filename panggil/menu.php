<div id="navbar" class="navbar navbar-default">
    <div class="navbar-header">
        <a class="navbar-brand" href="./"><b><center>Perpustakaan<br> <font style="font-family: mistral">SMKN 3 MATARAM</font></center></b></a>
    </div>
    <?php
    if (isset($_SESSION['masuk'])) {
        ?>
        <ul class="nav navbar-nav">
            <li <?php if(@$_GET['a'] == 'buku'){ echo "class='active'";}?>><a href="?a=buku">Buku</a></li>
            <li <?php if(@$_GET['a'] == 'peminjaman'){ echo "class='active'";}?>><a href="?a=peminjaman">Peminjaman</a></li>
            <li <?php if(@$_GET['a'] == 'laporan'){ echo "class='active'";}?>><a href="?a=laporan">Laporan</a></li>
        </ul>
        <ul style="float: right;" class="nav navbar-nav">
            <?php
            if (@$_GET['keluar'] == '1') {
                unset($_SESSION['masuk']);
                header("location:./");
            }
            ?>
            <li><a href="?keluar=1">Keluar</a></a></li>
        </ul>
        <?php
    }
    ?>
</div>