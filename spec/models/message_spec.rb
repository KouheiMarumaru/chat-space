require 'rails_helper'
describe Message do
  describe '#create' do

    context 'メッセージを保存できる場合' do

      it "メッセージがあれば保存できる" do
        message = build(:message,img:nil)
        expect(message.valid?).to be_truthy
      end

      it "画像があれば保存できる" do
        message = build(:message,content:nil)
        expect(message.valid?).to be_truthy
      end

      it "メッセージと画像があれば保存できる" do
        message = build(:message)
        expect(message.valid?).to be_truthy
      end
    end

    context 'メッセージを保存できない場合' do

      it "メッセージも画像も無いと保存できない" do
        message = build(:message,img:nil,content:nil)
        expect(message.valid?).to be_falsey
      end

      it "group_idが無いと保存できない" do
        message = build(:message,group_id:nil)
        expect(message.valid?).to be_falsey
      end

      it "user_idが無いと保存できない" do
        message = build(:message,user_id:nil)
        expect(message.valid?).to be_falsey
      end
    end

  end
end
