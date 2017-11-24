require 'rails_helper'
describe Message do
  describe '#create' do

    context 'メッセージを保存できる場合' do

      it "メッセージがあれば保存できる" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          content:"test",
          user_id:user.id,
          group_id:group.id
          )
          expect(message.valid?).to be_truthy
      end

      it "画像があれば保存できる" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          img:"test.jpg",
          user_id:user.id,
          group_id:group.id
          )
          expect(message.valid?).to be_truthy
      end

      it "メッセージと画像があれば保存できる" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          content:"test",
          img:"test.jpg",
          user_id:user.id,
          group_id:group.id
          )
          expect(message.valid?).to be_truthy
      end
    end

    context 'メッセージを保存できない場合' do

      it "メッセージも画像も無いと保存できない" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          content:"",
          img:"",
          user_id:user.id,
          group_id:group.id
          )
          expect(message.valid?).to be_falsey
      end

      it "group_idが無いと保存できない" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          content:"test",
          img:"test.jpg",
          user_id:user.id,
          group_id:""
          )
          expect(message.valid?).to be_falsey
      end

      it "user_idが無いと保存できない" do
        user = User.create(
          name:"test",
          email:"test@gmail.com",
          password: "00000000",
          password_confirmation: "00000000"
          )
        group = Group.create(
          name:"test"
          )
        message = Message.new(
          content:"test",
          img:"test.jpg",
          user_id:"",
          group_id:group.id
          )
          expect(message.valid?).to be_falsey
      end
    end

  end
end
