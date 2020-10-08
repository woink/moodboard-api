class Api::V1::BoardsController < ApplicationController

  def index
    boards = Board.all
    render json: boards
  end

  def create
    board = Board.create(board_params)
    render json: board
  end
  
  private

  def board_params
    params.require(:board).permit(:title)
  end
end
