class HomeController < ApplicationController
  

  def index_2
  end
  
  def search
  
    redirect_to "/"
    
  end
  
  def index_1
    
  end

  def feeling_lucky
  end

  def result
    #@univ_name = Project.where("univ LIKE '%#{params[:to_find]}%'").group(:univ)
    @univ = Project.where("univ LIKE '%#{params[:to_find]}%'")
    @lineup = Project.where("lineup LIKE '%#{params[:to_find]}%'")
    @counts = 1
    @shim = ','
    @auto = Project.group(:univ)
    
  end
  
  def contact
  end
  
  def west
  end
  
  def north
  end
  
  def gyunggi
  end

end
