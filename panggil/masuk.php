<div class="container">
	<div class="masuk" style="margin-bottom:28%">
		<center>
			<img src="./tampilan/ikon/SMA.png">
			<h2>Masuk</h2>
			Sistem Informasi Perpustakaan SMKN 3 MATARAM
			<?php
			if (isset($_POST['masuk'])) {
				$pass = md5($_POST['pass']);
				$querymsk = mysqli_query($db, "SELECT*FROM tgr_admin WHERE nama = '$_POST[nama]' AND password = '$pass'");
				$cek = mysqli_num_rows($querymsk);
				if (empty($cek)) {
					echo "<div class='alert alert-warning'>Nama Atau Password Yang Dimasukan Salah!</div>";
				}
				else{
					header("location:./");
					$_SESSION['masuk'] = $_POST['nama'];
				}
			}
			?>
			<form action="" method="post">
				<input type="text" required="" name="nama" placeholder="Nama"><br>
				<input type="password" name="pass" required="" placeholder="Password"><br>
				<button type="submit" name="masuk" class="btn btn-primary">Masuk</button>
				<button type="reset" class="btn btn-warning">Reset</button>
			</form>
		</center>
	</div>
</div>