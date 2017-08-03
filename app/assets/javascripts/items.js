$(document).ready(function() {
  $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
  $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});

  $('body').on('click', '.add_order_item', function(){
    token = $('meta[name=csrf-token]').attr('content');
    $.ajax(
      {
        method: 'POST',
        url: '/order_items',
        headers: {
          'X-CSRF-TOKEN': token
        },
        data: {order_item: {item_id: $(this).data('item-id')}},
        success: function(data, textStatus, jqXHR ){
          alert('Success ')
        },
        error: function(XMLHttpRequest, textStatus, errorThrown){
          if(errorThrown == 'Unauthorized'){
           alert("Error: Login Required");
          }
        }
      }
    )
  })
});
