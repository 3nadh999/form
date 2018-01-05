class TestController < ApplicationController
  
  before_action :bfa , only:[:show , :edit , :update , :destroy]
  def bfa
    @t = Test.find params[:id]
  end
 
  def login
  end

  def signup
    @t = Test.new
  end

  def register
    @t = Test.new(  sp )
    if @t.save
      redirect_to list_test_index_path
    else
        render 'signup'
    end
  end

  def list
    
    @t = Test.all
   
  end



  def show
  end

  def edit
  end


  def update
    if @t.update_attributes(sp)
       redirect_to list_test_index_path
    end
  end

  
  def destroy
    if @t.delete
      redirect_to list_test_index_path
    end                  
  end


  
  def sp
    params.require(:test).permit!
  end

end
