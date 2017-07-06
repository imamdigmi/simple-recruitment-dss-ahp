$(document).ready(function() {
  $(".datepicker").datepicker({ format: "yyyy-mm-dd" });

  var totalsPerbandingan=[0,0,0,0,0];
  var $dataRowsPerbandingan=$("#tPerbandingan tr:not('.totalColumn, .titlerow')");

  $dataRowsPerbandingan.each(function() {
    $(this).find('.rowData').each(function(i){
      totalsPerbandingan[i]+=parseFloat($(this).html());
    });
  });

  $("#tPerbandingan td.totalColPerbandingan").each(function(i){
    $(this).html(totalsPerbandingan[i]);
  });

  // Prioritas
  var totalsPrioritas=[0,0,0,0,0];
  var $dataRowsPerbandingan=$("#tPerbandingan tr:not('.totalColumn, .titlerow')");

  $dataRowsPerbandingan.each(function() {
    $(this).find('.rowData').each(function(i) {
      totalsPrioritas[i]+=parseFloat($(this).html());
    });
  });

  $("#tPerbandingan td.totalColPerbandingan").each(function(i){
    $(this).html(totalsPerbandingan[i]);
  });

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
    },
        function () {
            $.ajax({
                type: "GET",
                url: "ajax.php",
                data: { "table": table, "field": field, "id": id },
                success: function (data) {
                }
            })
                .done(function (data) {
                    swal("Deleted!", "Data berhasil dihapus!", "success");
                    if (reload) {
                        location.reload();
                    } else {
                        $("table#" + table + " tr#" + id).remove();
                    }
                })
                .error(function (data) {
                    swal("Oops!", "Maaf koneksi terputus!", "error");
                });
        });
}
