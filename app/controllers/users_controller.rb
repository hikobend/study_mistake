class UsersController < ApplicationController
  # ユーザーの一覧を表示する
  def index
    # userモデルから全てのデータをとってくる
    # @usersの中に入れる 
    # 複数のデータを格納するときは、@を複数形にする
    @users = User.all 
  end

  # 詳細画面を作成
  def show
    # １人の情報だけをparams[:id]から持ってくる
    @user = User.find(params[:id])
  end

  # 編集画面を作成
  def edit
    @user = User.find(params[:id])
  end
end
