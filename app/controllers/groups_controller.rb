class GroupsController < ApplicationController
  before_action :set_group, only: [:edit]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to root_path, notice: "グループを作成できました。"
    else
      render :new
      #直接viewファイルへ飛ぶ
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end

  def set_group
    @group = Group.find(params[:id])
  end

end
