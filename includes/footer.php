
    <!-- Optional JavaScript -->
		<script src = "assets/js/jquery-3.7.1.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src = "assets/js/bootstrap.min.js"></script>
  <script src = "assets/js/custom.js"></script>
  <script src = "assets/js/owl.carousel.min.js"></script>


  <script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>

  <script>

   alertify.set('notifier','position', 'top-center');

    <?php 
    if(isset($_SESSION['message'])) { 
      ?>
    
  alertify.success('<?= $_SESSION['message']; ?>');
  <?php 
     unset($_SESSION['message']);
    }
  ?>
      </script>
  </body>
</html>