class BoardsController < ApplicationController
  # before_action :get_user, except: [:create]
  # skip_before_action :authorized

  def index
    boards = Board.all
    render json: boards
  end

  def create
    board = Board.create(board_params)
    render json: board
  end

  def update
    board = Board.find(params[:id])
    board = Board.update(:board_state)
    render json: board
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end

  def destroy
    board = Board.find(params[:id])
    board.destroy
  end
  
  private

  def board_params
    params.require(:board).permit(:title, :user_id)
  end
end
