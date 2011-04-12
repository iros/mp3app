class SearchController < ApplicationController
  include Mp3sHelper
  
  def index
    @mp3s = nil
    @results_for = ""
  end
  
  def result
    @mp3s = nil
    @results_for = ""
    
    # see if an artist filter name was provided.
    if (params[:name] != "" && params[:name] != nil)
      @mp3s =  Mp3.where("artist like ?", "%#{params[:name]}%")
      @results_for = "Artist similar to '#{params[:name]}'"
    end
    
    # See if a min rating filter was provided.
    if (params[:score] != "" && params[:score] != nil && @mp3s != nil)
      @mp3s = @mp3s.where("average_rating > ?", "#{params[:score]}")
      @results_for << (@results_for != "" ? " and " : "") + "minimum average rating of #{params[:score]}"
      
    elsif (@mp3s == nil && params[:score] != "" && params[:score] != nil)
      @mp3s = Mp3.where("average_rating > ?", "#{params[:score]}")
      @results_for = "Minimum average rating of #{params[:score]}" if params[:score] != ""
    end
    
    # If we haven't found any mp3s so far, we'll return an empty array.
    if (@mp3s != nil)
      @mp3s = @mp3s.order('updated_at DESC')
    else
      @mp3s = []
      @results_for = "There are no results for your query. Try again."
    end
    respond_to do |format|
      format.html { render :action => 'index' }
      format.m3u  { send_data render_m3u(@mp3s),  :filename => "playlist.m3u" }
    end 
  end
  

end
