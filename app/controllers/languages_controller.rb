class LanguagesController < ApplicationController
  #
  before_action :authorized?
  
  def index
    @languages = Language.all
    # @languages = Language.search(params[:search])
    @user = current_user
  end
  
  def user_index
    @languages = current_user.languages
  end
  
  def show
    @language = Language.find(params[:id])
    @user = current_user
  end

  def favorite
    # byebug
    @language = Language.find(params[:id])
    type = params[:type]
    if type == "favorite"
      current_user.favorite_languages << @language
      redirect_to user_path(current_user), notice: "Favorited #{@language.name}"
    elsif type == "unfavorite"
      current_user.favorite_languages.delete(@language)
      redirect_to user_path(current_user), notice: "Unfavorited #{@language.name}"
    end
  end

  # private
  # def language_params
  #   params.require(:language).permit(:name, :search)
  # end

end
