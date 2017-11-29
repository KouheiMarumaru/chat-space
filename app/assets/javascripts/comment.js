$(function(){

  function buildHTML(message){
    var html = `<div class="main__post">
                  <div class="main__post__name">
                    ${message.name}
                  </div>
                  <div class="main__post__time">
                    ${message.created_at}
                  </div>
                  <div class="main__post__text">
                    ${message.content}
                  </div>
                </div>`
    return html;
  }

  $('#new_comment').on('submit', function(e){

    //デフォルトのブラウザ挙動を抑制
    e.preventDefault();

    //検証
    console.log(this)

    //フォーム情報を取得
    var formData = new FormData(this);

    var url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })

    //jbuilderから送られたデータを受け止める
    .done(function(data){
      console.log(data)
      var html = buildHTML(data);
      $('.main').append(html)
      $('.textbox').val('')
    })

    .fail(function(){
      alert('error');
    })

  })
})
