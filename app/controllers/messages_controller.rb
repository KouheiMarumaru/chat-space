class MessagesController < ApplicationController

  def index
    @groups = Group.all
    @username = current_user.name
  end

end
