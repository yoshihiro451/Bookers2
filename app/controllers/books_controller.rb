class BooksController < ApplicationController
	before_action :authenticate_user!
	def new
		@book = Book.new
    end
    def create
    	@book = Book.new(book_params)
    	@book.user_id = current_user.id
    	if @book.save
    	flash[:notice] = "successfully"
    	redirect_to book_path(@book.id)
    	else
    		@books = Book.all
    		render :index
        end
    end
    def index
    	@books = Book.all
    	@book = Book.new

    end
    def show
    	@book = Book.find(params[:id])
    	@bookn = Book.new
    	@books = Book.all
    end
    def destroy
    	@book = Book.find(params[:id])
    	@book.destroy
    	redirect_to books_path
    end
    def update

    end
    def edit
        @book = Book.find(params[:id])
    end


private
    def book_params
        params.require(:book).permit(:title, :opinion,)
    end
end
