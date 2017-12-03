$(function() {

  var search_list = $("#user-search-result");

  function appendUsers(users) {
    var html = `<div class="chat-group-user clearfix">
                <p class="chat-group-user__name">
                  ${users.name}
                </p>
                <a class="user-search-add chat-group-user__btn chat-group-user__btn--add" data-user-id="${users.id}" data-user-name="${users.name}">追加</a>
              </div>`;
    search_list.append(html);
  }

  var chat_group_field = $("#chat-group-users");

  function addUsers(users) {
    var html = `<div class='chat-group-user clearfix js-chat-member' id='chat-group-user-8'>
                  <input name='group[user_ids][]' type='hidden' value='${users.userId}'>
                  <p class='chat-group-user__name'>${users.userName}</p>
                  <a class='user-search-remove chat-group-user__btn chat-group-user__btn--remove js-remove-btn'>削除</a>
                </div>`;
    chat_group_field.append(html);
    console.log("addUsers");
  }


  //検索時
  $("#user-search-field").on("keyup", function() {
    var input = $("#user-search-field").val();

     $.ajax({
      type: 'GET',
      url: '/users',
      data: { keyword: input },
      dataType: 'json'
    })

   .done(function(users) {
     $(".user-search-result").empty();

     if (users.length !== 0) {
        users.forEach(function(users){
          appendUsers(users);
       });
     }
     else {
       console.log("名前なし");
     }

   }).fail(function(){
     console.log("失敗");
   });


  });

  //追加ボタン押下時
  $(document).on("click", ".user-search-add", function(data) {

    var input = $("#user-search-field").val();

    users = $(this).data();

    $(this).parent().remove();

    addUsers(users);

  });


  //削除ボタン押下時
  $(document).on("click", ".chat-group-user__btn--remove", function(data) {

    users = $(this).data();

    $(this).parent().remove();

  });


});
