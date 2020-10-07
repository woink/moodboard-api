class BoardsController < ApplicationController
  def index
    boards = Board.all
    render json: boards
  end

  def create
    board = Board.create(board_params)
    render json: board
  end

  def destroy
  end

  def update
  end

  private

  def board_params
    params.require(:board).premit(:title)
  end
end
