class TermsController < ApplicationController
  #
  before_action :authorized?

  def index
    @terms = Term.all
    # @terms = Term.search(params[:search])
    @user = current_user
  end

  def create
  end

  def user_index
    @terms = current_users.terms
  end

  def show
    @term = Term.find(params[:id])
    @user = current_user
  end

  def bookmark
    # byebug
    @term = Term.find(params[:id])
    type = params[:type]
    if type == "add"
      current_user.terms << @term
      redirect_to user_path(current_user), notice: "Added #{@term.name}"
    elsif type == "remove"
      current_user.terms.delete(@term)
      redirect_to user_path(current_user), notice: "Remove #{@term.name}"
    end
  end

  private

  def term_params
    params.require(:term).permit(:name, :content)
  end


end
