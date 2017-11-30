 class EmailsController < ApplicationController
    
    
    def index
        @emails = Email.all
        @emails =  @emails.order(created_at: :desc)
    end
    
    def show
         @email = Email.find(params[:id])
         respond_to do |format|
            format.html 
            format.js
         end     
    end
    
    def new
    @email = Email.new
    end  
    

    
    def create
    @email = Email.new(email_params)
    if @email.save
      redirect_to emails_path
    else
      render :new
    end
    end

    
    
    def edit             #Ne pas oublier la view edit
     @email = Email.find(params[:id])
    end
    
    def update
        @email = Email.find(params[:id])
        @email.update(email_params)
        redirect_to emails_path
    end

    def destroy
        @email = Email.find(params[:id])    
      @product.destroy                      # on le supprime
      redirect_to products_path             # on redirige vers index
    end
   
    private
    
    def find_email
        @email = Email.find(params[:id])
    end
    
    def email_params 
      params.require(:email).permit( :object, :body)
    end

end
