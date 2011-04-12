class RatingsController < ApplicationController
  
  def create
    begin
      if (!params[:mp3_id])
        raise "Can't rate a song if I don't have its id."
      end
  
      if (!params[:score])
        raise "Need a score"
      end
      
      mp3 = Mp3.where(:id => params[:mp3_id]).first
      
      if (mp3 == nil)
        raise "This is not a real track!"
      end
    
      r = Rating.create!({
        :mp3 => mp3,
        :score => params[:score]
      })
      
      redirect_to(params[:return_to] || 'mp3s#index', :notice => "Track ##{mp3.id} was rated #{r.score}" )
      
    rescue Exception => e
      flash[:notice] = e.message
      redirect_to(params[:return_to] || 'mp3s#index')
    end
  end
  
end
