class MessagesController < ApplicationController
  before_action :message_params, only: [:edit ,:update, :create, :show]

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
      flash[:notice] = "コメントを作成出来ました。"
    else
      flash[:notice] = "コメントを作成出来ませんでした。"
    end
  end

  def update
  end

  private

  def message_params
    params.require(:message).permit(:content, :img).merge(user_id: current_user.id,
      group_id: params[:group_id])
  end

end
