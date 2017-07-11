$(document).ready(function() {
  $('#tabeldata').DataTable();

  $('#nav').affix({
    offset: { top: 50 }
  });

  $('#sidebar').affix({
    offset: { top: 17 }
  });

  $(".datepicker").datepicker({ format: "yyyy-mm-dd" });

  $("#calon_anggota")
    .removeClass( 'display' );

  $('#form').parsley().on('field:validated', function() {
    var ok = $('.parsley-error').length === 0;
    $('.bs-callout-info').toggleClass('hidden', !ok);
    $('.bs-callout-warning').toggleClass('hidden', ok);
  });
});

function showSuccessToast() {
  $().toastmessage('showSuccessToast', "Data telah dihapus");
}

function showStickySuccessToast() {
  $().toastmessage('showToast', {
    text: 'Sukses, Tambah lagi',
    sticky: true,
    position: 'top-right',
    type: 'success',
    closeText: '',
    close: function() {
      console.log("toast is closed ...");
    }
  });
}

function showNoticeToast() {
  $().toastmessage('showNoticeToast', "Kami telah menentukan nilai yang boleh diinput");
}

function showStickyNoticeToast() {
  $().toastmessage('showToast', {
    text: 'Kami telah menentukan nilai yang boleh diinput',
    sticky: true,
    position: 'top-right',
    type: 'notice',
    closeText: '',
    close: function() {
      console.log("toast is closed ...");
    }
  });
}

function showWarningToast() {
  $().toastmessage('showWarningToast', "Peringatan, password anda masukkan salah");
}

function showStickyWarningToast() {
  $().toastmessage('showToast', {
    text: 'Peringatan, password anda masukkan salah',
    sticky: true,
    position: 'top-right',
    type: 'warning',
    closeText: '',
    close: function() {
      console.log("toast is closed ...");
    }
  });
}

function showErrorToast() {
  $().toastmessage('showErrorToast', "Data gagal dihapus, (hapus dulu data yang terkait pada menu lainnya)");
}

function showStickyErrorToast() {
  $().toastmessage('showToast', {
    text: 'Gagal total! Coba lagi',
    sticky: true,
    position: 'top-right',
    type: 'error',
    closeText: '',
    close: function() {
      console.log("toast is closed ...");
    }
  });
}

$('#select-all').click(function(event) {
  if (this.checked) {
    // Iterate each checkbox
    $(':checkbox').each(function() {
      this.checked = true;
    });
  } else {
    $(':checkbox').each(function() {
      this.checked = false;
    });
  }
});

$('#select-all2').click(function(event) {
  if (this.checked) {
    // Iterate each checkbox
    $(':checkbox').each(function() {
      this.checked = true;
    });
  } else {
    $(':checkbox').each(function() {
      this.checked = false;
    });
  }
});

function deleteRecord(table, field, id, reload = false) {
  swal({
    title: "Apakah anda yakin?",
    text: "Data yang dihapus tidak dapat dikembalikan!",
    type: "warning",
    showCancelButton: true,
    confirmButtonColor: "#DD6B55",
    confirmButtonText: "Ya!",
    closeOnConfirm: false
  }, function() {
    $.ajax({
      type: "GET",
      url: "ajax.php",
      data: {
        "table": table,
        "field": field,
        "id": id
      },
      success: function(data) {}
    }).done(function(data) {
      swal("Deleted!", "Data berhasil dihapus!", "success");
      if (reload) {
        location.reload();
      } else {
        $("table#" + table + " tr#" + id).remove();
      }
    }).error(function(data) {
      swal("Oops!", "Maaf koneksi terputus!", "error");
    });
  });
}
