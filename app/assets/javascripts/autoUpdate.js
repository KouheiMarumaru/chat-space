  function buildHTML(message) {

    var html = `
      <div class="main__post" data-id="${message.id}">
        <div class="main__post__name">
          ${message.name}
        </div>
        <div class="main__post__time">
          ${message.date}
        </div>
        <div class="main__post__text">
          ${message.content}
        </div>
      </div>`;

    return html
  }

var interval = setInterval(function() {
  if (window.location.href.match(/\/groups\/\d+\/messages/)) {
    var id = $('.main__post').last().data('id');
    $.ajax({
      type: 'GET',
      url: location.href,
      dataType: 'json',
      data: id,
    })
    .done(function(json) {
      var insertHTML = '';
      json.messages.forEach(function(message) {
        if (message.id > id ) {
          insertHTML += buildHTML(message);
        }
      });
      $('.main').append(insertHTML);
    })
    .fail(function(json) {
      alert('自動更新に失敗しました');
    });
    } else {
      clearInterval(interval);
    }} , 10 * 1000 );
