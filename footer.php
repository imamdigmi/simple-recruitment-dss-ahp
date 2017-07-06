<footer class="text-center">&copy; 2015</footer>
	</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.toastmessage.js"></script>
    <script>
    $(document).ready(function() {

    	$('#tabeldata').DataTable();

	});
    function showSuccessToast() {
        $().toastmessage('showSuccessToast', "Data telah dihapus");
    }
    function showStickySuccessToast() {
        $().toastmessage('showToast', {
            text     : 'Sukses, Tambah lagi',
            sticky   : true,
            position : 'top-right',
            type     : 'success',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });

    }
    function showNoticeToast() {
        $().toastmessage('showNoticeToast', "Kami telah menentukan nilai yang boleh diinput");
    }
    function showStickyNoticeToast() {
        $().toastmessage('showToast', {
             text     : 'Kami telah menentukan nilai yang boleh diinput',
             sticky   : true,
             position : 'top-right',
             type     : 'notice',
             closeText: '',
             close    : function () {console.log("toast is closed ...");}
        });
    }
    function showWarningToast() {
        $().toastmessage('showWarningToast', "Peringatan, password anda masukkan salah");
    }
    function showStickyWarningToast() {
        $().toastmessage('showToast', {
            text     : 'Peringatan, password anda masukkan salah',
            sticky   : true,
            position : 'top-right',
            type     : 'warning',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });
    }
    function showErrorToast() {
        $().toastmessage('showErrorToast', "Data gagal dihapus, (hapus dulu data yang terkait pada menu lainnya)");
    }
    function showStickyErrorToast() {
        $().toastmessage('showToast', {
            text     : 'Gagal total! Coba lagi',
            sticky   : true,
            position : 'top-right',
            type     : 'error',
            closeText: '',
            close    : function () {
                console.log("toast is closed ...");
            }
        });
    }
    $('#select-all').click(function(event) {   
        if(this.checked) {
            // Iterate each checkbox
            $(':checkbox').each(function() {
                this.checked = true;                        
            });
        } else{
            $(':checkbox').each(function() {
                this.checked = false;                        
            });
        }
    });
    $('#select-all2').click(function(event) {   
        if(this.checked) {
            // Iterate each checkbox
            $(':checkbox').each(function() {
                this.checked = true;                        
            });
        } else{
            $(':checkbox').each(function() {
                this.checked = false;                        
            });
        }
    });
    </script>
  </body>
</html>