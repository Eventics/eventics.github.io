<?php 
	
	include 'db.php';

	if(isset($_GET['idk'])){
		$delete = mysqli_query($conn, "DELETE FROM tb_kategory WHERE id_category = '".$_GET['idk']."' ");
		echo '<script>window.location="data-kategori.php"</script>';
	}

	if(isset($_GET['idp'])){
		$produk = mysqli_query($conn, "SELECT image_product FROM tb_product WHERE id_product = '".$_GET['idp']."' ");
		$p = mysqli_fetch_object($produk);

		unlink('./produk/'.$p->product_image);

		$delete = mysqli_query($conn, "DELETE FROM tb_product WHERE id_product = '".$_GET['idp']."' ");
		echo '<script>window.location="data-produk.php"</script>';
	}

?>