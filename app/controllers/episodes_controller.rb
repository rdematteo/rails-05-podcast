class EpisodesController < ApplicationController
  def create
    
    @podcast = Podcast.find(params[:podcast_id])
    # Make a new episode with the params passed in (title, s) can use raise - same as pry
    @episode = Episode.create(review_params)
    @podcast.episodes << @episode
    @podcast.save
    redirect_to podcast_path(@podcast.id)
  end
  
  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
 
    redirect_to podcast_path(@episode.podcast_id)
  end



  private
    def review_params
      params.permit(:title, :show_notes, :mp3_file)
    end

end
