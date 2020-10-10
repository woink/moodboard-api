class BoardsController < ApplicationController
  # before_action :get_user, except: [:create]

  def index
    boards = Board.all
    render json: boards
  end

  def create
    board = Board.create(params[:id])
    render json: board
  end

  def show
    board = Board.find(params[:id])
    render json: board
  end
  
  private

  def board_params
    params.require(:board).permit(:title)
  end
end
