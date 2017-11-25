require 'rails_helper'

describe MessagesController do


  describe 'GET #index' do

    context 'ログインしている場合' do

      it "アクション内で定義しているインスタンス変数があるか" do
      end

      it "該当するビューが描画されているか" do
      end

    end

    context 'ログインしていない場合' do

      it "意図したビューにリダイレクトできているか" do
      end

    end

  end


  describe 'GET #create' do

    context 'ログインしているかつ、保存に成功した場合' do

      it "メッセージの保存はできたのか" do
      end
      it "意図した画面に遷移しているか" do
      end

    end

    context 'ログインしているが、保存に失敗した場合' do

      it "メッセージの保存は行われなかったか" do
      end
      it "意図したビューが描画されているか" do
      end

    end

    context 'ログインしていない場合' do
      it "意図した画面にリダイレクトできているか" do
      end
    end

  end

end
