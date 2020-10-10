class Api::V1::BoardsController < ApplicationController
  before_action :get_user, except: [:create]

  def index
    boards = @user.boards
    render json: boards
  end

  def create
    board = @user.board.build(board_params)
    render json: board
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end
  
  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def board_params
    params.require(:board).permit(:title)
  end
end
