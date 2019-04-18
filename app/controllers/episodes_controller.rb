class EpisodesController < ApplicationController
  def create
    @podcast = Podcast.find(params[:podcast_id])
    @episode = @podcast.epiosdes.create(episode_params)
    redirect_to podcast_path(@podcast.id)
  end
 
  private
    def review_params
      params.permit(:title, :show_notes, :mp3_file)
    end

end
