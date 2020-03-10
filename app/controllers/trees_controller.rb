class TreesController < ApplicationController
  def create
    @user = current_user
    @tree = @user.trees.create(tree_params)
    redirect_to '/welcome'
  end

  def show
    @tree = Tree.find(params[:id])
  end

  private
    def tree_params
      params.require(:tree).permit(:nickname, :species, :date)
    end
end
