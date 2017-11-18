class MessagesController < ApplicationController

  def index
    @group = Group.find(params[:group_id])
    @message = Message.new
    @messages = @group.messages
  end

  def show
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to group_messages_path, notice: "コメントを作成出来ました。"
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
