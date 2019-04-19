class PodcastsController < ApplicationController
  def index
    @podcast = Podcast.all
  end

  def create
    @podcast = Podcast.new(podcast_params)

      if @podcast.save
        redirect_to @podcast
      else
        render 'new'
      end
  
  end

  def edit
    @podcast = Podcast.find(params[:id])
end

def update
  @podcast = Podcast.find(params[:id])

  if @podcast.update(podcast_params)
    redirect_to @podcast
  else
    render 'edit'
  end
end


  def new
    @podcast = Podcast.new
    
    if @podcast.save
      redirect_to @podcast
    else
      render 'new'
    end
  end

  def show
    @podcast = Podcast.find(params[:id])

    @image = Faker::Avatar.image
    @image1 = Faker::Avatar.image

  end


  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy
 
    redirect_to podcasts_path
  end


private 
def podcast_params
params.permit(:name, :genre, :explicit_content)

end

end
