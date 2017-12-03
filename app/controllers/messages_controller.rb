class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @message = Message.new
    @messages = @group.messages
    respond_to do |format|
      format.html
      format.json {render json: {messages: @messages}}
    end
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to group_messages_path }
        format.json
      end
    else
      redirect_to group_messages_path, alert: "コメントを作成出来ません"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :img).merge(user_id: current_user.id,
      group_id: params[:group_id])
  end

end
