class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create #3=>with valid author params. 
    author = Author.create(author_params) #3=>creates a new author
    if author.valid?

    render json: author, status: :created #3=>returns the author data
    else
      render json: { errors: author.errors}, status: :unprocessable_entity #3=>returns a status code of 201
    end
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end
