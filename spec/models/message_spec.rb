require 'rails_helper'
describe Message do
  describe '#create' do
    let(:message) { build(:message) }

    context 'メッセージを保存できる場合' do

      it "メッセージがあれば保存できる" do
        message.img = nil
        expect(message.valid?).to be_truthy
      end

      it "画像があれば保存できる" do
        message.content = nil
        expect(message.valid?).to be_truthy
      end

      it "メッセージと画像があれば保存できる" do
        expect(message.valid?).to be_truthy
      end
    end

    context 'メッセージを保存できない場合' do

      it "メッセージも画像も無いと保存できない" do
        message.content = nil
        message.img = nil
        expect(message.valid?).to be_falsey
      end

      it "group_idが無いと保存できない" do
        message.group_id = nil
        expect(message.valid?).to be_falsey
      end

      it "user_idが無いと保存できない" do
        message.user_id = nil
        expect(message.valid?).to be_falsey
      end
    end

  end
end
