class BooksController < ApplicationController 
 
    def index 
        @books = Book.all 
    end 

    def show

      @book = Book.find(params[:id])        
    end

    def destroy
        @book = Book.find(params[:id])  
        @book.destroy
        
        redirect_to books_path
      end

      def new 
          @book = Book.new
      end 

      def create 
       @book = Book.create(books_params)
       redirect_to books_path(@book) 
      end

      def edit
        @book = Book.find(params[:id]) 
      end

      def update
        @book = Book.find(params[:id]) 
        @book.update(books_params)
        redirect_to books_path(@book)
      end

      def books_params   #for securty issuse 
          params.require(:book).permit(:title)
      end
end 